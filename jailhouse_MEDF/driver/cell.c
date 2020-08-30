/*
 * Jailhouse, a Linux-based partitioning hypervisor
 *
 * Copyright (c) Siemens AG, 2013-2016
 *
 * Authors:
 *  Jan Kiszka <jan.kiszka@siemens.com>
 *
 * This work is licensed under the terms of the GNU GPL, version 2.  See
 * the COPYING file in the top-level directory.
 */

#include <linux/cpu.h>
#include <linux/mm.h>
#include <linux/slab.h>
#include <linux/vmalloc.h>
#include <asm/cacheflush.h>

#include "cell.h"
#include "main.h"
#include "pci.h"
#include "sysfs.h"

#include <jailhouse/hypercall.h>
#if defined(CONFIG_ARM) || defined(CONFIG_ARM64)
#include <jailhouse/coloring-common.h>
#endif
struct cell *root_cell;

static LIST_HEAD(cells);
static cpumask_t offlined_cpus;

void jailhouse_cell_kobj_release(struct kobject *kobj)
{
	struct cell *cell = container_of(kobj, struct cell, kobj);

	jailhouse_pci_cell_cleanup(cell);
	vfree(cell->memory_regions);
	kfree(cell);
}

static struct cell *cell_create(const struct jailhouse_cell_desc *cell_desc)
{
	struct cell *cell;
	unsigned int id;
	int err;

	if (cell_desc->num_memory_regions >=
	    ULONG_MAX / sizeof(struct jailhouse_memory))
		return ERR_PTR(-EINVAL);
#if defined(CONFIG_ARM) || defined(CONFIG_ARM64)
	if (cell_desc->num_memory_regions_colored >=
			ULONG_MAX / sizeof(struct jailhouse_memory_colored))
			return ERR_PTR(-EINVAL);
#endif
	/* determine cell id */
	id = 0;
retry:
	list_for_each_entry(cell, &cells, entry)
		if (cell->id == id) {
			id++;
			goto retry;
		}

	cell = kzalloc(sizeof(*cell), GFP_KERNEL);
	if (!cell)
		return ERR_PTR(-ENOMEM);

	INIT_LIST_HEAD(&cell->entry);

	cell->id = id;

	bitmap_copy(cpumask_bits(&cell->cpus_assigned),
		    jailhouse_cell_cpu_set(cell_desc),
		    min((unsigned int)nr_cpumask_bits,
		        cell_desc->cpu_set_size * 8));

	cell->num_memory_regions = cell_desc->num_memory_regions;
	if(cell_desc->num_memory_regions)
		cell->memory_regions = vmalloc(sizeof(struct jailhouse_memory) *
						cell->num_memory_regions);
#if defined(CONFIG_ARM) || defined(CONFIG_ARM64)
	cell->num_memory_regions_colored = cell_desc->num_memory_regions_colored;
	if(cell_desc->num_memory_regions_colored)
		cell->memory_regions_colored = vmalloc(sizeof(struct jailhouse_memory_colored) *
						cell->num_memory_regions_colored);
#endif

	if (!cell->memory_regions) {
#if defined(CONFIG_ARM) || defined(CONFIG_ARM64)
		if(!cell->memory_regions_colored){
			kfree(cell);
			return ERR_PTR(-ENOMEM);
		}
#else
		kfree(cell);
		return ERR_PTR(-ENOMEM);
#endif
	}

	memcpy(cell->name, cell_desc->name, JAILHOUSE_CELL_ID_NAMELEN);
	cell->name[JAILHOUSE_CELL_ID_NAMELEN] = 0;

	memcpy(cell->memory_regions, jailhouse_cell_mem_regions(cell_desc),
	       sizeof(struct jailhouse_memory) * cell->num_memory_regions);
#if defined(CONFIG_ARM) || defined(CONFIG_ARM64)
	if(cell_desc->num_memory_regions_colored)
		memcpy(cell->memory_regions_colored, jailhouse_cell_col_mem_regions(cell_desc),
			sizeof(struct jailhouse_memory_colored) * cell->num_memory_regions_colored);
#endif
	err = jailhouse_pci_cell_setup(cell, cell_desc);
	if (err) {
		vfree(cell->memory_regions);
		kfree(cell);
		return ERR_PTR(err);
	}

