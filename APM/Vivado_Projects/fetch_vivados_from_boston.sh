#!/bin/bash
# This script syncs the latest vivado project from Oosa Laptop [This Laptop] to the renato_PC in Boston who is in charge of synthesizing the Vivado design and generating the HDF file and bitstread(.bit) renato IP: 128.197.10.172
#
#

theuser="ro0zkhosh"
remote_user="renato"
remote_IP="128.197.10.172"
remote_vivado_dir="/home/$remote_user/MemorEDF_old/Vivado_Projects"
local_dest="/home/$theuser/MemorEDF/Vivado_Projects"
files="APM_TRACE"
user=$(id -u)





for f in $files
do
    echo -n "fetching files..."
    scp -rv $remote_user@$remote_IP:$remote_vivado_dir/${f}_Synthesized.tar.gz $local_dest 2>null
    echo -n "Done."
    md5sum $local_dest/${f}_Synthesized.tar.gz
    read -p 'are the above checksums are as expected? Y/N :' ans
    if [ $ans == 'Y' ] || [ $ans == 'y' ]
    then
        echo -n "Extracting new files...."
	tar -xzf $local_dest/${f}_Synthesized.tar.gz
	echo "Done :-)"
    else
	echo "Depriciated file.. Transfer again"
    fi
done
