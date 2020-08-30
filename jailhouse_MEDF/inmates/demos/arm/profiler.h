/*
 * Jailhouse, a Linux-based partitioning hypervisor
 * 
 * DDR Profiling for NXP S32V234 -- common data structures
 * 
 * Copyright (c) Boston University
 *
 * Authors:
 *  Renato Mancuso <rmancuso@bu.edu>
 *
 * This work is licensed under the terms of the GNU GPL, version 2.  See
 * the COPYING file in the top-level directory.
 */

/* Each profiling sample has this format. A log is defined as an array
 * of samples. */
struct sample {
	uint32_t count;
	uint32_t cycles;
	uint32_t total_cycles;
	uint32_t busy_cycles;
	uint32_t reads;
	uint32_t writes;
};

/* The beginning of the log space is used for a minimal command &
 * control interface between root cell and profiling inmate. */
struct config {    
	unsigned long control;
	unsigned long count;
	uint32_t maxcount;
	uint16_t axi_value;
	uint16_t axi_mask;
};

#define PROF_SIGNATURE (0xE7UL << 56)

#define PROF_ENABLED       (1UL << 0) /* Start sample acquisition */
#define PROF_AUTOSTOP      (1UL << 1) /* Automatically stop with full buffer*/
#define PROF_TARGET        (1UL << 2) /* Which DDR module is being targeted: DDR0 or DDR1 */
#define PROF_BYTES         (1UL << 3) /* 1 to acquire bytes count instead of transactions */
#define PROF_INTERVAL_MASK (0xFFFFFFFFUL << 4)

#define PROF_INTERVAL(config)			\
	(((config) & PROF_INTERVAL_MASK) >> 4)

