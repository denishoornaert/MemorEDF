/* Print error sources with filename and line number to debug console */

#define CONFIG_TRACE_ERROR             1 
#define CONFIG_ARM_GIC_V2              1 
#define CONFIG_MACH_ZYNQMP_ZCU102      1 
/*
 * Set instruction pointer to 0 if cell CPU has caused an access violation.
 * Linux inmates will dump a stack trace in this case.
 */
#define CONFIG_CRASH_CELL_ON_PANIC 1

