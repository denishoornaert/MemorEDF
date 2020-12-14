#!/bin/bash

source common/jailhouse.config

cp $jh_path/hypervisor/jailhouse.bin /lib/firmware/jailhouse.bin

insmod $jh_path/driver/jailhouse.ko

if [ "$?" != "0" ]
then
    echo "Unable to load jailhouse module. Is it already loaded?"
fi

$jh_path/tools/jailhouse enable $jh_path/configs/arm64/schim-root.cell
