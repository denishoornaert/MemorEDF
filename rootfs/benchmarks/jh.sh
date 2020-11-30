#!/bin/bash

jh_path=/home/root/jailhouse-rt

cp $jh_path/hypervisor/jailhouse.bin /lib/firmware/jailhouse.bin

insmod $jh_path/driver/jailhouse.ko

$jh_path/tools/jailhouse enable $jh_path/configs/arm64/schim-root.cell

