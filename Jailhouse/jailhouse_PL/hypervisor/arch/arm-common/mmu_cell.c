/*
 * Jailhouse, a Linux-based partitioning hypervisor
 *
 * Copyright (c) ARM Limited, 2014
 *
 * Authors:
 *  Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
 *
 * This work is licensed under the terms of the GNU GPL, version 2.  See
 * the COPYING file in the top-level directory.
 */

#include <jailhouse/control.h>
#include <jailhouse/paging.h>
#include <jailhouse/printk.h>
#include <asm/sysregs.h>
#include <asm/control.h>

static u64 droplator_adjust_start(const struct jailhouse_memory *mem,
				  u64 orig_start)
{
	u64 retval = orig_start;
	
	if (mem->flags & JAILHOUSE_MEM_COLORED_CELL) {
		if ((mem->phys_start >= DROPLATOR_0_BASE &&
		     mem->phys_start < DROPLATOR_0_BASE + DROPLATOR_0_RANGE) ||
		    (mem->phys_start >= DROPLATOR_1_BASE &&
		     mem->phys_start < DROPLATOR_1_BASE + DROPLATOR_1_RANGE))
		{
			unsigned char drop_mask = calc_drop_mask(mem->colors);
			unsigned char dropped_bits = calc_drop_count(drop_mask);
			u64 inner = (retval & 0x00fffff000) << dropped_bits;
			u64 upper = (retval & 0xff00000000);
			u64 lower = (retval & 0x0000000fff);

			retval = upper | inner | lower;
			
			/* printk("ADJUSTED START: orig = 0x%08llx, new = 0x%08llx "
			       "(colors = 0x%08llx, drop_mask = 0x%x, dropped = %d)\n",
			       orig_start, retval, mem->colors, drop_mask, dropped_bits); */
		}
	}
	
	return retval;
}

int arch_map_memory_region(struct cell *cell,
			   const struct jailhouse_memory *mem)
{
	u64 phys_start = mem->phys_start;
	u32 flags = PTE_FLAG_VALID | PTE_ACCESS_FLAG;
	int retval;
	
	if (mem->flags & JAILHOUSE_MEM_READ)
		flags |= S2_PTE_ACCESS_RO;
	if (mem->flags & JAILHOUSE_MEM_WRITE)
		flags |= S2_PTE_ACCESS_WO;
	if (mem->flags & JAILHOUSE_MEM_IO)
		flags |= S2_PTE_FLAG_DEVICE;
	else
		flags |= S2_PTE_FLAG_NORMAL;
	if (mem->flags & JAILHOUSE_MEM_COMM_REGION)
		phys_start = paging_hvirt2phys(&cell->comm_page);
	/*
	if (!(mem->flags & JAILHOUSE_MEM_EXECUTE))
		flags |= S2_PAGE_ACCESS_XN;
	*/

	/* if(cell != &root_cell) */
	/* 	printk("#### Creating mapping for cell %d %s: " */
	/* 	       "0x%08llx -> 0x%08llx size 0x%08llx ####\n", */
	/* 	       cell->config->id, */
	/* 	       (cell == &root_cell ? "(ROOT)" : ""), */
	/* 	       mem->virt_start, phys_start, mem->size); */
	
	if (mem->flags & JAILHOUSE_MEM_COLORED_CELL) {
		bool remap = (cell == &root_cell) &&
			!(mem->flags & JAILHOUSE_MEM_COLORED_LOAD);

		retval = paging_create_colored(&cell->arch.mm, phys_start,
				mem->size, mem->virt_start, flags, mem->colors,
				PAGING_COHERENT, remap);
	} else
		retval = paging_create(&cell->arch.mm, phys_start, mem->size,
				mem->virt_start, flags, PAGING_COHERENT);

#if CONFIG_ALLOW_ALT_MAPPINGS

	/* if(cell != &root_cell) */
	/* 	printk("NOTE: This cell has %d alternative mappings defined.\n", */
	/* 	       cell->config->num_alt_mappings); */
	
	if (retval < 0)
		return retval;
	
	/* 
	 * Here is where we handle the creation of alternative
	 * mappings. Essentially, when a memory region for which
	 * alternative mappings exist is mapped, we repeat the
	 * creation of the mapping for each of the alternative
	 * mappings. From each created mapping, we distill the
	 * corresponding PTE and save that aside in the
	 * paging_structures of the cell.
	 */

	if (cell->config->num_alt_mappings > 0) {
		__u32 mappings = cell->config->num_alt_mappings;
		__u32 i;

		for (i = 0; i < mappings; ++i) {
			page_table_t real_root = cell->arch.mm.root_table;
			cell->arch.mm.root_table = cell->arch.mm.alt_mapping_roots[i];

			/* printk("ALT Mapping %d: mem flags = 0x%08llx\n", */
			/*        i, mem->flags); */
			
			/* Create mapping in the current alternative root */
			if (mem->flags & JAILHOUSE_MEM_HAS_ALT_MAPPINGS) {
				const struct jailhouse_memory * alt_mapping =
				  &(jailhouse_cell_alt_mappings(cell->config))[i];

				/* printk("+ ALT Mapping %d: alt flags = 0x%08llx\n", */
				/*        i, alt_mapping->flags); */
				
				if (alt_mapping->flags & JAILHOUSE_MEM_COLORED_CELL) {
					bool remap = (cell == &root_cell) &&
						!(mem->flags & JAILHOUSE_MEM_COLORED_LOAD);

					u64 adjusted_start =
						droplator_adjust_start(alt_mapping,
								       alt_mapping->phys_start);
					
					retval = paging_create_colored(&cell->arch.mm,
								       adjusted_start,
								       mem->size, mem->virt_start,
								       flags, alt_mapping->colors,
								       PAGING_COHERENT, remap);
				} else
					retval = paging_create(&cell->arch.mm,
							       alt_mapping->phys_start,
							       mem->size,
							       mem->virt_start, flags,
							       PAGING_COHERENT);
			} else {
				if (mem->flags & JAILHOUSE_MEM_COLORED_CELL) {
					bool remap = (cell == &root_cell) &&
						!(mem->flags & JAILHOUSE_MEM_COLORED_LOAD);
					
					retval = paging_create_colored(&cell->arch.mm, phys_start,
								       mem->size, mem->virt_start,
								       flags, mem->colors,
								       PAGING_COHERENT, remap);
				} else
					retval = paging_create(&cell->arch.mm, phys_start,
							       mem->size,
							       mem->virt_start, flags,
							       PAGING_COHERENT);
			}
			
			/* Restore original root */
			cell->arch.mm.root_table = real_root;
		}
	} 

#endif /* CONFIG_ALLOW_ALT_MAPPINGS */

	return retval;
}

