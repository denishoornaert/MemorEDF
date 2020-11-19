#!/bin/bash

# This script is designed to transfer and install JH on the target board
# Author: Renato
# Date: Aug 2019

#remote_loc=/home/ro0zkhosh/MemorEDF/jailhouse_MEDF
#remote_ip=192.168.254.50
#remote_user=ro0zkhosh
dirname=jailhouse-rt-fiq_enabled

#scp -r $remote_user@$remote_ip:$remote_loc/$dirname .

cd $dirname
cp driver/jailhouse.ko /lib/modules/$(uname -r)/
cp tools/jailhouse /bin
cp tools/jailhouse-cell-linux /bin

mkdir -p /lib/firmware
cp hypervisor/jailhouse.bin /lib/firmware
cd -
