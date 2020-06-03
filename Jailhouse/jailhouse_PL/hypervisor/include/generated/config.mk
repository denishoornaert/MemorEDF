$(foreach config,$(filter CONFIG_%, $(.VARIABLES)), $(eval undefine $(config)))
CONFIG_TRACE_ERROR=y 
CONFIG_ARM_GIC_V2=y 
CONFIG_MACH_ZYNQMP_ZCU102=y 
CONFIG_CRASH_CELL_ON_PANIC=y
