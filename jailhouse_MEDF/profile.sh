#!/bin/bash

devmem2 0x40053000 w 0x091
devmem2 0x40053010 w 0x033
devmem2 0x40053000 w 0x090

devmem2 0x40053038 w 0x65656565

cp hypervisor/jailhouse.bin /lib/firmware
insmod driver/jailhouse.ko

tools/jailhouse enable configs/arm64/s32v234sbc-rootprof.cell

sleep 2

while true; do
    read -p "Continue with cell creation?" yn
    case $yn in
	[Yy]* ) tools/jailhouse cell create configs/arm64/s32v234sbc-prof.cell
		tools/jailhouse cell load 1 inmates/demos/arm64/profiler.bin -s "con-type=JAILHOUSE" -a 0x1000	    
		break;;
	[Nn]* ) exit;;
	* ) echo "Please answer yes or no.";;
    esac
done