	err = jailhouse_sysfs_cell_create(cell);
	if (err)
		/* cleanup done by jailhouse_sysfs_cell_create */
		return ERR_PTR(err);

	return cell;
}

static void cell_register(struct cell *cell)
{
	list_add_tail(&cell->entry, &cells);
	jailhouse_sysfs_cell_register(cell);
}

static struct cell *find_cell(struct jailhouse_cell_id *cell_id)
{
	struct cell *cell;

	list_for_each_entry(cell, &cells, entry)
		if (cell_id->id == cell->id ||
		    (cell_id->id == JAILHOUSE_CELL_ID_UNUSED &&
		     strcmp(cell->name, cell_id->name) == 0))
			return cell;
	return NULL;
}

static void cell_delete(struct cell *cell)
{
	list_del(&cell->entry);
	jailhouse_sysfs_cell_delete(cell);
}

int jailhouse_cell_prepare_root(const struct jailhouse_cell_desc *cell_desc)
{
	root_cell = cell_create(cell_desc);
	if (IS_ERR(root_cell))
		return PTR_ERR(root_cell);

	cpumask_and(&root_cell->cpus_assigned, &root_cell->cpus_assigned,
		    cpu_online_mask);

	return 0;
}

void jailhouse_cell_register_root(void)
{
	root_cell->id = 0;
	cell_register(root_cell);
}

void jailhouse_cell_delete_root(void)
{
	cell_delete(root_cell);
}

int jailhouse_cmd_cell_create(struct jailhouse_cell_create __user *arg)
{
	struct jailhouse_cell_create cell_params;
	struct jailhouse_cell_desc *config;
	struct jailhouse_cell_id cell_id;
	void __user *user_config;
	struct cell *cell;
	unsigned int cpu;
	int err = 0;

	if (copy_from_user(&cell_params, arg, sizeof(cell_params)))
		return -EFAULT;

	config = kmalloc(cell_params.config_size, GFP_USER | __GFP_NOWARN);
	if (!config)
		return -ENOMEM;

	user_config = (void __user *)(unsigned long)cell_params.config_address;
	if (copy_from_user(config, user_config, cell_params.config_size)) {
		err = -EFAULT;
		goto kfree_config_out;
	}

	if (cell_params.config_size < sizeof(*config) ||
	    memcmp(config->signature, JAILHOUSE_CELL_DESC_SIGNATURE,
		   sizeof(config->signature)) != 0) {
		pr_err("jailhouse: Not a cell configuration\n");
		err = -EINVAL;
		goto kfree_config_out;
	}
	if (config->revision != JAILHOUSE_CONFIG_REVISION) {
		pr_err("jailhouse: Configuration revision mismatch\n");
		err = -EINVAL;
		goto kfree_config_out;
	}

	config->name[JAILHOUSE_CELL_NAME_MAXLEN] = 0;

	if (mutex_lock_interruptible(&jailhouse_lock) != 0) {
		err = -EINTR;
		goto kfree_config_out;
	}

	if (!jailhouse_enabled) {
		err = -EINVAL;
		goto unlock_out;
	}

	cell_id.id = JAILHOUSE_CELL_ID_UNUSED;
	memcpy(cell_id.name, config->name, sizeof(cell_id.name));
	if (find_cell(&cell_id) != NULL) {
		err = -EEXIST;
		goto unlock_out;
	}

	cell = cell_create(config);
	if (IS_ERR(cell)) {
		err = PTR_ERR(cell);
		goto unlock_out;
	}

	config->id = cell->id;

	if (!cpumask_subset(&cell->cpus_assigned, &root_cell->cpus_assigned)) {
		err = -EBUSY;
		goto error_cell_delete;
	}

	pr_info("Assigning CPUs for \"%s\"\n", config->name);
	
	/* Off-line each CPU assigned to the new cell and remove it from the
	 * root cell's set. */
	for_each_cpu(cpu, &cell->cpus_assigned) {
		if (cpu_online(cpu)) {
			err = cpu_down(cpu);
			if (err)
				goto error_cpu_online;
			cpumask_set_cpu(cpu, &offlined_cpus);
		}
		cpumask_clear_cpu(cpu, &root_cell->cpus_assigned);
	}

	jailhouse_pci_do_all_devices(cell, JAILHOUSE_PCI_TYPE_DEVICE,
	                             JAILHOUSE_PCI_ACTION_CLAIM);

	err = jailhouse_call_arg1(JAILHOUSE_HC_CELL_CREATE, __pa(config));
	if (err < 0)
		goto error_cpu_online;

	cell_register(cell);

	pr_info("Created Jailhouse cell \"%s\"\n", config->name);

unlock_out:
	mutex_unlock(&jailhouse_lock);

kfree_config_out:
	kfree(config);

	return err;

error_cpu_online:
	for_each_cpu(cpu, &cell->cpus_assigned) {
		if (!cpu_online(cpu) && cpu_up(cpu) == 0)
			cpumask_clear_cpu(cpu, &offlined_cpus);
		cpumask_set_cpu(cpu, &root_cell->cpus_assigned);
	}

error_cell_delete:
	cell_delete(cell);
	goto unlock_out;
}

