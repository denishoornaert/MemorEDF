jh_path=/home/root/jailhouse_PL
inmate=/home/root/inmate_linux
loader=$jh_path/build/usr/local/libexec/jailhouse/linux-loader.bin

cd $jh_path

jailhouse cell create configs/arm64/zynqmp-zcu102-linux-demo.cell

jailhouse cell load ZynqMP-linux-demo $loader -a 0x0 -s "kernel=0x810280000 dtb=0x810000000" -a 0x1000 $inmate/Image -a 0x810280000 $inmate/rootfs.cpio -a 0x811cc2000 $inmate/inmate_linux.dtb -a 0x810000000

#jailhouse cell load ZynqMP-linux-demo $loader -a 0x0 -s "kernel=0x810280000 dtb=0x810000000" -a 0x1000 $inmate/Image_large -a 0x810280000 $inmate/rootfs.cpio -a 0x817a42000 $inmate/inmate_linux.dtb -a 0x810000000

jailhouse cell start ZynqMP-linux-demo

