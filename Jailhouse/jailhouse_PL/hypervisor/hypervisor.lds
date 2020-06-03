/*
 * Jailhouse, a Linux-based partitioning hypervisor
 *
 * Copyright (c) Siemens AG, 2013-2017
 *
 * Authors:
 *  Jan Kiszka <jan.kiszka@siemens.com>
 *
 * This work is licensed under the terms of the GNU GPL, version 2.  See
 * the COPYING file in the top-level directory.
 */
/*
 * Jailhouse, a Linux-based partitioning hypervisor
 *
 * Copyright (c) Siemens AG, 2013-2017
 *
 * Authors:
 *  Jan Kiszka <jan.kiszka@siemens.com>
 *
 * This work is licensed under the terms of the GNU GPL, version 2.  See
 * the COPYING file in the top-level directory.
 */
/*
 * Jailhouse, a Linux-based partitioning hypervisor
 *
 * Copyright (C) Siemens AG, 2017
 *
 * Authors:
 *  Henning Schild <henning.schild@siemens.com>
 *
 * This work is licensed under the terms of the GNU GPL, version 2.  See
 * the COPYING file in the top-level directory.
 */
/*
 * Jailhouse AArch64 support
 *
 * Copyright (C) 2015-2016 Huawei Technologies Duesseldorf GmbH
 *
 * Authors:
 *  Antonios Motakis <antonios.motakis@huawei.com>
 *
 * This work is licensed under the terms of the GNU GPL, version 2.  See
 * the COPYING file in the top-level directory.
 */
/*
 * Jailhouse, a Linux-based partitioning hypervisor
 *
 * Copyright (c) Siemens AG, 2013-2018
 *
 * Authors:
 *  Jan Kiszka <jan.kiszka@siemens.com>
 *
 * This work is licensed under the terms of the GNU GPL, version 2.  See
 * the COPYING file in the top-level directory.
 */
/*
 * Jailhouse AArch64 support
 *
 * Copyright (C) 2015 Huawei Technologies Duesseldorf GmbH
 *
 * Authors:
 *  Dmitry Voytik <dmitry.voytik@huawei.com>
 *
 * This work is licensed under the terms of the GNU GPL, version 2.  See
 * the COPYING file in the top-level directory.
 */
/*
 * Jailhouse, a Linux-based partitioning hypervisor
 *
 * Copyright (c) Siemens AG, 2014-2018
 *
 * Authors:
 *  Jan Kiszka <jan.kiszka@siemens.com>
 *
 * This work is licensed under the terms of the GNU GPL, version 2.  See
 * the COPYING file in the top-level directory.
 *
 * Partly derived from Linux kernel code.
 */
/* sizeof() for a structure/union field */
/* create 64-bit mask with bytes 0 to size-1 set to 0xff */
/* create 64-bit mask with all bits in [last:first] set */
/* extract the field value at [last:first] from an input of up to 64 bits */
/*
 * Jailhouse, a Linux-based partitioning hypervisor
 *
 * Copyright (c) ARM Limited, 2014
 * Copyright (c) Siemens AG, 2017
 *
 * Authors:
 *  Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
 *  Jan Kiszka <jan.kiszka@siemens.com>
 *
 * This work is licensed under the terms of the GNU GPL, version 2.  See
 * the COPYING file in the top-level directory.
 */
/*
 * Jailhouse AArch64 support
 *
 * Copyright (C) 2015 Huawei Technologies Duesseldorf GmbH
 *
 * Authors:
 *  Antonios Motakis <antonios.motakis@huawei.com>
 *
 * This work is licensed under the terms of the GNU GPL, version 2.  See
 * the COPYING file in the top-level directory.
 */
/*
 * Jailhouse, a Linux-based partitioning hypervisor
 *
 * Copyright (c) Siemens AG, 2013-2018
 *
 * Authors:
 *  Jan Kiszka <jan.kiszka@siemens.com>
 *
 * This work is licensed under the terms of the GNU GPL, version 2.  See
 * the COPYING file in the top-level directory.
 */
/*
 * Jailhouse, a Linux-based partitioning hypervisor
 *
 * Copyright (c) Siemens AG, 2014-2018
 *
 * Authors:
 *  Jan Kiszka <jan.kiszka@siemens.com>
 *
 * This work is licensed under the terms of the GNU GPL, version 2.  See
 * the COPYING file in the top-level directory.
 *
 * Partly derived from Linux kernel code.
 */
