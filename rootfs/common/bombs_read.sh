#!/bin/bash

source ~/common/jailhouse.config
source ~/experiences/profile.config

off=0

size=0x400000
verbose=1
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

for i in $(seq $first_bomb $last_bomb)
do
    # Stop any activity in the mem. bomb

    if [ "$verbose" == "1" ]
    then
    	devmem $((comm_base + off)) 32 8
    else
    	devmem $((comm_base + off)) 32 0
    fi

    devmem $((comm_base + off + 4)) 32 $size
    devmem $((comm_base + off + 8)) 32 $mg_budget
    usleep 500000

    if [ "$verbose" == "1" ]
    then
    	devmem $((comm_base + off)) 32 0x0b
	usleep 500000
    else
        devmem $((comm_base + off)) 32 0x3
    fi
    off=$((off + 4096))
done