static int cell_management_prologue(struct jailhouse_cell_id *cell_id,
				    struct cell **cell_ptr)
{
	cell_id->name[JAILHOUSE_CELL_ID_NAMELEN] = 0;

	if (mutex_lock_interruptible(&jailhouse_lock) != 0)
		return -EINTR;

	if (!jailhouse_enabled) {
		mutex_unlock(&jailhouse_lock);
		return -EINVAL;
	}

	*cell_ptr = find_cell(cell_id);
	if (*cell_ptr == NULL) {
		mutex_unlock(&jailhouse_lock);
		return -ENOENT;
	}
	return 0;
}

#define MEM_REQ_FLAGS	(JAILHOUSE_MEM_WRITE | JAILHOUSE_MEM_LOADABLE)

#if defined(CONFIG_ARM) || defined(CONFIG_ARM64)
static int load_image_colored(struct cell *cell,
				struct jailhouse_preload_image __user *uimage)
{
	struct jailhouse_preload_image image;
	struct jailhouse_memory_colored *col_mem;
	unsigned int page_offs;
	u64 image_offset, phys_start_c;
	void *image_mem;
	struct jailhouse_color_desc colors_desc = root_cell->coloring_desc;
	struct jailhouse_memory frag_mem_region;
	__u64 f_size = colors_desc.fragment_unit_size;
	__u64 f_offset = colors_desc.fragment_unit_offset;
	__u64 colors, phys_start, virt_start;
	int MAX_COLORS = f_offset/f_size;
	bool mask[MAX_COLORS];
	int ranges[MAX_COLORS*2];
	int regions_per_offset, offset_regions, memory_total_size, k, c, r, err = 0;
	bool first_mem_found = false , frag_to_load = false;
	u64 map_size = 0, map_offset = 0;
	if (copy_from_user(&image, uimage, sizeof(image)))
		return -EFAULT;
	if (image.size == 0)
	   return 1;
	/* No colored regions */
	if (!cell->num_memory_regions_colored)
		return 1;
	/*
	 *  Check which memory to use based on
	 * 	- total size of memory that should be >= image.size
	 *	- flags
	 */
	col_mem = 0;
	colors = 0;
	phys_start = 0;
	virt_start = 0;
	memory_total_size =0;
	r=0;
	col_mem = cell->memory_regions_colored;
	for (k = cell->num_memory_regions_colored; k > 0; k--, col_mem++){
		frag_mem_region = col_mem->memory;
		colors = col_mem->colors;
		phys_start = col_mem->memory.phys_start;
		virt_start = col_mem->memory.virt_start;
		printk("phys_start: 0x%llx\nvirt_start: 0x%llx\nsize: 0x%llx\ncolors:0x%llx",
				phys_start,virt_start,col_mem->memory.size,colors);
		// Check memory attribute
		if ((col_mem->memory.flags & MEM_REQ_FLAGS) != MEM_REQ_FLAGS){
			printk("Flags not == MEM_REQ_FLAGS -> Checking next memory(if available)\n");
			continue;
		}
		/* Get bin mask from color mask */
		for (c = MAX_COLORS-1; c >= 0; --c, colors >>= 1)
				mask[c] = (colors & 1);
		/* Find all (i,j) s.t i<=j in mask */
		ranges_in_mask(mask,MAX_COLORS,ranges);
		// Check total size
		regions_per_offset=0;
		offset_regions = (int)(col_mem->memory.size/f_offset);
		for (c = 0; c < MAX_COLORS*2; c+=2){
			if(ranges[c] == -1)
				continue;
			regions_per_offset += (ranges[c+1] - ranges[c] +1);
		}
		/* Check if target_address is correct within this memory */
		if (!(image.target_address >= frag_mem_region.virt_start &&
			image.target_address <= (frag_mem_region.virt_start+
									frag_mem_region.size))){
#ifdef COLORING_VERBOSE
			printk("Target address 0x%llx not in 0x%llx - 0x%llx\n",
					image.target_address, frag_mem_region.virt_start,
					(frag_mem_region.virt_start+frag_mem_region.size));
#endif
			continue;
		}
		memory_total_size = (f_size * regions_per_offset) * offset_regions;
		if (image.size > memory_total_size)
			continue;
		r = 1;
		break;
	}
	// If we have no regions availables try with normal mem_regions
	if(!r)
		return 1;
	/* Load the binary file in the found memory region */
	for (r = 0; r < (int)(col_mem->memory.size/f_offset); r++) {
		for (k =0; k < MAX_COLORS*2; k+=2){
			int i,j;
			/* Calculate mem region */
			if(ranges[k] == -1)
				continue;
			i = ranges[k];
			j = ranges[k+1];
			frag_mem_region.size = (j - i + 1) * f_size;
			frag_mem_region.phys_start = phys_start + (i * f_size) + (r * f_offset);
			frag_mem_region.virt_start = virt_start;
			virt_start += frag_mem_region.size;
			/* Check if target_address is correct within this memory */
			if(!frag_to_load){
			if (!(image.target_address >= frag_mem_region.virt_start &&
				image.target_address < (frag_mem_region.virt_start+
										frag_mem_region.size))){
#ifdef COLORING_VERBOSE
				printk("Target address 0x%llx not in 0x%llx - 0x%llx\n",
						image.target_address, frag_mem_region.virt_start,
						(frag_mem_region.virt_start+frag_mem_region.size));
#endif
				continue;
			}else{
#ifdef COLORING_VERBOSE
				printk("FOUND:Target address 0x%llx in 0x%llx - 0x%llx\n",
						image.target_address, frag_mem_region.virt_start,
						(frag_mem_region.virt_start+frag_mem_region.size));
#endif
				frag_to_load = true;
				}
			}
			/* Check if the the image can be loaded into the first memory fragment */
			if(!first_mem_found){
				image_offset = image.target_address - frag_mem_region.virt_start;
				if (image.target_address < frag_mem_region.virt_start &&
						image_offset > frag_mem_region.size)
						return -EINVAL;
				first_mem_found = true;
#ifdef COLORING_VERBOSE
				printk("Image can be loaded from first memory region\n");
#endif
			}else{
				image_offset = 0;
			}
			page_offs = offset_in_page(image_offset);
			phys_start_c = (frag_mem_region.phys_start + image_offset) & PAGE_MASK;
			map_size = min(frag_mem_region.size - image_offset,
								image.size - map_offset);
			image_mem = jailhouse_ioremap(phys_start_c, 0,
							PAGE_ALIGN(map_size + page_offs));
#ifdef COLORING_VERBOSE
			printk("Allocating part of image in memory %d offset %d\n\
			phys_start: 0x%llx, virt_start 0x%llx, size 0x%llx\n\
			Parameters: \n\
			phys_start_c: 0x%llx, map_size %llu, page_offset %u,\n\
			map_offset: %llu, image_mem %p \n",k,
				r,frag_mem_region.phys_start, frag_mem_region.virt_start,
				frag_mem_region.size, phys_start_c,map_size,page_offs,
				map_offset, image_mem);
#endif
			if (!image_mem) {
				pr_err("jailhouse: Unable to map cell RAM at %08llx "
						"for image loading\n",
						(unsigned long long)(frag_mem_region.phys_start +
												image_offset));
				return -EBUSY;
			}
			if (copy_from_user(image_mem + page_offs,
				   (void __user *)(unsigned long)image.source_address +
				   								map_offset,
					   map_size))
				err = -EFAULT;
			/*
			 * ARMv7 and ARMv8 require to clean D-cache and invalidate I-cache for
			 * memory containing new instructions. On x86 this is a NOP.
			 */
			flush_icache_range((unsigned long)(image_mem + page_offs),
							   (unsigned long)(image_mem + page_offs) + map_size);
			#ifdef CONFIG_ARM
			/*
			 * ARMv7 requires to flush the written code and data out of D-cache to
			 * allow the guest starting off with caches disabled.
			 */
			__cpuc_flush_dcache_area(image_mem + page_offs, map_size);
			#endif
			vunmap(image_mem);
			image_offset = 0;
			map_offset  += map_size;
			if (map_offset >= image.size){
				printk("\nImage loaded in colored region\n");
				return err;
				}
			}
		}
	return err;
}
#endif

