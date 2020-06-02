#!/bin/bash

theuser=renato
user=$(id -u)
loc=/home/$theuser/MemorEDF_old/lnx_memoredf
dest=/home/$theuser/BOOT
targ_user=root
param=$1
shift

cp_opt=""
#Uncomment the following for verbose copy output
#cp_opt="-v"

if [ $user != "0" ]
then
    echo "Please run this script as root."
    exit
fi

#echo  "Fetching HDF files from Florida! --- Thank you COVID-19 :) "
#bash fetch_hardware_from_FL.sh


echo -n "Removing old files... "
rm -rvf $dest/*
echo "Done"

cd $loc

dpkg_res=$(dpkg -l gcc-multilib)
if [ $? == "1" ]
then

    apt-get install -y gcc-multilib
fi
echo "Invoking Petalinux..."
source /home/$theuser/opt/petalinux/settings.sh
petalinux-package --boot --fsbl build/tmp/deploy/images/plnx_aarch64/fsbl-plnx_aarch64.elf --fpga ../HDF_APMTEST/APM.bit --pmufw build/tmp/deploy/images/plnx_aarch64/pmu-plnx_aarch64.elf --u-boot build/tmp/deploy/images/plnx_aarch64/u-boot.elf --force

#petalinux-package --boot --fsbl build/tmp/deploy/images/plnx_aarch64/fsbl-plnx_aarch64.elf --fpga ../HDF_APM/apm_test.bit --pmufw build/tmp/deploy/images/plnx_aarch64/pmu-plnx_aarch64.elf --u-boot build/tmp/deploy/images/plnx_aarch64/u-boot.elf --force

echo "Done Packaging"

# If -l is specified as first parameter, then only copy boot files to local folder
if [ "$param" == "-l" ]
then
    cp $cp_opt $loc/images/linux/Image  $loc/images/linux/BOOT.BIN $loc/images/linux/system.dtb  $dest
    echo "Boot files written to $dest."
    ls -l $dest/BOOT.BIN $dest/Image $dest/system.dtb
fi
echo " Remember to hack the .dtb file in $loc/images/linux/ directory if you want uart1 to work"
sync
