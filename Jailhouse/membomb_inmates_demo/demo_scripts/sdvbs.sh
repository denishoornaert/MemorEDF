#!/bin/bash

bm=$1
size="cif"
sd_path=/home/root/sd-vbs-bin/$bm/data/$size/

echo "Running $bm on input size $size"
$sd_path/$bm $sd_path