static int load_image(struct cell *cell,
		      struct jailhouse_preload_image __user *uimage)
{
	struct jailhouse_preload_image image;
	const struct jailhouse_memory *mem;
	unsigned int regions, page_offs;
	u64 image_offset, phys_start;
	void *image_mem;
	int err = 0;

	if (copy_from_user(&image, uimage, sizeof(image)))
		return -EFAULT;

	if (image.size == 0)
		return 0;

	mem = cell->memory_regions;
	for (regions = cell->num_memory_regions; regions > 0; regions--) {
		image_offset = image.target_address - mem->virt_start;
		if (image.target_address >= mem->virt_start &&
		    image_offset < mem->size) {
			if (image.size > mem->size - image_offset ||
			    (mem->flags & MEM_REQ_FLAGS) != MEM_REQ_FLAGS)
				return -EINVAL;
			break;
		}
		mem++;
	}
	if (regions == 0)
		return -EINVAL;

	phys_start = (mem->phys_start + image_offset) & PAGE_MASK;
	page_offs = offset_in_page(image_offset);
	image_mem = jailhouse_ioremap(phys_start, 0,
				      PAGE_ALIGN(image.size + page_offs));
	if (!image_mem) {
		pr_err("jailhouse: Unable to map cell RAM at %08llx "
		       "for image loading\n",
		       (unsigned long long)(mem->phys_start + image_offset));
		return -EBUSY;
	}

