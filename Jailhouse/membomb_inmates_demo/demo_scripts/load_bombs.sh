#!/bin/bash

jh_path=/home/root/jailhouse-rt
comm_base=0x820000000
off=0

for i in $(seq 0 2)
do
    $jh_path/tools/jailhouse cell create $jh_path/configs/arm64/zynqmp-zcu102-bomb"$i".cell
    $jh_path/tools/jailhouse cell load --name "mem-bomb-$i" $jh_path/inmates/demos/arm64/mem-bomb.bin
    devmem $((comm_base + off)) 32 $(((i+1) * 16))
    off=$((off + 4096))
    $jh_path/tools/jailhouse cell start --name "mem-bomb-$i" 
done

echo "LIST OF CELLS:"
$jh_path/tools/jailhouse cell list

