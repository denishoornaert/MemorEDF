#!/bin/bash

jh_path=/home/root/jailhouse-rt
comm_base=0x820000000
off=0

for i in $(seq 1 3)
do
    $jh_path/tools/jailhouse cell destroy $i
done

echo "LIST OF CELLS:"
$jh_path/tools/jailhouse cell list

