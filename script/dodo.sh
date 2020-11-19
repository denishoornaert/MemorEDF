

zip -r ~/Desktop/Bleach/ip_repo.zip /home/renato/ip_repo
zip -r ~/Desktop/Bleach/Zynq_BitDropper.zip /home/renato/Zynq_BitDropper

#zip -r ~/Desktop/Bleach.zip /home/renato/Desktop/Bleach
 

rm /media/renato/BOOT/*
sudo rm -rf /media/renato/rootFS/*
cd ~/Desktop/Bleach/lnx_jh/
sudo apt-get install -y gcc-multilib 
source /home/renato/opt/petalinux/settings.sh 
#petalinux-build -x mrproper
#petalinux-build 
petalinux-package --boot --fsbl build/tmp/deploy/images/plnx_aarch64/fsbl-plnx_aarch64.elf --fpga ../HDF/DropLator.bit --pmufw build/tmp/deploy/images/plnx_aarch64/pmu-plnx_aarch64.elf  --u-boot build/tmp/deploy/images/plnx_aarch64/u-boot.elf --force
cp ~/Desktop/Bleach/lnx_jh/images/linux/Image ~/Desktop/Bleach/lnx_jh/images/linux/BOOT.BIN  /media/renato/BOOT/
cp ~/Desktop/Bleach/ZYNQ_2016_repository/zcu102/system.dtb /media/renato/BOOT/
cd ~/Desktop/Bleach/jailhouse/

sudo apt-get install -y gcc-aarch64-linux-gnu
sudo make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- KDIR=../lnx_jh/build/tmp/work/plnx_aarch64-xilinx-linux/linux-xlnx/4.9-xilinx-v2017.3+git999-r0/linux-xlnx-4.9-xilinx-v2017.3+git999/ DESTDIR=/media/renato/rootFS/JH install
sudo cp -r ~/Desktop/Bleach/jailhouse/ /media/renato/rootFS/


cd ~/Desktop/Bleach/jailhouse_PL/
#sudo apt-get install gcc-aarch64-linux-gnu
sudo make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- KDIR=../lnx_jh/build/tmp/work/plnx_aarch64-xilinx-linux/linux-xlnx/4.9-xilinx-v2017.3+git999-r0/linux-xlnx-4.9-xilinx-v2017.3+git999/ DESTDIR=/media/renato/rootFS/JH_PL install
sudo cp -r ~/Desktop/Bleach/jailhouse_PL/ /media/renato/rootFS/


sudo cp ~/Desktop/Bleach/lnx_jh/images/linux/rootfs.cpio /media/renato/rootFS/
cd /media/renato/rootFS
sudo pax -rvf rootfs.cpio
sudo cp ~/Desktop/Bleach/*.sh /media/renato/rootFS/home/root/
sudo cp -r ~/Desktop/Bleach/Scripts/ /media/renato/rootFS/home/root/
sudo cp -r ~/Desktop/Bleach/memguard-release/list.h /media/renato/rootFS/home/root/
sudo mkdir  /media/renato/rootFS/home/root/Results/
#sudo cp ~/Desktop/Bleach/jh_run.sh /media/renato/rootFs/home/root/

sync
#sudo minicom -s -D /dev/ttyUSB0

