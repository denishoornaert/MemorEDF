mount /dev/mmcblk0p1 /media/
mkdir -p /lib/firmware
echo 0 > /sys/class/fpga_manager/fpga0/flags
cp /media/design_2_wrapper.bit.bin /lib/firmware/
echo design_2_wrapper.bit.bin > /sys/class/fpga_manager/fpga0/firmware
