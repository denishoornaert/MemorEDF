#!/bin/bash

source common/jailhouse.config
source experiences/profile.config

off=0

for i in $(seq $first_bomb $last_bomb)
do
    $jh_path/tools/jailhouse cell destroy $i
done

echo "LIST OF CELLS:"
$jh_path/tools/jailhouse cell list
