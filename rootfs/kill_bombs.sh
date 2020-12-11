#!/bin/bash

source jailhouse.config

off=0

for i in $(seq 1 2)
do
    $jh_path/tools/jailhouse cell destroy $i
done

echo "LIST OF CELLS:"
$jh_path/tools/jailhouse cell list
