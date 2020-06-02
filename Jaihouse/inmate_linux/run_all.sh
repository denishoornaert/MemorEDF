#!/bin/bash

### Sequence of experiments ###
seq_obs=$(seq 1 6)
#seq_bomb=$(seq 7 -1 2;  echo -e "3\n2\n2\n2\n1\n1\n1\n8\n8\n16")
#seq_rbomb=$(seq 1 6; echo -e "3\n2\n2\n2\n1\n1\n1\n8\n8\n16")
seq_bomb=$(seq 1 6)
seq_rbomb=$(echo -e "4000\n3000\n0f00\n00ff\n8000\nffff")

kern_image=$(pwd)/Image_large
rootfs_image=$(pwd)/rootfs.cpio.automated.nofullhd
jh_path=/home/root/jailhouse_PL
out_dtb=$(pwd)/inmate_linux.dtb
bombs_alive=$(pwd)/bombs_alive.sh
root_bomb=$(pwd)/rootcell_hpm0_bomb

solo=0

trap kill_rbomb INT

function kill_rbomb() {
    echo "Killing rootbomb"
    killall -9 rootcell_hpm0_bomb
    jailhouse disable
    rmmod jailhouse
    exit
}

declare -a runs_obs
for i in $seq_obs
do
    runs_obs+=($i)
done

declare -a runs_bomb
for i in $seq_bomb
do
    runs_bomb+=($i)
done

declare -a runs_rbomb
for i in $seq_rbomb
do
    runs_rbomb+=($i)
done

cd $jh_path
insmod driver/jailhouse.ko

if [ "$?" != "0" ]
then
    echo "Unable to load jailhouse module. Is it already loaded?"
    exit
fi
\
jailhouse enable configs/arm64/rtas_root.cell

for i in $seq_obs
do
    cur_obs=${runs_obs[i-1]}
    cur_bomb=${runs_bomb[i-1]}
    cur_rbomb=${runs_rbomb[i-1]}

    echo "========================================================"
    echo "STARTING RUN:"
    echo $cur_obs
    echo $cur_rbomb
    echo $cur_bomb
    echo $cur_bomb
    echo

    cd $jh_path
    
    ## Reset flag for experiment synch ##
    devmem 0x801010000 32 0xCC

    if [ $solo -eq 0 ]
    then
	jailhouse cell create configs/arm64/rtas_"$cur_bomb"_membomb1.cell
	jailhouse cell create configs/arm64/rtas_"$cur_bomb"_membomb2.cell
	jailhouse cell load 1 inmates/demos/arm64/mem-demo.bin
	jailhouse cell load 2 inmates/demos/arm64/mem-demo.bin
	jailhouse cell start 1
	jailhouse cell start 2
	
	jailhouse cell alt 1 2
	jailhouse cell alt 2 2

	#### START ROOT BOMB ####
	if [ $i -eq 5 ]
	then
	    $root_bomb 4801020000 0 2 1 0 99999999 $cur_rbomb 0 &
	else
	    $root_bomb 1001020000 0 2 1 0 99999999 $cur_rbomb 0 &
	fi
    fi
    
    # Now starting the Linux non-root cell
    jailhouse cell linux configs/arm64/rtas_"$cur_obs"_obs.cell $kern_image \
	      -d configs/arm64/dts/rtas.dtb -i $rootfs_image \
	      -c "console=ttyPS0,115200 ramdisk_size=10000000"

    if [ $solo -eq 0 ]
    then
	jailhouse cell alt 3 1
    else
	jailhouse cell alt 1 1
    fi
	
    expdone=$(devmem 0x801010000 32)
    while [ "$expdone" != "0x000000DD" ]
    do
	sleep 1
	if [ $solo -eq 0 ]
	then
	    $bombs_alive | grep "NOT ALIVE"
	fi
	expdone=$(devmem 0x801010000 32)
    done

    jailhouse cell destroy 1
    
    if [ $solo -eq 0 ]
    then
	#### KILL ROOT BOMB ####
	killall -9 rootcell_hpm0_bomb

	### Time to clean up ###
	jailhouse cell destroy 2
	jailhouse cell destroy 3    
    fi

    cd -
    
done

jailhouse disable
rmmod jailhouse
