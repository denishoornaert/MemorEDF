#!/bin/bash

for i in $(seq 1 1)
do
    target="rtas_$i_obs.c"
    cp rtas_obs.c $target
    ls -l $target
    sed "s/\/\*###ALT_COL###\*\//#define ALT_COL $i/g" $target
done
