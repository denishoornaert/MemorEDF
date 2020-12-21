#!/bin/bash
set -e

source ~/common/jailhouse.config
source ~/experiences/profile.config

prefix=-col

if [ "$mode" = "main-route" ]; then
    prefix=-col-main-route
elif [ "$mode" = "dual-slave" ]; then
    prefix=-col-dual-slave-cached
elif [ "$mode" = "simple-loop-back" ]; then
    prefix=-col-simple-loop-back
else
    echo "No target matching! (Abort)"
    exit 1
fi

cd $jh_path

$jh_path/tools/jailhouse cell linux $jh_path/configs/arm64/schim-linux-inmate${prefix}.cell $img_path/Image.inmate -d $jh_path/configs/arm64/dts/inmate-zynqmp-1c.dtb -i $img_path/rootfs.cpio.auto.sudo -c "console=ttyPS0,115200" -k13
