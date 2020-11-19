ifconfig eth0 down
ifconfig eth0 hw ether 00:0A:35:00:22:11
ifconfig eth0 up

udhcpc eth0 -v

