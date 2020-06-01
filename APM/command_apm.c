#define _GNU_SOURCE             /* See feature_test_macros(7) */
#include <sched.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <stdint.h>
#include <stdbool.h>
#include "xaxipmon.h"
  
typedef unsigned __int128 uint128_t;

typedef uint16_t u16;
typedef uint32_t u32;

#define APM_ADDR_OFFSET 0x500000000UL //Configured at the Vivado Design
#define APM_CONFIG_REGION_SIZE (64*1024) //64KB 
#define CPU_NUM 1 //pin to cpu 1
#define LINE_SIZE (64) //Cache line size is 64 bytes
#define MEM_SPACE (2*1024*1024) //2MB
#define MEM_BOMB_SIZE ((1024+512)*1024) //1.5MB
#define HIGH_DDR_ADDR 0x800000000UL 
#define LOW_DDR_ADDR 0x0UL
#define CACHEABLE 0
#define MAP_SIZE 4096

#define magic_timing_begin(cycleLo, cycleHi){				\
		*cycleHi=0;						\
		asm volatile("mrs %0, CNTVCT_EL0": "=r"(*cycleLo) );	\
	}								\

#define magic_timing_end(cycleLo, cycleHi){				\
		unsigned tempCycleLo, tempCycleHi =0;			\
		asm volatile("mrs %0, CNTVCT_EL0":"=r"(tempCycleLo) );	\
		*cycleLo = tempCycleLo - *cycleLo;			\
		*cycleHi = tempCycleHi - *cycleHi;			\
	}								\


/* struct xapm_param { */
/*   u32 mode; */
/*   u32 maxslots; */
/*   u32 eventcnt; */
/*   u32 eventlog; */
/*   u32 sampledcnt; */
/*   u32 numcounters; */
/*   u32 metricwidth; */
/*   u32 sampledwidth; */
/*   u32 globalcntwidth; */
/*   u32 scalefactor; */
/*   u32 isr; */
/*   bool is_32bit_filter; */
/* }; */

/* static struct xapm_param *params; */


int main()
{
	
       
	uint128_t *apm;
	int fd = open("/dev/mem",O_RDWR|O_SYNC);

	if(fd < 0)
        {
                printf("Can't open /dev/mem\n");
                return 1;
        }
	printf("Successfully Opened /dev/mem \n");


	
	apm = (uint128_t *) mmap(0, APM_CONFIG_REGION_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, fd, APM_ADDR_OFFSET); 
	if (apm == NULL)
        {
                fprintf(stderr, "Can't mmap APM \n");
                return EXIT_FAILURE;
        } else {
	  printf("Successfully mapped APM \n");
	}

	baseaddr = apm;

	printf("apm: %lx ----baseaddr: %lx \n",apm,baseaddr);
	//	start(fd);

	params = (struct xapm_param *)mmap(0, MAP_SIZE , PROT_READ|PROT_WRITE,
					   MAP_SHARED , fd, APM_ADDR_OFFSET+getpagesize());

	/*   Event Log on First Write, First Read, Software-Written Data and External */
	/*   Event Flags */
	/*   This use case assumes that event logging is enabled and the other event log parameters */
	/*   (FIFO Width, Enable TID, Enable TDEST, Enable TUSER, Enable ID, and Enable Length) are set */
	/*   properly. The steps to capture the event log on first write, first read, software-written data */
	/*   and external event flags is: */
	/*   1. Reset the Streaming FIFO by writing 0x2000000 into the Control Register (0x300). */
	/*   2. Enable the flags that are required to capture events in the event log by writing to the */
	/*   Flag Enable Register (0x400). For example, to enable First write, First Read, External */
	/*   Event and Software-Written Data flags, write 0x30022 in to the Flag Enable Register. */
	/*   3. Enable the event log bit in the Control Register (write 0x100 in 0x300). */
	/*   4. Write to the Software-Written Data Register with the data required to log. */
	/*   5. Offload the log data through the Streaming Interface. */

	
	resetfifo();
	//starteventlog(0x30022);
	stopeventlog();
	starteventlog(XAPM_FLAG_FIRSTRD|XAPM_FLAG_RDADDR);
	//enableeventlog();
	//setswdatareg(0xBEEFCAFE);
	/* List of flags: */
	/* XAPM_FLAG_WRADDR 0x00000001 /\**< Write Address flag *\/ */
	/* XAPM_FLAG_FIRSTWR 0x00000002 /\**< First Write flag *\/ */
	/* XAPM_FLAG_LASTWR 0x00000004 /\**< Last Write flag *\/ */
	/* XAPM_FLAG_RESPONSE 0x00000008 /\**< Response flag *\/ */
	/* XAPM_FLAG_RDADDR 0x00000010 /\**< Read Address flag *\/ */
	/* XAPM_FLAG_FIRSTRD 0x00000020 /\**< First Read flag *\/ */
	/* XAPM_FLAG_LASTRD 0x00000040 /\**< Last Read flag *\/ */
	/* XAPM_FLAG_SWDATA 0x00010000 /\**< Software-written Data flag *\/ */
	/* XAPM_FLAG_EVENT 0x00020000 /\**< Last Read flag *\/ */
	/* XAPM_FLAG_EVNTSTOP 0x00040000 /\**< Last Read flag *\/ */
	/* XAPM_FLAG_EVNTSTART 0x00080000 /\**< Last Read flag *\/ */
	/* XAPM_FLAG_GCCOVF 0x00100000 /\**< Global Clock Counter Overflow */

	//starteventlog(XAPM_FLAG_WRADDR|XAPM_FLAG_FIRSTWR|XAPM_FLAG_LASTWR|XAPM_FLAG_RESPONSE|XAPM_FLAG_RDADDR|XAPM_FLAG_FIRSTRD|XAPM_FLAG_SWDATA);
	
	//stopeventlog();
	return EXIT_SUCCESS;
}



