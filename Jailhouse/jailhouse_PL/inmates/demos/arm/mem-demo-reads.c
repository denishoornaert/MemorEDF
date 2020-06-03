/*
 * Jailhouse, a Linux-based partitioning hypervisor
 *
 * Copyright (c) ARM Limited, 2014
 * Copyright (c) Siemens AG, 2014-2017
 *
 * Authors:
 *  Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
 *  Jan Kiszka <jan.kiszka@siemens.com>
 *
 * This work is licensed under the terms of the GNU GPL, version 2.  See
 * the COPYING file in the top-level directory.
 */

#include <inmate.h>
#include <gic.h>

#define MEM_SIZE ((1024+512)*1024) // 2 MB array
#define LINE_SIZE (64) //Cache line size is 64 bytes

#define ENABLE_PRINTS 0

#define magic_timing_begin(cycles)\
	do{								\
		asm volatile("mrs %0, CNTVCT_EL0": "=r"(*(cycles)) );	\
	}while(0)

#define magic_timing_end(cycles)					\
	do{								\
		unsigned long tempCycleLo;				\
		asm volatile("mrs %0, CNTVCT_EL0":"=r"(tempCycleLo) );  \
		*(cycles) = tempCycleLo - *(cycles);			\
	}while(0)

static unsigned char buffer[MEM_SIZE];
volatile unsigned long * j_ptr = (unsigned long *)(0x500000UL);
unsigned long retval;
static unsigned long j;

void inmate_main(void)
{
  unsigned long i = 0;
	unsigned long * buf = (unsigned long *)buffer;
	unsigned long cycles;
	//	j_ptr = &j;
	(void)j;
	*j_ptr = 1;
	
#if ENABLE_PRINTS	
	printk("Initializing the memory buffer. Iter counter @ %p\n", j_ptr);
#endif
	for(i = 0; i < MEM_SIZE / sizeof(long); ++i)
		buf[i] = i;
	
#if ENABLE_PRINTS	
	printk("Reading the buffer timer...\n");
#endif
	while(++(*j_ptr)) {
		magic_timing_begin(&cycles);
		for(i = 0; i < MEM_SIZE / sizeof(long); i += LINE_SIZE / sizeof(long))
		  {
		    //printk("%p:\t 0x%08lx 0x%08lx\n", &buf[i], buf[i], *j_ptr);
		    retval += buf[i];
		  }
		magic_timing_end(&cycles);
#if ENABLE_PRINTS					
		printk("Iteration [%ld] cycles %ld\n", *j_ptr, cycles);
#endif
	}	

	halt();
}