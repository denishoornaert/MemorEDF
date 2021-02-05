#include <stdio.h>
#include <stdlib.h>
#include <sched.h>
#include <string.h>
#include <sys/mman.h>

/* Allocate a buffer much than L2 so that clock measurements can be
 * done faster */

#define BUFSIZE 16*2*1024*1024
#define ITEMS (BUFSIZE/sizeof(unsigned long))
#define ITERATIONS 1000
#define MAP_HUGE_2MB (21 << MAP_HUGE_SHIFT)
#define MAP_HUGE_4MB (22 << MAP_HUGE_SHIFT)
#define MAP_HUGE_8MB (23 << MAP_HUGE_SHIFT)
#define MAP_HUGE_16MB (24 << MAP_HUGE_SHIFT)
#define MAP_HUGE_1GB    (30 << MAP_HUGE_SHIFT)

/* DRAM Geometry Specified Here */

/* Original
#define COL_SHIFT  (0)
#define COL_BITS   (10)
#define BANK_SHIFT (COL_BITS)
#define BANK_BITS  (3)
#define ROW_SHIFT  (COL_BITS+BANK_BITS)
#define ROW_BITS   (15)
*/

/*
#define COL_SHIFT  (0)
#define COL_BITS   (10)
#define BANK_SHIFT (COL_BITS)
#define BANK_BITS  (4) // 2 bits for the bank and 2 for the group bank)
#define ROW_SHIFT  (COL_BITS+BANK_BITS)
#define ROW_BITS   (15)
*/

/* Xilinx ZCU102 Specifications */
/* ROW, BANK, COL */
#define COL_SHIFT  (0)
#define COL_BITS   (10)
#define BANK_SHIFT (COL_BITS)
#define BANK_BITS  (2)
#define ROW_SHIFT  (COL_BITS+BANK_BITS)
#define ROW_BITS   (15)




#define LINE_SIZE  64 /* 64 bytes line size*/
#define NEXT_ROW   (1 << ROW_SHIFT)
#define NEXT_COL   (LINE_SIZE)
#define TOT_COLS   (1 << COL_BITS)

static inline unsigned long armv8_get_timing(void)
{
	unsigned long result;
	asm volatile("mrs %0, cntvct_el0" : "=r" (result));
	return result;
}

/* Set real-time SCHED_FIFO scheduler with given priority */
void set_realtime(int prio)
{
	struct sched_param sp;

	/* Initialize parameters */
	memset(&sp, 0, sizeof(struct sched_param));
	sp.sched_priority = prio;

	/* Attempt to set the scheduler for current process */
	if (sched_setscheduler(0, SCHED_FIFO, &sp) < 0) {
		perror("Unable to set SCHED_FIFO scheduler");
		exit(EXIT_FAILURE);
	}
}


int main ()
{
	volatile unsigned char * buffer;
	volatile unsigned char * end;
	register int j;
	unsigned long averageBW;

	/* Set real-time priority */
	int max_prio = sched_get_priority_max(SCHED_FIFO);
	set_realtime(max_prio);

	buffer = (volatile unsigned char *)mmap(0, BUFSIZE, PROT_READ | PROT_WRITE,
						MAP_PRIVATE | MAP_ANONYMOUS |
						MAP_HUGETLB | MAP_HUGE_2MB, -1, 0);
	end = buffer + BUFSIZE;

	if (buffer == (void *)-1) {
		perror("Unable to allocate area with HUGETLB flags");
		exit(EXIT_FAILURE);
	}

	if (mlockall(MCL_CURRENT | MCL_FUTURE) < 0) {
		perror("Unable to perform mlockall");
		exit(EXIT_FAILURE);
	}

	printf("TOT_COLS %d \n", TOT_COLS);
	averageBW =0;


	for (j = 0; j < ITERATIONS; ++j) {
	//while(1){
		/* The inner loop in each iteration should write on
		 * the rows*/
		unsigned long int col_offset = 0;

		int count  = 0;
		unsigned long start =  armv8_get_timing();
		while (col_offset < TOT_COLS) {
			volatile unsigned char * ptr = buffer + col_offset;
			while (ptr < end) {
				*ptr = j;
				ptr += NEXT_ROW;
				count++;
			}
			/* Jump to the next useful column, i.e. next
			 * cache line offset with in the row. */
			col_offset += NEXT_COL;
		}
		unsigned long finish =  armv8_get_timing();

		//printf("Total Time Elapsed %ld %ld %ld\n",  (finish-start), finish, start);

		//printf("col_offset = %d NEXT_ROW = %d Bytes accessed = %d count %d\n", col_offset, NEXT_ROW, count*64, count );

		unsigned long res = (finish-start)/100; // 100 Mhz


		averageBW += (count*64)/res;

	}


	printf("BW = %d \n", 2*(averageBW/ITERATIONS));

	return EXIT_SUCCESS;
}
