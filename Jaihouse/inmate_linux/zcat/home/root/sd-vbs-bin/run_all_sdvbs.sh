#!/bin/bash
#This code runs all sdvbs benchmarks except multi-ncat which takes too long
#Writing a Flag indicating Run in progress

echo "=================================================================="
echo "=================================================================="
echo "=================================================================="

devmem 0x800000000 32 0xBE
bms=$(find ./* -type d -maxdepth 0 -exec basename {} \;)
runs=30
topdir=$(pwd)

for b in $bms
do
    #echo "RUNNING $b"
    if [ "$b" == "multi_ncut" ]
    then
	#echo " Skipping multi_ncut"

	continue
    fi
    #       cd $pwd
    cd $b/data/
    dataset=$(ls .)

    for d in $dataset
    do

	if [ "$d" == "fullhd" ]
	then
	    #echo " Skipping multi_ncut"
	    continue
	fi
	
	cd $d
	for i in $(seq $runs)
	do
	    res=$(./$b . | grep Cycles | awk '{print $4}')
	    echo "$b; $d; $i; $res"
	done
	cd ..
    done
    cd ../..
    done
#Writing a Flag indicating Run Finished
devmem 0x800000000 32 0xDD

echo "=================================================================="
echo "=================================================================="
echo "=================================================================="
