/*
 * Jailhouse, a Linux-based partitioning hypervisor
 *
 * Copyright (c) ARM Limited, 2014
 * Copyright (c) Siemens AG, 2016
 *
 * Authors:
 *  Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
 *  Jan Kiszka <jan.kiszka@siemens.com>
 *
 * This work is licensed under the terms of the GNU GPL, version 2.  See
 * the COPYING file in the top-level directory.
 */

#include <jailhouse/control.h>
#include <jailhouse/printk.h>
#include <asm/control.h>
#include <asm/psci.h>

unsigned char calc_drop_mask(unsigned long colors)
{
	unsigned char lb = 0, hb = 0;
	unsigned char mask1 = 0xff, mask2 = 0xff;
	unsigned char retval;
	int found_lb = 0;
	int i;
	
	/* Find lb and hb */
	for (i = 0; i < 16; ++i) {
		if(!found_lb && ((1 << i) & colors)) {
			found_lb = 1;
			lb = i;
		}
		
		if ((1 << i) & colors) {
			hb = i;
		}
	}
	
	for (i = lb; i <= hb; ++i) {
		mask1 &= i;
		mask2 &= ~i;
	}
	
	retval = mask1 | mask2;
	return 0xF0 | ~retval;
}

unsigned char calc_drop_count(unsigned char drop_mask)
{
	/* Count the number of bits to 0 in the drop mask */
	unsigned char retval = 0;
	int i;

	for (i = 0; i < 8; ++i) {
		if ((~drop_mask) & (1 << i)) {
			++retval;
		}
	}

	return retval;
}

static void enter_cpu_off(struct public_per_cpu *cpu_public)
{
	cpu_public->park = false;
	cpu_public->wait_for_poweron = true;
}

void arm_cpu_park(void)
{
	struct public_per_cpu *cpu_public = this_cpu_public();

	spin_lock(&cpu_public->control_lock);
	enter_cpu_off(cpu_public);
	spin_unlock(&cpu_public->control_lock);

	arm_cpu_reset(0);
	arm_paging_vcpu_init(&parking_pt);
}

void arm_cpu_kick(unsigned int cpu_id)
{
	struct sgi sgi;

	sgi.targets = irqchip_get_cpu_target(cpu_id);
	sgi.cluster_id = irqchip_get_cluster_target(cpu_id);
	sgi.routing_mode = 0;
	sgi.id = SGI_EVENT;
	irqchip_send_sgi(&sgi);
}

void arch_reset_cpu(unsigned int cpu_id)
{
	public_per_cpu(cpu_id)->reset = true;

	resume_cpu(cpu_id);
}

void arch_park_cpu(unsigned int cpu_id)
{
	public_per_cpu(cpu_id)->park = true;

	resume_cpu(cpu_id);
}

static void check_events(struct public_per_cpu *cpu_public)
{
	bool reset = false;

	spin_lock(&cpu_public->control_lock);

	while (cpu_public->suspend_cpu) {
		cpu_public->cpu_suspended = true;

		spin_unlock(&cpu_public->control_lock);

		while (cpu_public->suspend_cpu)
			cpu_relax();

		spin_lock(&cpu_public->control_lock);
	}

	cpu_public->cpu_suspended = false;

	if (cpu_public->park) {
		enter_cpu_off(cpu_public);
	} else if (cpu_public->reset) {
		cpu_public->reset = false;
		if (cpu_public->cpu_on_entry != PSCI_INVALID_ADDRESS) {
			cpu_public->wait_for_poweron = false;
			reset = true;
		} else {
			enter_cpu_off(cpu_public);
		}
	}

	if (cpu_public->flush_vcpu_caches) {
		cpu_public->flush_vcpu_caches = false;
		arm_paging_vcpu_flush_tlbs();
	}

	if (cpu_public->refresh_root_page) {
		cpu_public->refresh_root_page = false;
		arm_paging_vcpu_init(&this_cell()->arch.mm);
	}
	
	spin_unlock(&cpu_public->control_lock);

	/*
	 * wait_for_poweron is only modified on this CPU, so checking outside of
	 * control_lock is fine.
	 */
	if (cpu_public->wait_for_poweron)
		arm_cpu_park();
	else if (reset)
		arm_cpu_reset(cpu_public->cpu_on_entry);
}

