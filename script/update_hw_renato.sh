#!/bin/bash

# This script will update the BOOT.BIN and Image in
# the boot partition of this machine. Use carefully.
# Author: Renato Mancuso (BU)

remote_user="renato"
remote_ip="128.197.10.172"
remote_path=BOOT/
local_path=/run/media/mmcblk0p1/

files="BOOT.BIN Image"

mkdir __bootfiles 2>/dev/null

# Create a command to transfer all files in a single scp batch
to_scp=\{
for f in $files
do
	to_scp=$to_scp$f,
done
to_scp=${to_scp%,}\}

echo "Fetching remote files from $remote_ip (user = $remote_user)"
scp $remote_user@$remote_ip:$remote_path$to_scp __bootfiles/

if [ $? != "0" ]
then
	echo "An error occurred while transferring files. Exiting."
	exit
fi

# Files are now on the local machine. Let's proceed

for f in $files
do
	echo "Now updating: [$f]"
	old_md5=$(cat $local_path/$f | md5sum)
	new_md5=$(cat __bootfiles/$f | md5sum)

	if [ "$old_md5" == "$new_md5" ]
	then
		echo "WARNING: remote file $f is identical to current version."
	fi
	
	cp __bootfiles/$f $local_path/$f
	
done

echo "Copy complete. Sync'ing disks."
sync
echo "All done. Safe to reboot."