	if (copy_from_user(image_mem + page_offs,
			   (void __user *)(unsigned long)image.source_address,
			   image.size))
		err = -EFAULT;
	/*
	 * ARMv7 and ARMv8 require to clean D-cache and invalidate I-cache for
	 * memory containing new instructions. On x86 this is a NOP.
	 */
	flush_icache_range((unsigned long)(image_mem + page_offs),
			   (unsigned long)(image_mem + page_offs) + image.size);
#ifdef CONFIG_ARM
	/*
	 * ARMv7 requires to flush the written code and data out of D-cache to
	 * allow the guest starting off with caches disabled.
	 */
	__cpuc_flush_dcache_area(image_mem + page_offs, image.size);
#endif

	vunmap(image_mem);

	return err;
}

int jailhouse_cmd_cell_load(struct jailhouse_cell_load __user *arg)
{
	struct jailhouse_preload_image __user *image = arg->image;
	struct jailhouse_cell_load cell_load;
	struct cell *cell;
	unsigned int n;
	int err;

	if (copy_from_user(&cell_load, arg, sizeof(cell_load)))
		return -EFAULT;

	err = cell_management_prologue(&cell_load.cell_id, &cell);
	if (err)
		return err;

	err = jailhouse_call_arg1(JAILHOUSE_HC_CELL_SET_LOADABLE, cell->id);
	if (err)
		goto unlock_out;

	for (n = cell_load.num_preload_images; n > 0; n--, image++) {
		printk("LOADING IMAGE\n");
		/* First try to load the image on the memory region
		 * colored if there are any.
		 * If we get any error from this try, load the image
		 * in the standard memory region*/
		err = 1;
#if defined(CONFIG_ARM) || defined(CONFIG_ARM64)
		if (cell->num_memory_regions_colored){
			printk("Try loading from col mem regions\n");
			err = load_image_colored(cell, image);
			printk("ERROR: %d\n",err);
		}
#endif
		if (err){
			printk("Loading from standard memory\n");
			err = load_image(cell, image);
			if (err){
				printk("Failed to load from standard memory: %d\n",err);
				break;
			}
		}
	}

unlock_out:
	mutex_unlock(&jailhouse_lock);

	return err;
}

