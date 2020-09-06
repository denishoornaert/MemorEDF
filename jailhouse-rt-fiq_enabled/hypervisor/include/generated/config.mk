$(foreach config,$(filter CONFIG_%, $(.VARIABLES)), $(eval undefine $(config)))
CONFIG_MACH_ZYNQMP_ZCU102=y
CONFIG_TRACE_ERROR=y
CONFIG_ARM_GIC_V2=y
