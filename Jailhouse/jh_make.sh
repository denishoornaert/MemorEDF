#!/bin/bash
#
# This Script is meant to be run on zcu3 machine "ip:128.197.10.176" where a built petalinux project resides
# To run on other platforms, change the petalinux_build_lnx_loc to point to the proper location.
#
# Author: Shahin Volek Kako Roozkhosh



petalinux_build_lnx_loc=~/Cache_Bleaching/lnx_jh/build/tmp/work/plnx_aarch64-xilinx-linux/linux-xlnx/4.9-xilinx-v2017.3+gitAUTOINC+f1b1e077d6-r0/linux-plnx_aarch64-standard-build/
jailhouse_dir=jailhouse

cd $jailhouse_dir
sudo make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- KDIR=$petalinux_build_lnx_loc
cd -