int arch_unmap_memory_region(struct cell *cell,
			     const struct jailhouse_memory *mem)
{
	/*
	 * Do not be confused -- since paging_destroy* acts on virtual
	 * addresses, paging_destroy can be physically colored, too.
	 * We need to destroy the mapping using coloring only when unmapping
	 * from the root cell so that the correct regions are removed and
	 * then used from the cells.
	 */
	int retval;
	
	if (mem->flags & JAILHOUSE_MEM_COLORED_CELL && (cell == &root_cell))
		retval = paging_destroy_colored(&cell->arch.mm, mem->virt_start,
				mem->size, mem->colors, PAGING_COHERENT);
	else
		retval = paging_destroy(&cell->arch.mm, mem->virt_start,
			mem->size, PAGING_COHERENT);


#if CONFIG_ALLOW_ALT_MAPPINGS
	
	if (cell->config->num_alt_mappings > 0) {
		__u32 mappings = cell->config->num_alt_mappings;
		__u32 i;
		
		for (i = 0; i < mappings; ++i) {
			page_table_t real_root = cell->arch.mm.root_table;
			cell->arch.mm.root_table = cell->arch.mm.alt_mapping_roots[i];

			retval = paging_destroy(&cell->arch.mm, mem->virt_start,
						mem->size, PAGING_COHERENT);
			
			/* Restore original root */
			cell->arch.mm.root_table = real_root;
		}
	}
	
#endif /* CONFIG_ALLOW_ALT_MAPPINGS */
	
	return retval;
}

unsigned long arch_paging_gphys2phys(unsigned long gphys, unsigned long flags)
{
	/* Translate IPA->PA */
	return paging_virt2phys(&this_cell()->arch.mm, gphys, flags);
}

