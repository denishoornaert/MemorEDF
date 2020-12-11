#!/bin/bash

source jailhouse.config

cd $jh_path

$jh_path/tools/jailhouse cell linux $jh_path/configs/arm64/schim-linux-inmate-col.cell ../inmate_imgs/Image.inmate -d $jh_path/configs/arm64/dts/inmate-zynqmp-1c.dtb -i $img_path/rootfs.cpio.auto.sudo -c "console=ttyPS0,115200" -k13
