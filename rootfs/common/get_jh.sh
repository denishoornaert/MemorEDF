#!/bin/bash

# This script is designed to install JH on the target board
# Authors: Renato Mancuso, Denis Hoornaert
# Date: 10th of December 2020

source common/jailhouse.config

cd $jh_path
cp driver/jailhouse.ko /lib/modules/$(uname -r)/
cp tools/jailhouse /bin
cp tools/jailhouse-cell-linux /bin

mkdir -p /lib/firmware
cp hypervisor/jailhouse.bin /lib/firmware
cd -
