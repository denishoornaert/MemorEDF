#!/bin/bash
# Author: Shahin
# Date: Jan 2020
#This script should be performed on the rootfs.cpio.orig which is the original filen created by petalinux in initramfs boot mode.
#The content would be extracted in tmp test directory

sudo rm -rf tmp
mkdir tmp
cp rootfs.cpio.orig tmp/
cd tmp
cpio -i -d -H newc -F rootfs.cpio.orig --no-absolute-filenames
rm rootfs.cpio.orig
cd -
