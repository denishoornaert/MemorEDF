/*
 * Jailhouse, a Linux-based partitioning hypervisor
 *
 * Configuration for linux-demo inmate on ZynqMP ZCU102:
 * 2 CPUs, 128M RAM, serial port 2
 *
 * Copyright (c) Siemens AG, 2014-2016
 *
 * Authors:
 *  Jan Kiszka <jan.kiszka@siemens.com>
 *
 * This work is licensed under the terms of the GNU GPL, version 2.  See
 * the COPYING file in the top-level directory.
 */

#include <jailhouse/types.h>
#include <jailhouse/cell-config.h>

#define ARRAY_SIZE(a) sizeof(a) / sizeof(a[0])

#define ALT_COL 12

struct {
	struct jailhouse_cell_desc cell;
	__u64 cpus[1];
	struct jailhouse_memory mem_regions[7];
	struct jailhouse_irqchip irqchips[1];
	struct jailhouse_pci_device pci_devices[2];
#if CONFIG_ALLOW_ALT_MAPPINGS			
	struct jailhouse_memory alt_mappings[2];
#endif

} __attribute__((packed)) config = {
	.cell = {
		.signature = JAILHOUSE_CELL_DESC_SIGNATURE,
		.revision = JAILHOUSE_CONFIG_REVISION,
		.name = "ZynqMP-linux-demo",
		.flags = JAILHOUSE_CELL_PASSIVE_COMMREG,

		.cpu_set_size = sizeof(config.cpus),
		.num_memory_regions = ARRAY_SIZE(config.mem_regions),
		.num_irqchips = ARRAY_SIZE(config.irqchips),
		.num_pci_devices = ARRAY_SIZE(config.pci_devices),
#if CONFIG_ALLOW_ALT_MAPPINGS			
		.num_alt_mappings = ARRAY_SIZE(config.alt_mappings),
#endif		
		.vpci_irq_base = 140-32,

		.console = {
			.address = 0xff010000,
			.type= JAILHOUSE_CON_TYPE_XUARTPS,
			.flags = JAILHOUSE_CON_ACCESS_MMIO |
				 JAILHOUSE_CON_REGDIST_4,
		},
	},

	.cpus = {
		0x8,
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
			.phys_start = 0x801000000,
			.virt_start = 0,
			.size = 0x10000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_LOADABLE |
			        JAILHOUSE_MEM_ROOTSHARED,
		},
		/* RAM for stats  */ {
			.phys_start = 0x801010000,
			.virt_start = 0x800000000,
			.size = 0x1000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
			        JAILHOUSE_MEM_ROOTSHARED,
		},

		/* RAM */ {
			.phys_start = 0x810000000,
			.virt_start = 0x810000000,
			.size = 0x60000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_DMA |
				JAILHOUSE_MEM_LOADABLE |
			        JAILHOUSE_MEM_HAS_ALT_MAPPINGS,
		},
		/* IVSHMEM shared memory region */ {
			.phys_start = 0x800400000,
			.virt_start = 0x800400000,
			.size = 0x100000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_ROOTSHARED,
		},
		/* IVSHMEM shared memory region */ {
			.phys_start = 0x800700000,
			.virt_start = 0x800700000,
			.size = 0x100000,
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

	.irqchips = {
		/* GIC */ {
			.address = 0xf9010000,
			.pin_base = 32,
			.pin_bitmap = {
				1 << (54 - 32),
				0,
				0,
				(1 << (140 - 128)) | (1 << (142 - 128))
			},
		},
	},

	.pci_devices = {
		/* 00:00.0 */ {
			.type = JAILHOUSE_PCI_TYPE_IVSHMEM,
			.bdf = 0 << 3,
			.bar_mask = {
				0xffffff00, 0xffffffff, 0x00000000,
				0x00000000, 0x00000000, 0x00000000,
			},
			.shmem_region = 4,
			.shmem_protocol = JAILHOUSE_SHMEM_PROTO_VETH,
		},
		/* 00:02.0 */ {
			.type = JAILHOUSE_PCI_TYPE_IVSHMEM,
			.bdf = 2 << 3,
			.bar_mask = {
				0xffffff00, 0xffffffff, 0x00000000,
				0x00000000, 0x00000000, 0x00000000,
			},
			.shmem_region = 5,
			.shmem_protocol = JAILHOUSE_SHMEM_PROTO_VETH,
		},
	},
	
#if CONFIG_ALLOW_ALT_MAPPINGS			
	.alt_mappings = {
#if ALT_COL == 1
    		/* RAM */ {
			.phys_start = 0x1010000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x0001,
		},
		/* RAM - Alternative Mapping #1 */ {
			.phys_start = 0x4810000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x0001,
		},

#elif ALT_COL == 2
    		/* RAM */ {
			.phys_start = 0x1010000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x0003,
		},
		/* RAM - Alternative Mapping #1 */ {
			.phys_start = 0x4810000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x0003,
		},

#elif ALT_COL == 3
    		/* RAM */ {
			.phys_start = 0x1010000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x0007,
		},
		/* RAM - Alternative Mapping #1 */ {
			.phys_start = 0x4810000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x0007,
		},

#elif ALT_COL == 4
    		/* RAM */ {
			.phys_start = 0x1010000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x000f,
		},
		/* RAM - Alternative Mapping #1 */ {
			.phys_start = 0x4810000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x000f,
		},

#elif ALT_COL == 5
    		/* RAM */ {
			.phys_start = 0x1010000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x001f,
		},
		/* RAM - Alternative Mapping #1 */ {
			.phys_start = 0x4810000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x001f,
		},

#elif ALT_COL == 6
    		/* RAM */ {
			.phys_start = 0x1010000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x003f,
		},
		/* RAM - Alternative Mapping #1 */ {
			.phys_start = 0x4810000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x003f,
		},

#elif ALT_COL == 7
    		/* RAM */ {
			.phys_start = 0x1010000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x007f,
		},
		/* RAM - Alternative Mapping #1 */ {
			.phys_start = 0x4810000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x007f,
		},

#elif ALT_COL == 8
    		/* RAM */ {
			.phys_start = 0x1010000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x00ff,
		},
		/* RAM - Alternative Mapping #1 */ {
			.phys_start = 0x4810000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x00ff,
		},

#elif ALT_COL == 9
    		/* RAM */ {
			.phys_start = 0x1010000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x01ff,
		},
		/* RAM - Alternative Mapping #1 */ {
			.phys_start = 0x4810000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x01ff,
		},

#elif ALT_COL == 10
    		/* RAM */ {
			.phys_start = 0x1010000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x03ff,
		},
		/* RAM - Alternative Mapping #1 */ {
			.phys_start = 0x4810000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x03ff,
		},

#elif ALT_COL == 11
    		/* RAM */ {
			.phys_start = 0x1010000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x07ff,
		},
		/* RAM - Alternative Mapping #1 */ {
			.phys_start = 0x4810000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x07ff,
		},

#elif ALT_COL == 12
    		/* RAM */ {
			.phys_start = 0x1010000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x0fff,
		},
		/* RAM - Alternative Mapping #1 */ {
			.phys_start = 0x4810000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x0fff,
		},

#elif ALT_COL == 13
    		/* RAM */ {
			.phys_start = 0x1010000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x1fff,
		},
		/* RAM - Alternative Mapping #1 */ {
			.phys_start = 0x4810000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x1fff,
		},

#elif ALT_COL == 14
    		/* RAM */ {
			.phys_start = 0x1010000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x3fff,
		},
		/* RAM - Alternative Mapping #1 */ {
			.phys_start = 0x4810000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x3fff,
		},

#elif ALT_COL == 15
    		/* RAM */ {
			.phys_start = 0x1010000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x7fff,
		},
		/* RAM - Alternative Mapping #1 */ {
			.phys_start = 0x4810000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0x7fff,
		},

#elif ALT_COL == 16
    		/* RAM */ {
			.phys_start = 0x1010000000,
			.flags = JAILHOUSE_MEM_READ | JAILHOUSE_MEM_WRITE |
				JAILHOUSE_MEM_EXECUTE | JAILHOUSE_MEM_COLORED_CELL,
			.colors = 0xffff,
		},
		/* RAM - Alternative Mapping #1 */ {
			.phys_start = 0x4810000000,
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