void arm_cell_dcaches_flush(struct cell *cell, enum dcache_flush flush)
{
	unsigned long region_addr, region_size, size;
	struct jailhouse_memory const *mem;
	unsigned int n;

	/* Perform flush for current alternative mapping */
	struct paging_structures * cell_paging = &cell->arch.mm;
	__u32 current = cell_paging->current_mapping;
	const struct jailhouse_memory * alt = NULL;
	
	for_each_mem_region(mem, cell->config, n) {
		if (mem->flags & (JAILHOUSE_MEM_IO | JAILHOUSE_MEM_COMM_REGION))
			continue;

		if ((mem->flags & JAILHOUSE_MEM_HAS_ALT_MAPPINGS) && current != 0) {
			alt = &(jailhouse_cell_alt_mappings(cell->config))[current-1];
			region_addr = alt->phys_start;
			region_addr = droplator_adjust_start(alt, region_addr);
		} else {
			region_addr = mem->phys_start;
		}
		
		region_size = mem->size;

		int res;
		
		/* Gotta do this differently for non-colored and colored mappings */
		while (region_size > 0) {
			size = MIN(region_size,
				   NUM_TEMPORARY_PAGES * PAGE_SIZE);

			/* cannot fail, mapping area is preallocated */
			if ((alt && (alt->flags & JAILHOUSE_MEM_COLORED_CELL)) ||
			    (!alt && (mem->flags & JAILHOUSE_MEM_COLORED_CELL))) {
				res = __paging_create_colored(&this_cpu_data()->pg_structs,
							    region_addr,
							    size, TEMPORARY_MAPPING_BASE,
							    PAGE_DEFAULT_FLAGS,
							    (alt ? alt->colors: mem->colors),
							    PAGING_NON_COHERENT, false,
							    &region_addr);
				if(res < 0)
					printk("WARN: Mapping failed for 0x%08lx\n", region_addr);

			} else {
				res = paging_create(&this_cpu_data()->pg_structs, region_addr,
						    size, TEMPORARY_MAPPING_BASE,
						    PAGE_DEFAULT_FLAGS, PAGING_NON_COHERENT);
				if(res < 0)
					printk("WARN: Mapping failed for 0x%08lx\n", region_addr);
				
				region_addr += size;
			}
			
			arm_dcaches_flush((void *)TEMPORARY_MAPPING_BASE, size,
					  flush);
			
			region_size -= size;
		}
	}
	
	/* ensure completion of the flush */
	dmb(ish);
}

int arm_paging_cell_init(struct cell *cell)
{
	if (cell->config->id > 0xff)
		return trace_error(-E2BIG);

	cell->arch.mm.root_paging = cell_paging;
	cell->arch.mm.root_table =
		page_alloc_aligned(&mem_pool, CELL_ROOT_PT_PAGES);

	if (!cell->arch.mm.root_table)
		return -ENOMEM;

#if CONFIG_ALLOW_ALT_MAPPINGS			

	cell->arch.mm.current_mapping = 0;
	
	if (cell->config->num_alt_mappings > 0) {
		/* Allocate page for array of alternative mappings */
		__u32 mappings = cell->config->num_alt_mappings;
		__u32 i;
		
		cell->arch.mm.alt_mapping_roots =
			page_alloc_aligned(&mem_pool, 1);

		if (!cell->arch.mm.alt_mapping_roots) {
			page_free(&mem_pool, cell->arch.mm.root_table, CELL_ROOT_PT_PAGES);
			cell->arch.mm.root_table = NULL;
			return -ENOMEM;
		}

		/* Allocate the actual alternative root pages */
		for (i = 0; i < mappings; ++i) {
			cell->arch.mm.alt_mapping_roots[i] =
				page_alloc_aligned(&mem_pool, CELL_ROOT_PT_PAGES);
			if (!cell->arch.mm.alt_mapping_roots[i])
				return -ENOMEM;
		}
	}
#endif
	
       	return 0;
}

void arm_paging_cell_destroy(struct cell *cell)
{
	page_free(&mem_pool, cell->arch.mm.root_table, CELL_ROOT_PT_PAGES);
}

void arm_paging_vcpu_init(struct paging_structures *pg_structs)
{
	unsigned long cell_table = paging_hvirt2phys(pg_structs->root_table);
	u64 vttbr = 0;

	vttbr |= (u64)this_cell()->config->id << VTTBR_VMID_SHIFT;
	vttbr |= (u64)(cell_table & TTBR_MASK);

	arm_write_sysreg(VTTBR_EL2, vttbr);
	arm_write_sysreg(VTCR_EL2, VTCR_CELL);

	/* Ensure that the new VMID is present before flushing the caches */
	isb();
	/*
	 * At initialisation, arch_config_commit does not act on other CPUs,
	 * since they register themselves to the root cpu_set afterwards. It
	 * means that this unconditionnal flush is redundant on master CPU.
	 */
	arm_paging_vcpu_flush_tlbs();
}
