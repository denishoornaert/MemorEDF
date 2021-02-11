# SD Card partitioning
**Remark:** These steps must be performed on the host computer.

**Warning:** In this section and the following, we assume that your SD card (or any other media) is referenced by ```/sda``` however, it is totally possible that it is referenced in another way such as ```sdb```, ```sdc``` and so on.

1. Unmount the drive ```sudo umount /dev/sda```
2. Type ```sudo fdisk /dev/sda``` and then ```p``` to check your current partition
3. Type ```n``` for creating a new partition, type ```p``` to make it a primary one, press ```enter``` 2 times and then enter ```+1G``` to allocate 1Gb of 'Linux' partition.
4. Make this partition bootable by entering ```a``` and press ```p``` to check whether it is in fact bootable.
5. Create a second partition in the sd card by entering ```n```, then ```p``` to create a primary one and then press ```enter``` three times to leave the partition number and sector entries blank.
6. Have a final check at your partitioning by entering ```p```.
7. WARNING! Press ```w``` to save your partitioning and exit the ```fdisk``` program.
8. Make ```/dev/sda1``` a ```FAT``` partition with ```sudo mkfs.vfat -F 32 -n boot /dev/sda1```
9. Make ```/dev/sda2``` a ```ext4``` partition with ```sudo mkfs.ext4 -L root /dev/sda2```
