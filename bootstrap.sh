mkdir -p /mnt/sd/

mount /dev/mmcblk0p2 /mnt/sd/

cp -r /mnt/sd/home/root/benchmarks/ ~/
cp -r /mnt/sd/home/root/brainfreeze/ ~/
cp -r /mnt/sd/home/root/common/ ~/
cp -r /mnt/sd/home/root/experiences/ ~/
cp -r /mnt/sd/home/root/synthetic/ ~/
cp -r /mnt/sd/home/root/threshold/ ~/
mkdir -p ~/jailhouse-rt/hypervisor/
cp -r /mnt/sd/home/root/jailhouse-rt/hypervisor/jailhouse.bin ~/jailhouse-rt/hypervisor/
mkdir -p ~/jailhouse-rt/driver/
cp -r /mnt/sd/home/root/jailhouse-rt/driver/jailhouse.ko ~/jailhouse-rt/driver/
mkdir -p ~/jailhouse-rt/tools/
cp -r /mnt/sd/home/root/jailhouse-rt/tools/jailhouse ~/jailhouse-rt/tools/
mkdir -p ~/jailhouse-rt/inmates/demos/arm64/
cp -r /mnt/sd/home/root/jailhouse-rt/inmates/demos/arm64/mem-bomb.bin ~/jailhouse-rt/inmates/demos/arm64/
mkdir -p ~/jailhouse-rt/configs/arm64/
cp -r /mnt/sd/home/root/jailhouse-rt/configs/arm64/schim-rootcol-dual-slave-cached.cell  ~/jailhouse-rt/configs/arm64/
cp -r /mnt/sd/home/root/jailhouse-rt/configs/arm64/schim-bomb1-col-dual-slave-cached.cell  ~/jailhouse-rt/configs/arm64/
cp -r /mnt/sd/home/root/jailhouse-rt/configs/arm64/schim-bomb2-col-dual-slave-cached.cell  ~/jailhouse-rt/configs/arm64/
cp -r /mnt/sd/home/root/jailhouse-rt/configs/arm64/schim-bomb3-col-dual-slave-cached.cell  ~/jailhouse-rt/configs/arm64/

umount /mnt/sd/

mkdir -p /lib/firmware/

cp ~/jailhouse-rt/hypervisor/jailhouse.bin /lib/firmware/

cd jailhouse-rt/

insmod driver/jailhouse.ko

./tools/jailhouse enable configs/arm64/schim-rootcol-dual-slave-cached.cell

./tools/jailhouse cell list

source common/jailhouse.config

cp ~/experiences/synthetic/fp_schim.config ~/experiences/profile.config

./common/load_col_bombs.sh
