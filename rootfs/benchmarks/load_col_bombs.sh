#!/bin/bash

jh_path=/home/root/jailhouse-rt
comm_base=0x060700000
off=0

for i in $(seq 1 2)
do
    sleep 1
    $jh_path/tools/jailhouse cell create $jh_path/configs/arm64/schim-bomb"$i"-col.cell
    $jh_path/tools/jailhouse cell load --name "col-mem-bomb-$((i-1))" $jh_path/inmates/demos/arm64/mem-bomb.bin
    devmem $((comm_base + off)) 32 $((i * 16))
    off=$((off + 4096))
    $jh_path/tools/jailhouse cell start --name "col-mem-bomb-$((i-1))" 
done

echo "LIST OF CELLS:"
$jh_path/tools/jailhouse cell list

