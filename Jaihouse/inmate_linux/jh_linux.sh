#!/bin/bash

## This script automates some of the steps to launch the linux demo
## via jailhouse. The correct path to the kernel image and rootfs
## image should be provided.

## Author: Shahin
## Date: Aug 28 2019

kern_image=$(pwd)/Image
kern_image=$(pwd)/Image_large

rootfs_image=$(pwd)/rootfs.cpio
jh_path=/home/root/jailhouse_PL
out_dtb=$(pwd)/inmate_linux.dtb

cd $jh_path
insmod driver/jailhouse.ko

if [ "$?" != "0" ]
then
    echo "Unable to load jailhouse module. Is it already loaded?"
fi

jailhouse enable configs/arm64/rtas_root.cell

# Now starting the Linux non-root cell
jailhouse cell linux configs/arm64/rtas_16_obs.cell $kern_image -d configs/arm64/dts/rtas.dtb -i $rootfs_image -c "console=ttyPS0,115200 ramdisk_size=10000000"

cd -
