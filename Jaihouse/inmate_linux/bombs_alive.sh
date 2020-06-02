#!/bin/bash


bomb1_start=$(devmem 0x870401000 32)
bomb2_start=$(devmem 0x878401000 32)

sleep 1 

bomb1_end=$(devmem 0x870401000 32)
bomb2_end=$(devmem 0x878401000 32)

echo -n "BOMB 1: "
if [ "$bomb1_start" != "$bomb1_end" ]
then
	echo "ALIVE"
else
	echo "NOT ALIVE"
fi

echo -n "BOMB 2: "
if [ "$bomb2_start" != "$bomb2_end" ]
then	
	echo "ALIVE"
else
	echo "NOT ALIVE"
fi

bomb_pid=$(pidof rootcell_hpm0_bomb)

echo -n "ROOT BOMB: "
if [ "$bomb_pid" != "" ]
then
    echo "ALIVE"
else
    echo "NOT ALIVE"
fi
