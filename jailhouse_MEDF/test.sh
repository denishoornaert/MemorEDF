#!/bin/bash

devmem2 0x40053000 w 0x091
devmem2 0x40053010 w 0x033
devmem2 0x40053000 w 0x090

devmem2 0x40053038 w 0x65656565

cp hypervisor/jailhouse.bin /lib/firmware
insmod driver/jailhouse.ko

tools/jailhouse enable configs/arm64/s32v234sbc.cell
