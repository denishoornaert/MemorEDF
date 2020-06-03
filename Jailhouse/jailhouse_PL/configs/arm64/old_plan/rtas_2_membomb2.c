/*
 * Jailhouse, a Linux-based partitioning hypervisor
 *
 * Colored configuration for gic-demo inmate on Xilinx ZynqMP ZCU102 eval board:
 * 1 CPU, 64K RAM, 1 serial port
 * Coloring configuration:
 * 0xff00 ->	half of available colors, i.e.:
 * 		L2 size: 512 KiB
 * 		Memory  mapped: 64 KiB
 *		Memory reserved by color selection: ~1 GiB
 *
 * Copyright (c) Università di Modena e Reggio Emilia, 2019
 *
 * Authors:
 *  Luca Miccio <lucmiccio@gmail.com>
 *  Marco Solieri <ms@xt3.it>
 *
 * This work is licensed under the terms of the GNU GPL, version 2.  See
 * the COPYING file in the top-level directory.
 */

#include <jailhouse/types.h>
#include <jailhouse/cell-config.h>

#define ARRAY_SIZE(a) sizeof(a) / sizeof(a[0])

#define ALT_COL 2

struct {
	struct jailhouse_cell_desc cell;
	__u64 cpus[1];
	struct jailhouse_memory mem_regions[4];
#if CONFIG_ALLOW_ALT_MAPPINGS			
	struct jailhouse_memory alt_mappings[3];
#endif
} __attribute__((packed)) config = {
	.cell = {
		.signature = JAILHOUSE_CELL_DESC_SIGNATURE,
		.revision = JAILHOUSE_CONFIG_REVISION,
		.name = "RTAS_MEMBOMB2",
		.flags = JAILHOUSE_CELL_PASSIVE_COMMREG,

		.cpu_set_size = sizeof(config.cpus),
		.num_memory_regions = ARRAY_SIZE(config.mem_regions),
		.num_cache_regions = 0,
		.num_irqchips = 0,
		.pio_bitmap_size = 0,
		.num_pci_devices = 0,
		.num_pci_caps = 0,
#if CONFIG_ALLOW_ALT_MAPPINGS			
		.num_alt_mappings = ARRAY_SIZE(config.alt_mappings),		
#endif
		.console = {
			.address = 0xff010000,
			.type = JAILHOUSE_CON_TYPE_XUARTPS,
			.flags = JAILHOUSE_CON_ACCESS_MMIO |
				 JAILHOUSE_CON_REGDIST_4,
		},
	},

	.cpus = {
		0x2,
	},

	.mem_regions = {
		/* UART */ {
			.phys_start = 0xff010000,
			.virt_start = 0xff010000,
			.size = 0x1000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_IO | JAILHOUSE_MEM_ROOTSHARED,
		},
		/* RAM */ {
			.phys_start = 0x878000000,
			.virt_start = 0,
			.size = 0x400000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_LOADABLE |
			        JAILHOUSE_MEM_ROOTSHARED |
			        JAILHOUSE_MEM_HAS_ALT_MAPPINGS,
		},
		/* RAM for stats */ {
			.phys_start = 0x878401000,
			.virt_start = 0x500000,
			.size = 0x1000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
			        JAILHOUSE_MEM_ROOTSHARED,
		},

		/* communication region */ {
			.virt_start = 0x80000000,
			.size = 0x00001000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_COMM_REGION,
		},
	},
#if CONFIG_ALLOW_ALT_MAPPINGS			
	.alt_mappings = {
#if ALT_COL == 1
    		/* RAM */ {
			.phys_start = 0x1078000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x8000,
		},
		/* RAM - Alternative Mapping #1 */ {
			.phys_start = 0x4878000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x8000,
		},

#elif ALT_COL == 2
    		/* RAM */ {
			.phys_start = 0x1078000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0xc000,
		},
		/* RAM - Alternative Mapping #1 */ {
			.phys_start = 0x4878000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0xc000,
		},

#elif ALT_COL == 3
    		/* RAM */ {
			.phys_start = 0x1078000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0xe000,
		},
		/* RAM - Alternative Mapping #1 */ {
			.phys_start = 0x4878000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0xe000,
		},

#elif ALT_COL == 4
    		/* RAM */ {
			.phys_start = 0x1078000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0xf000,
		},
		/* RAM - Alternative Mapping #1 */ {
			.phys_start = 0x4878000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0xf000,
		},

#elif ALT_COL == 5
    		/* RAM */ {
			.phys_start = 0x1078000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0xf800,
		},
		/* RAM - Alternative Mapping #1 */ {
			.phys_start = 0x4878000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0xf8000,
		},

#elif ALT_COL == 6
    		/* RAM */ {
			.phys_start = 0x1078000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0xfc00,
		},
		/* RAM - Alternative Mapping #1 */ {
			.phys_start = 0x4878000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0xfc00,
		},

#elif ALT_COL == 7
    		/* RAM */ {
			.phys_start = 0x1078000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0xfe00,
		},
		/* RAM - Alternative Mapping #1 */ {
			.phys_start = 0x4878000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0xfe00,
		},

		/* This is not really 8 colors, but rather 1 shared color. */		
#elif ALT_COL == 8
    		/* RAM */ {
			.phys_start = 0x1078000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x8000,
		},
		/* RAM - Alternative Mapping #1 */ {
			.phys_start = 0x4878000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x8000,
		},
#elif ALT_COL == 16
    		/* RAM */ {
			.phys_start = 0x1078000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0xffff,
		},
		/* RAM - Alternative Mapping #1 */ {
			.phys_start = 0x4878000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0xffff,
		},
#else
		#error NO ALTERNATIVE MAPPINGS DEFINED
#endif

		
	}
#endif
};
