#!/bin/bash
# This script is designed to test JH on the target board
# NOTE THAT THIS WORKS WITH ZYNC_2016 system.dtb 
# Output will be displayed on the second UART which should be open in another serial terminal.
# Author: Shahin
# Date: Dec 2019

cd jailhouse
insmod driver/jailhouse.ko
jailhouse enable configs/arm64/zynqmp-zcu102.cell
jailhouse cell create configs/arm64/zynqmp-zcu102-gic-demo.cell
jailhouse cell load 1 inmates/demos/arm64/gic-demo.bin
jailhouse cell start 1
