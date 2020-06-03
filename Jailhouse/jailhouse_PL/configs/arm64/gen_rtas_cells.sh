#!/bin/bash

for i in $(seq 1 6)
do
    target="rtas_""$i""_obs.c"
    cp rtas_obs.c $target
    ls -l $target
    sed -i "s/\/\*###ALT_COL###\*\//#define ALT_COL $i/g" $target
done

for b in $(seq 1 2)
do
    for i in $(seq 1 6)
    do
	target="rtas_""$i""_membomb$b.c"
	cp rtas_membomb$b.c $target
	ls -l $target
	sed -i "s/\/\*###ALT_COL###\*\//#define ALT_COL $i/g" $target
    done
done
