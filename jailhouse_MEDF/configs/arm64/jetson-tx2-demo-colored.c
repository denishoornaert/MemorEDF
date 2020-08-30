/*
 * Jailhouse, a Linux-based partitioning hypervisor
 *
 * Configuration for gic-demo or uart-demo inmate on Nvidia Jetson TX2:
 * 1 CPU, 128 KB RAM, serial port 0, colored memory region
 *
 * This work is licensed under the terms of the GNU GPL, version 2.  See
 * the COPYING file in the top-level directory.
 */

#include <jailhouse/types.h>
#include <jailhouse/cell-config.h>

#define ARRAY_SIZE(a) sizeof(a) / sizeof(a[0])

struct {
	struct jailhouse_cell_desc cell;
	__u64 cpus[1];
	struct jailhouse_memory mem_regions[2];
	struct jailhouse_memory_colored col_mem[1];
} __attribute__((packed)) config = {
	.cell = {
		.signature = JAILHOUSE_CELL_DESC_SIGNATURE,
		.revision = JAILHOUSE_CONFIG_REVISION,
		.name = "jetson-tx2-demo [C]",
		.flags = JAILHOUSE_CELL_PASSIVE_COMMREG,

		.cpu_set_size = sizeof(config.cpus),
		.num_memory_regions = ARRAY_SIZE(config.mem_regions),
		.num_memory_regions_colored = ARRAY_SIZE(config.col_mem),
		.num_irqchips = 0,
		.vpci_irq_base = 300,

	},

	.cpus = {
		0x1,
	},

	.mem_regions = {
		/* UART */ {
			.phys_start = 0x3100000,
			.virt_start = 0x3100000,
			.size = 0x1000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_IO,
		},
		/* communication region */ {
			.virt_start = 0x80000000,
			.size = 0x00001000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_COMM_REGION,
		},
	},

	.col_mem = {
		{
			/* RAM */
			.memory = {
				.phys_start = 0x270000000,
				.virt_start = 0,
				.size = 0x40000,
				.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
					JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_LOADABLE,
			},

			/* Assigning half of the colors */
			.colors=0xffff0000,
		},
	},

};
