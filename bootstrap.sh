cp -r /run/media/mmcblk0p2/home/root/benchmarks/ ~/
cp -r /run/media/mmcblk0p2/home/root/brainfreeze/ ~/
cp -r /run/media/mmcblk0p2/home/root/common/ ~/
cp -r /run/media/mmcblk0p2/home/root/experiences/ ~/
cp -r /run/media/mmcblk0p2/home/root/synthetic/ ~/
cp -r /run/media/mmcblk0p2/home/root/threshold/ ~/
mkdir -p /lib/firmware/
cp -r /run/media/mmcblk0p2/home/root/jailhouse-rt/hypervisor/jailhouse.bin /lib/firmware/
mkdir -p ~/jailhouse-rt/driver/
cp -r /run/media/mmcblk0p2/home/root/jailhouse-rt/driver/jailhouse.ko ~/jailhouse-rt/driver/
mkdir -p ~/jailhouse-rt/tools/
cp -r /run/media/mmcblk0p2/home/root/jailhouse-rt/tools/jailhouse ~/jailhouse-rt/tools/
mkdir -p ~/jailhouse-rt/inmates/demos/arm64/
cp -r /run/media/mmcblk0p2/home/root/jailhouse-rt/inmates/demos/arm64/mem-bomb.bin ~/jailhouse-rt/inmates/demos/arm64/
mkdir -p ~/jailhouse-rt/configs/arm64/
cp -r /run/media/mmcblk0p2/home/root/jailhouse-rt/configs/arm64/schim-rootcol-dual-slave-cached.cell  ~/jailhouse-rt/configs/arm64/
cp -r /run/media/mmcblk0p2/home/root/jailhouse-rt/configs/arm64/schim-bomb1-col-dual-slave-cached.cell  ~/jailhouse-rt/configs/arm64/
cp -r /run/media/mmcblk0p2/home/root/jailhouse-rt/configs/arm64/schim-bomb2-col-dual-slave-cached.cell  ~/jailhouse-rt/configs/arm64/
cp -r /run/media/mmcblk0p2/home/root/jailhouse-rt/configs/arm64/schim-bomb3-col-dual-slave-cached.cell  ~/jailhouse-rt/configs/arm64/
cp -r /run/media/mmcblk0p2/home/root/jailhouse-rt/configs/arm64/schim-rootcol-main-route.cell  ~/jailhouse-rt/configs/arm64/
cp -r /run/media/mmcblk0p2/home/root/jailhouse-rt/configs/arm64/schim-bomb1-col-main-route.cell  ~/jailhouse-rt/configs/arm64/
cp -r /run/media/mmcblk0p2/home/root/jailhouse-rt/configs/arm64/schim-bomb2-col-main-route.cell  ~/jailhouse-rt/configs/arm64/
cp -r /run/media/mmcblk0p2/home/root/jailhouse-rt/configs/arm64/schim-bomb3-col-main-route.cell  ~/jailhouse-rt/configs/arm64/
cp /run/media/mmcblk0p2/home/root/launch_benchmarks.sh ~/
cp /run/media/mmcblk0p2/home/root/launch_fp_benchmarks.sh ~/

umount /run/media/mmcblk0p1/
umount /run/media/mmcblk0p2/

./common/config_schim_fp.out 0c0d0e0f 0 0 0 0

cd jailhouse-rt/

insmod driver/jailhouse.ko

./tools/jailhouse enable configs/arm64/schim-rootcol-dual-slave-cached.cell
./tools/jailhouse cell list

cd ../

source ~/common/jailhouse.config
cp ~/experiences/synthetic/fp_schim.config ~/experiences/profile.config
./common/load_col_bombs.sh
