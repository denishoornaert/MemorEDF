#!/bin/bash

# This script is designed to transfer and install JH on the target board
# Author: Renato
# Date: Aug 2019

remote_loc=/home/zcu1023/Cache_Bleaching
remote_ip=128.197.10.176
remote_user=zcu1023
dirname=jailhouse_PL

rsync -r $remote_user@$remote_ip:$remote_loc/$dirname .

cd $dirname
cp driver/jailhouse.ko /lib/modules/$(uname -r)/
cp tools/jailhouse /bin
cp tools/jailhouse-cell-linux /bin

mkdir -p /lib/firmware
cp hypervisor/jailhouse.bin /lib/firmware
cd -

