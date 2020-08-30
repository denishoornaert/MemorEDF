#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

/* ARMv8 PMU Control */
#define ARMV8_PMCR_E            (1 << 0)  /* Enable all counters */
#define ARMV8_PMCR_P            (1 << 1)  /* Reset all counters */
#define ARMV8_PMCR_C            (1 << 2)  /* Cycle counter reset */
#define ARMV8_PMUSERENR_EN      (1 << 0)  /* EL0 access enable */
#define ARMV8_PMUSERENR_CR      (1 << 2)  /* Cycle counter read enable */
#define ARMV8_PMUSERENR_ER      (1 << 3)  /* Event counter read enable */
#define ARMV8_PMCNTENSET_EL0_EN (1 << 31) /* Performance Monitors Count Enable Set register */

static inline unsigned long arm_v8_get_timing(void)
{
	unsigned long volatile result = 0;
	asm volatile("MRS %0, PMCCNTR_EL0" : "=r" (result));
	return result;
}

static void arm_v8_timing_init(void)
{
	volatile unsigned int value = 0;
	
	/* Enable Performance Counter */
	asm volatile("MRS %0, PMCR_EL0" : "=r" (value));
	value |= ARMV8_PMCR_E; /* Enable */
	value |= ARMV8_PMCR_C; /* Cycle counter reset */
	value |= ARMV8_PMCR_P; /* Reset all counters */
	asm volatile("MSR PMCR_EL0, %0" : : "r" (value));

	/* Enable cycle counter register */
	asm volatile("MRS %0, PMCNTENSET_EL0" : "=r" (value));
	value |= ARMV8_PMCNTENSET_EL0_EN;
	asm volatile("MSR PMCNTENSET_EL0, %0" : : "r" (value));
}

int main(void)
{
	unsigned long start, end;
	double clock_speed;

	arm_v8_timing_init();
	
	start = arm_v8_get_timing();

	sleep(10);

	end = arm_v8_get_timing();

	clock_speed = (double)(end - start) / 10;

	printf("Measured clock speed: %lf MHz\n", clock_speed / (1000 * 1000));

	return EXIT_SUCCESS;
}
