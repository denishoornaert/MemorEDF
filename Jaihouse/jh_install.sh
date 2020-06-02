#!/bin/bash

# This script is designed to install JH on the target board
# Author: Shahin
# Date: Aug 2019

dirname=jailhouse_PL
cd $dirname
cp driver/jailhouse.ko /lib/modules/$(uname -r)/
cp tools/jailhouse /bin
cp tools/jailhouse-cell-linux /bin

mkdir -p /lib/firmware
cp hypervisor/jailhouse.bin /lib/firmware
cd -

