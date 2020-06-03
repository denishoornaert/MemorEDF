i#!/bin/bash
# This program fetches the petalinux-generated .dtb file
# from <petalinux-proj>/image/linux and reverse compiles it

param=$1
shift


loc="/home/renato/MemorEDF_old/DTB_HACK"
echo "+++++++++++++++  cleaning old files"

if [ "$param" == "-s" ]
then
    echo -e " user passed -s, meaning fetching petalinux.dtb\nfrom the scatch\n\n"
    rm -v $loc/system.dt*
    echo "+++++++++++++++  fetching petalinux-created dtb"
    cp ~/MemorEDF_old/lnx_memoredf/images/linux/system.dtb ./system.dtb.org 
    echo "+++++++++++++++  creating dts out of dtb"
    dtc -O dts -I dtb -o system.dts.reversed system.dtb.org
fi

if [ "$param" == "-l" ]
then
    echo -e " user passed -l, meaning fetching petalinux.dtb\nfrom the scatchwe eddit existing files\n\n"
    rm -v $loc/system.dtb*

fi

echo "+++++++++++++++  openning emacs to eddit"
emacs -nw system.dts.reversed
echo "+++++++++++++++  closing emacs, creating hacked dtb"
dtc -O dtb -I dts -o system.dtb.hacked system.dts.reversed


echo -e "remember this program creates system.dtb.reversed automatically \nonce you close emcas (C-x X-c)"