/* sizeof() for a structure/union field */
/* create 64-bit mask with bytes 0 to size-1 set to 0xff */
/* create 64-bit mask with all bits in [last:first] set */
/* extract the field value at [last:first] from an input of up to 64 bits */
/*
 * Jailhouse AArch64 support
 *
 * Copyright (C) 2015 Huawei Technologies Duesseldorf GmbH
 *
 * Authors:
 *  Antonios Motakis <antonios.motakis@huawei.com>
 *
 * This work is licensed under the terms of the GNU GPL, version 2.  See
 * the COPYING file in the top-level directory.
 */
/* exception class */
/* instruction length */
/* Instruction specific syndrome */
/* Exception classes values */
/* exception level in SPSR_ELx */
/*
 * This file is based on hypervisor/arch/arm/include/asm/paging.h for AArch32.
 * However, there are some differences. AArch64 supports different granule
 * sizes for pages (4Kb, 16Kb, and 64Kb), while AArch32 supports only a 4Kb
 * native page size. AArch64 also supports 4 levels of page tables, numbered
 * L0-3, while AArch32 supports only 3 levels numbered L1-3.
 *
 * We currently only implement 4Kb granule size for the page tables.
 * We support physical address ranges of up to 48 bits.
 */
/*
 * Stage-1 and Stage-2 lower attributes.
 * The contiguous bit is a hint that allows the PE to store blocks of 16 pages
 * in the TLB. This may be a useful optimisation.
 */
/*
 * When combining shareability attributes, the stage-1 ones prevail. So we can
 * safely leave everything non-shareable at stage 2.
 */
/* These bits differ in stage 1 and 2 translations */
/* Res1 for EL2 stage-1 tables */
/*
 * Descriptor pointing to a page table
 * (only for L1 and L2. L3 uses this encoding for terminal entries...)
 */
/*
 * AARCH64_TODO: the way TTBR_MASK is handled is almost certainly wrong. The
 * low bits of the TTBR should be zero, however this is an alignment requirement
 * as well for the actual location of the page table root. We get around the
 * buggy behaviour in the AArch32 code we share, by setting the mask to the
 * de facto alignment employed by the arch independent code: one page.
 */
/*
 * Hypervisor memory attribute indexes:
 *   0: normal WB, RA, WA, non-transient
 *   1: device
 *   2: normal non-cacheable
 *   3-7: unused
 */
/* Stage 2 memory attributes (MemAttr[3:0]) */
/* Macros used by the core, only for the EL2 stage-1 mappings */
/**
 * Location of per-CPU temporary mapping region in hypervisor address space.
 */
/*
 * Jailhouse AArch64 support
 *
 * Copyright (C) 2015-2016 Huawei Technologies Duesseldorf GmbH
 * Copyright (c) 2016 Siemens AG
 *
 * Authors:
 *  Antonios Motakis <antonios.motakis@huawei.com>
 *  Jan Kiszka <jan.kiszka@siemens.com>
 *
 * This work is licensed under the terms of the GNU GPL, version 2.  See
 * the COPYING file in the top-level directory.
 */
/*
 * We have no memory management during early init; four pages is the minimum we
 * can get away with to switch on the MMU with mappings for the hypervisor
 * firmware and the UART as well as identity mapping for the trampoline code
 * page.
 */
SECTIONS
{
 . = 0xffffc0200000;
 .header : { *(.header) }
 . = ALIGN(16);
 .text : {
  __text_start = .;
  *(.text)
 }
 . = ALIGN(16);
 .rodata : { *(.rodata) }
 . = ALIGN(16);
 .data : { *(.data) }
 . = ALIGN(8);
 .init_array : {
  __init_array_start = .;
  *(SORT(.init_array.*)) *(.init_array)
  __init_array_end = .;
 }
 .units : {
  __unit_array_start = .;
  *(.units);
  __unit_array_end = .;
 }
 . = ALIGN((1 << 12)); .bootstrap_page_tables : { bootstrap_pt_l0 = .; . = . + (1 << 12); bootstrap_pt_l1_hyp_uart = .; . = . + (1 << 12); bootstrap_pt_l1_trampoline = .; . = . + (1 << 12); bootstrap_pt_l2_hyp_uart = .; . = . + (1 << 12); } .trampoline : { __trampoline_start = .; *(.trampoline) }
 /* The console section shall only contain the hypervisor console. This
	 * section and the next section must be aligned to PAGE_SIZE, as we
	 * will map the console section, and only that section, as a whole page
	 * to the root cell. */
 . = ALIGN((1 << 12));
 .console : { *(.console) }
 . = ALIGN((1 << 12));
 .bss : { *(.bss) }
 . = ALIGN((1 << 12));
 __page_pool = .;
 .eh_frame : { *(.eh_frame*) }
}
