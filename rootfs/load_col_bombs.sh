#!/bin/bash

set -e
source jailhouse.config
source experiences/profile.config

prefix=-col

if [ $mode = "main-route" ]; then
    prefix=-col-main-route
elif [ $mode = "dual-slave" ]; then
    prefix=-col-dual-slave-cached
elif [ $mode = "simple-loop-back" ]; then
    prefix=-col-simple-loop-back
else
    echo "No mode matching! (Abort)"
    exit 1
fi

off=0

for i in $(seq $first_bomb $last_bomb)
do
    sleep 1
    $jh_path/tools/jailhouse cell create $jh_path/configs/arm64/schim-bomb"$i""$prefix".cell
    $jh_path/tools/jailhouse cell load --name "col-mem-bomb-$((i-1))" $jh_path/inmates/demos/arm64/mem-bomb.bin
    devmem $((comm_base + off)) 32 $((i * 16))
    off=$((off + 4096))
    $jh_path/tools/jailhouse cell start --name "col-mem-bomb-$((i-1))"
done

echo "LIST OF CELLS:"
$jh_path/tools/jailhouse cell list
