#!/bin/bash
# This script syncs the latest vivado project from Oosa Laptop [This Laptop] to the renato_PC in Boston who is in charge of synthesizing the Vivado design and generating the HDF file and bitstread(.bit) renato IP: 128.197.10.172
#
#

theuser="ro0zkhosh"
remote_user="zcu1023"
remote_IP="128.197.10.176"
remote_vivado_dir="/home/$remote_user/MemorEDF/Vivado_Projects"
local_src="/home/$theuser/MemorEDF/Vivado_Projects"
files="APM_TRACE"
user=$(id -u)

param1=$1
param2=$2
shift

echo -n "Removing old compress files... "
for f in $files
do
    rm -v $f.tar.gz
done

echo -n "Creating new compress files..."
for f in $files
do
    tar -czf $f.tar.gz $f
done


# if [ $user != "0" ]
# then
#     echo "Please run this script as root."
#     exit
# fi
echo "performing md5sum check ..."
to_scp=\{
for f in $files
do
    md5sum $f".tar.gz"
done





# sudo rm -rv $local_dest/*
echo -n "sending files..."

scp -rv  *.tar.gz  $remote_user@$remote_IP:$remote_vivado_dir/ 2>null

echo "Done."
