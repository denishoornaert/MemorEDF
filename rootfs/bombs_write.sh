#!/bin/bash

jh_path=/home/root/jailhouse-rt
comm_base=0x820000000
off=0

size=0x400000
verbose=0
mg_budget=0

while getopts "s:vm:" options
do
	case "${options}" in 
	s) 
	   size=${OPTARG}
	   ;;
	v)
	   verbose=1
	   ;;
	m) 
    	   mg_budget=${OPTARG}
	   ;;
	esac
done

for i in $(seq 0 2)
do
    # Stop any activity in the mem. bomb
    devmem $((comm_base + off)) 32 0
    devmem $((comm_base + off + 4)) 32 $size
    devmem $((comm_base + off + 8)) 32 $mg_budget
    usleep 500000

    if [ "$verbose" == "1" ]
    then
    	devmem $((comm_base + off)) 32 0x0d
	usleep 500000
    else
        devmem $((comm_base + off)) 32 0x5 
    fi
    off=$((off + 4096))
done


