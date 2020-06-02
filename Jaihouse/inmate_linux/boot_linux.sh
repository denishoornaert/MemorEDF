#!/bin/bash
kern_image=$(pwd)/Image_large
rootfs_image=$(pwd)/rootfs.cpio.bkp
jh_path=/home/root/jailhouse_PL
out_dtb=$(pwd)/inmate_linux.dtb
bombs_alive=$(pwd)/bombs_alive.sh
root_bomb=$(pwd)/rootcell_hpm0_bomb


cd $jh_path
insmod driver/jailhouse.ko
jailhouse enable configs/arm64/rtas_root.cell
echo "========================================================"
echo "===  Now starting the Linux non-root cell on PS  ======="
echo "========================================================"
jailhouse cell linux configs/arm64/rtas_obs.cell $kern_image \
	      -d configs/arm64/dts/rtas.dtb -i $rootfs_image \
	      -c "console=ttyPS0,115200 ramdisk_size=10000000"
echo "========================================================"
echo "=== Now re-directing the Linux non-root cell to PL ====="
echo "========================================================"
jailhouse cell alt 1 1