void arch_handle_sgi(u32 irqn, unsigned int count_event)
{
	struct public_per_cpu *cpu_public = this_cpu_public();

	switch (irqn) {
	case SGI_INJECT:
		cpu_public->stats[JAILHOUSE_CPU_STAT_VMEXITS_VSGI] +=
			count_event;
		irqchip_inject_pending();
		break;
	case SGI_EVENT:
		cpu_public->stats[JAILHOUSE_CPU_STAT_VMEXITS_MANAGEMENT] +=
			count_event;
		check_events(cpu_public);
		break;
	default:
		printk("WARN: unknown SGI received %d\n", irqn);
	}
}

/*
 * Handle the maintenance interrupt, the rest is injected into the cell.
 * Return true when the IRQ has been handled by the hyp.
 */
bool arch_handle_phys_irq(u32 irqn, unsigned int count_event)
{
	struct public_per_cpu *cpu_public = this_cpu_public();

	if (irqn == system_config->platform_info.arm.maintenance_irq) {
		cpu_public->stats[JAILHOUSE_CPU_STAT_VMEXITS_MAINTENANCE] +=
			count_event;
		irqchip_inject_pending();

		return true;
	}

	cpu_public->stats[JAILHOUSE_CPU_STAT_VMEXITS_VIRQ] += count_event;
	irqchip_set_pending(cpu_public, irqn);

	return false;
}

int arch_cell_create(struct cell *cell)
{
	return arm_paging_cell_init(cell);
}

void arch_cell_reset(struct cell *cell)
{
	unsigned int first = first_cpu(cell->cpu_set);
	unsigned int cpu;
	struct jailhouse_comm_region *comm_region =
		&cell->comm_page.comm_region;

	/* Place platform specific information inside comm_region */
	comm_region->gic_version = system_config->platform_info.arm.gic_version;
	comm_region->gicd_base = system_config->platform_info.arm.gicd_base;
	comm_region->gicc_base = system_config->platform_info.arm.gicc_base;
	comm_region->gicr_base = system_config->platform_info.arm.gicr_base;

	/*
	 * All CPUs but the first are initially suspended.  The first CPU
	 * starts at cpu_reset_address, defined in the cell configuration.
	 */
	public_per_cpu(first)->cpu_on_entry = cell->config->cpu_reset_address;
	for_each_cpu_except(cpu, cell->cpu_set, first)
		public_per_cpu(cpu)->cpu_on_entry = PSCI_INVALID_ADDRESS;

	arm_cell_dcaches_flush(cell, DCACHE_INVALIDATE);

	irqchip_cell_reset(cell);
}

void arch_cell_destroy(struct cell *cell)
{
	unsigned int cpu;

	arm_cell_dcaches_flush(cell, DCACHE_INVALIDATE);

	/* All CPUs are handed back to the root cell in suspended mode. */
	for_each_cpu(cpu, cell->cpu_set)
		public_per_cpu(cpu)->cpu_on_entry = PSCI_INVALID_ADDRESS;

	arm_paging_cell_destroy(cell);
}

/* Note: only supports synchronous flushing as triggered by config_commit! */
void arch_flush_cell_vcpu_caches(struct cell *cell)
{
	unsigned int cpu;

	for_each_cpu(cpu, cell->cpu_set)
		if (cpu == this_cpu_id())
			arm_paging_vcpu_flush_tlbs();
		else
			public_per_cpu(cpu)->flush_vcpu_caches = true;
}

void arch_init_alt_mappings(struct cell *cell)
{
	__u32 mappings = cell->config->num_alt_mappings;
	__u32 i;

	if (mappings == 0)
		return;
	
	page_table_t cur_root = cell->arch.mm.root_table;
		
	for (i = 0; i < mappings; ++i) {
		/* Copy content of root_page into every alternative
		 * mapping root page */
		page_table_t dest = cell->arch.mm.alt_mapping_roots[i];
		memcpy(dest, cur_root, PAGE_SIZE);
	}
	
}

#if 0
static void compare_root_tables(page_table_t dfl, page_table_t new)
{
	unsigned long entries = PAGE_SIZE/sizeof(pt_entry_t);
	unsigned long i;

	for (i = 0; i < entries; ++i) {
		if (((pt_entry_t *)dfl)[i] != ((pt_entry_t *)new)[i]) {
			printk("PTCOMP: [%ld] dfl = %p; new = %p\n", i,
			       ((pt_entry_t *)dfl)[i], ((pt_entry_t *)new)[i]);
		}
	}
}
#endif