int jailhouse_cmd_cell_start(const char __user *arg)
{
	struct jailhouse_cell_id cell_id;
	struct cell *cell;
	int err;

	if (copy_from_user(&cell_id, arg, sizeof(cell_id)))
		return -EFAULT;

	err = cell_management_prologue(&cell_id, &cell);
	if (err)
		return err;

	err = jailhouse_call_arg1(JAILHOUSE_HC_CELL_START, cell->id);

	mutex_unlock(&jailhouse_lock);

	return err;
}

static int cell_destroy(struct cell *cell)
{
	unsigned int cpu;
	int err;

	err = jailhouse_call_arg1(JAILHOUSE_HC_CELL_DESTROY, cell->id);
	if (err)
		return err;

	for_each_cpu(cpu, &cell->cpus_assigned) {
		if (cpumask_test_cpu(cpu, &offlined_cpus)) {
			if (cpu_up(cpu) != 0)
				pr_err("Jailhouse: failed to bring CPU %d "
				       "back online\n", cpu);
			cpumask_clear_cpu(cpu, &offlined_cpus);
		}
		cpumask_set_cpu(cpu, &root_cell->cpus_assigned);
	}

	jailhouse_pci_do_all_devices(cell, JAILHOUSE_PCI_TYPE_DEVICE,
	                             JAILHOUSE_PCI_ACTION_RELEASE);

	pr_info("Destroyed Jailhouse cell \"%s\"\n", cell->name);

	cell_delete(cell);

	return 0;
}

static int __memguard_call_one_cpu(void * args)
{
	struct jailhouse_memguard_args * mg_args = (struct jailhouse_memguard_args *)args;
	
	return jailhouse_call_arg3(JAILHOUSE_HC_MEMGUARD,
				  mg_args->budget_time, mg_args->budget_memory,
				  mg_args->flags);
}

static int memguard_call(struct cell * cell, struct jailhouse_memguard_args * mg_args)
{
	unsigned int cpu;
	int err;

	/* NOTE: not sure on which CPU the memguard call will have an effect!! */
	for_each_cpu(cpu, &cell->cpus_assigned) {	
		err = smp_call_on_cpu(cpu, __memguard_call_one_cpu, (void *)mg_args, true);

		err &= 1; //MGRET_ERROR_MASK;
		
		if (err) {
			pr_err("Jailhouse memguard call failed on CPU %d\n", cpu);
			return err;
		}
	}
	
	return 0;
}

int jailhouse_cmd_cell_destroy(const char __user *arg)
{
	struct jailhouse_cell_id cell_id;
	struct cell *cell;
	int err;

	if (copy_from_user(&cell_id, arg, sizeof(cell_id)))
		return -EFAULT;

	err = cell_management_prologue(&cell_id, &cell);
	if (err)
		return err;

	err = cell_destroy(cell);

	mutex_unlock(&jailhouse_lock);

	return err;
}

int jailhouse_cmd_cell_destroy_non_root(void)
{
	struct cell *cell, *tmp;
	int err;

	list_for_each_entry_safe(cell, tmp, &cells, entry) {
		if (cell == root_cell)
			continue;
		err = cell_destroy(cell);
		if (err) {
			pr_err("Jailhouse: failed to destroy cell \"%s\"\n", cell->name);
			return err;
		}
	}

	return 0;
}

int jailhouse_cmd_cell_memguard(struct jailhouse_memguard_args __user *arg)
{
	struct jailhouse_memguard_args mg_args;
	struct cell *cell;
	int err;

	if (copy_from_user(&mg_args, arg, sizeof(struct jailhouse_memguard_args)))
		return -EFAULT;
	
	err = cell_management_prologue(&mg_args.cell_id, &cell);
	if (err)
		return err;

	err = memguard_call(cell, &mg_args);

	if (err) {
		pr_err("Jailhouse: unable to set memguard parameters for cell \"%s\"\n",
		       cell->name);
		return err;
	}
	
	mutex_unlock(&jailhouse_lock);

	return err;
	
}
