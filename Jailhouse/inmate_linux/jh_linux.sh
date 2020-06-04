#!/bin/bash
## This script is meant to be run on ZYNQ board, while larg files provided
## in a seperate folder on the board. Note that those large files are not
## pushed to the git repo and could be found on zcu3 machine: 128.197.10.176

## This script automates some of the steps to launch the linux demo
## via jailhouse. The correct path to the kernel image and rootfs
## image should be provided.

## Author: Shahin
## Date: Aug 28 2019
large_files_dir=/home/root/inmate_imgs
kern_image=$large_files_dir/Image
kern_image=$large_files_dir/Image_large

rootfs_image=$large_files_dir/rootfs.cpio
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
jailhouse cell linux configs/arm64/rtas_obs.cell $kern_image -d configs/arm64/dts/rtas.dtb -i $rootfs_image -c "console=ttyPS0,115200 ramdisk_size=10000000"

cd -