void arch_cell_switch_mapping(struct cell * cell, unsigned long mapping_id)
{

	/* Follow the steps listed below: */
	/* 1. Cell is already suspended */
	/* 2. Clean and invalidate L1, L2 and TLB */
	/* 3. Switch mapping in the root_page of the cell */
	/* 4. Reinstall TTBR pointer to base table */
	/* 5. Reconfigure droplator's mask */
	/* 6. Resume cell */

	__u32 mappings = cell->config->num_alt_mappings;
	struct paging_structures * cell_paging = &cell->arch.mm;
	unsigned int cpu;
	
	if (mappings == 0) {
		printk("Cell %d does not have alternative mappings. Nothing to do.\n",
		       cell->config->id);
		return;
	}

	if (mapping_id > mappings) {
		printk("Mapping %ld is not a valid mapping ID for Cell %d.\n",
		       mapping_id, cell->config->id);
		return;
	}

	/* Get ID of current mapping */
	__u32 current = cell_paging->current_mapping;
	
	if (mapping_id == current) {
		printk("Cell %d already using mapping %ld.\n",
		       cell->config->id, mapping_id);
		return;
	}

	
	/* Here we go: */
	/* 2. Invalidate data caches */
	arm_cell_dcaches_flush(cell, DCACHE_CLEAN_AND_INVALIDATE);
	arch_flush_cell_vcpu_caches(cell);

	for_each_cpu(cpu, cell->cpu_set) {
		refresh_root_page_cpu(cpu);
	}
	
	/* 3. Switch mapping in the root_page of the cell */
	page_table_t default_mapping;
	
	if (current != 0) {
		default_mapping = cell_paging->alt_mapping_roots[current-1];
		cell_paging->alt_mapping_roots[current-1] = cell_paging->root_table;
	}
	else {
		default_mapping = cell_paging->root_table;
	}
	
	/* If we want to reinstall the default mapping */
	if (mapping_id == 0) {
		/* restore pointer to default mapping (i.e. with ID = 0) */
		cell_paging->root_table = default_mapping;
	} else {
		cell_paging->root_table = cell_paging->alt_mapping_roots[mapping_id-1];
		cell_paging->alt_mapping_roots[mapping_id-1] = default_mapping;
	}

	cell_paging->current_mapping = mapping_id;
	
	/* At this point, the root_table contains the right mapping. */
	/* 4. Reinstall TTBR pointer to base table for all the CPUs owned by the cell */
	for_each_cpu(cpu, cell->cpu_set) {
		refresh_root_page_cpu(cpu);
	}

	/* 5. Reconfigure droplator's mask */
	/* First off, find out the mask to write to the droplator */
	const struct jailhouse_memory * new_mapping = 
		&(jailhouse_cell_alt_mappings(cell->config))[mapping_id - 1];

	/* Does this mapping involve a droplator? */
	if (new_mapping->phys_start >= DROPLATOR_0_BASE &&
	    new_mapping->phys_start < DROPLATOR_0_BASE + DROPLATOR_0_RANGE)
	{
		unsigned char droplator_mask;
		if (new_mapping->flags & JAILHOUSE_MEM_COLORED_CELL) {
			droplator_mask = calc_drop_mask(new_mapping->colors);
		} else {
			/* Nothing to drop */
			droplator_mask = 0xff;
		}
		
		void * drop0_config = paging_map_device(DROPLATOR_0_CONFIG, PAGE_SIZE);
		mmio_write32(drop0_config, droplator_mask);
		paging_unmap_device(DROPLATOR_0_CONFIG, drop0_config, PAGE_SIZE);
	}
	
	if (new_mapping->phys_start >= DROPLATOR_1_BASE &&
	    new_mapping->phys_start < DROPLATOR_1_BASE + DROPLATOR_1_RANGE)
	{
		unsigned char droplator_mask;
		if (new_mapping->flags & JAILHOUSE_MEM_COLORED_CELL) {
			droplator_mask = calc_drop_mask(new_mapping->colors);
		} else {
			/* Nothing to drop */
			droplator_mask = 0xff;
		}
		
		void * drop1_config = paging_map_device(DROPLATOR_1_CONFIG, PAGE_SIZE);
		mmio_write32(drop1_config, droplator_mask);
		paging_unmap_device(DROPLATOR_1_CONFIG, drop1_config, PAGE_SIZE);
	}

	
	/* 6. Resume cell - handled by caller */
	return;
}

void arch_config_commit(struct cell *cell_added_removed)
{
	irqchip_config_commit(cell_added_removed);
}

void __attribute__((noreturn)) arch_panic_stop(void)
{
	asm volatile ("1: wfi; b 1b");
	__builtin_unreachable();
}

#ifndef CONFIG_CRASH_CELL_ON_PANIC
void arch_panic_park(void) __attribute__((alias("arm_cpu_park")));
#endif

void arch_prepare_shutdown(void)
{
}
