cd jailhouse_PL

insmod driver/jailhouse.ko
jailhouse enable configs/arm64/zynqmp-zcu102-col.cell
jailhouse cell create configs/arm64/zynqmp-zcu102-demo-col.cell
jailhouse cell load 1 inmates/demos/arm64/gic-demo.bin


