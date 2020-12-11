#!/bin/bash

./config_schim_tdma.out $1 $2 $3 $4 $5 $6 $7 $8

source jailhouse.config

off=0
for i in $(seq 0 2)
do
$jh_path/tools/jailhouse cell create $jh_path/configs/arm64/zynqmp-zcu102-bomb"$i"-col.cell
$jh_path/tools/jailhouse cell load --name "col-mem-bomb-$i" $jh_path/inmates/demos/arm64/mem-bomb.bin
devmem $((comm_base + off)) 32 $(((i+1) * 16))
off=$((off + 4096))
$jh_path/tools/jailhouse cell start --name "col-mem-bomb-$i"
done
echo "LIST OF CELLS:"
$jh_path/tools/jailhouse cell list
