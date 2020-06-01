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

#define BRAM_ADDR_OFFSET 0x400000000UL //Configured at the Vivado Design
#define CPU_NUM 1 //pin to cpu 1
#define LINE_SIZE (64) //Cache line size is 64 bytes
#define MEM_SPACE (2*1024*1024) //2MB
#define MEM_BOMB_SIZE ((1024+512)*1024) //1.5MB
#define HIGH_DDR_ADDR 0x800000000UL 
#define LOW_DDR_ADDR 0x0UL
#define CACHEABLE 0

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


/* Use mmap flags directly as numbers as libc is not modified to support new flags */
#define MAP_CACHED  0x40 /* Map as cacheable */
#define MAP_OC_INC  0x80 /* Map as Outer Cacheable, Inner non-cacheable */
cpu_set_t mask;
extern int errno;
typedef unsigned __int128 uint128_t;
int main(int argc, char *argv[])
{
	
	char *ptr;
	uint128_t i,j;
	unsigned int WDATA = 0xBEEFCAFE;
	uint128_t *ddr;
	uint128_t *ps_ddr;
	uint128_t *bram;
	unsigned int cycleHI=0, cycleLO=0;
	int witer =1, riter = 1;

	CPU_ZERO(&mask);
	CPU_SET(CPU_NUM,&mask);	
	sched_setaffinity(0, sizeof(mask), &mask);
	sched_yield();
	int fd = open("/dev/mem",O_RDWR|O_SYNC);

	if(fd < 0)
        {
                printf("Can't open /dev/mem\n");
                return 1;
        }
	printf("Successfully Opened /dev/mem \n");
	
	if (CACHEABLE){
	  bram = (uint128_t *) mmap(0, MEM_SPACE, PROT_READ|PROT_WRITE, MAP_SHARED| MAP_CACHED, fd, BRAM_ADDR_OFFSET); 
	} else{
		bram = (uint128_t *) mmap(0, MEM_SPACE, PROT_READ|PROT_WRITE, MAP_SHARED, fd, BRAM_ADDR_OFFSET); 
	  }

	if (bram == NULL)
        {
                fprintf(stderr, "Can't mmap BRAM\n");
                return EXIT_FAILURE;
        }	
//////////////////////////////////////////
	unsigned long time_tot = 0;
	unsigned long x = 0;
	unsigned long acc_count = 0;		

/* ---------------------------------- READ/WRITE (CONTIGUOUS)-----------------------------------*\/ */
	
	/* Begin Time Measuring. Doing writes first */
	time_tot = 0;
	x = 0;
	acc_count = 0;
	while(1){
		magic_timing_begin(&cycleLO, &cycleHI);
		for(i=0, acc_count=0; i<MEM_SPACE / sizeof(uint128_t); i += 128, acc_count += 2)
		{
			(bram[i]) = WDATA;
			(bram[i+64]) = (int)i;
		}
		magic_timing_end(&cycleLO, &cycleHI);
		time_tot += cycleLO;
	

	/* Output stats for writes */
	/* printf("--*--*--*--*--*--  Stats for Non-Colored WRITE: avg;%lf;bytes/clk;%lf  --*--*--*--*--*--\n", */
	/*        (double)time_tot/(witer * acc_count), */
	/*        ((double)acc_count * witer * sizeof(uint128_t)) / time_tot); */
	time_tot = 0;
	x = 0;
        uint128_t dummy =0;
      
		magic_timing_begin(&cycleLO, &cycleHI);
		for(i=0, acc_count=0; i<MEM_SPACE / sizeof(uint128_t); i += 128, acc_count += 2)
		{
			dummy += (bram[i]);
			dummy += (bram[i+64]);

		}
		magic_timing_end(&cycleLO, &cycleHI);
		
		time_tot += cycleLO;
	
	/* printf("--*--*--*--*--*--  Stats for Non-Colored READ: avg;%lf;bytes/clk;%lf  --*--*--*--*--*--\n", */
	/*        (double)time_tot/(riter * acc_count), */
	/*        ((double)acc_count * riter * sizeof(uint128_t)) / time_tot); */
	//fprintf(stderr, "CRC = %d\n", dummy);
	}

	
	return EXIT_SUCCESS;
}



