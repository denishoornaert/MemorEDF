# MemorEDF-Demonstration

## Organization

 - ```ARM-Trusted-Firmware-FIQ/``` contains the custom (and required) ARM ATF version
 - ```Petalinux-v2018.3/``` contains the patched sources of the Linux kernel used
 - ```jailhouse-rt/``` contains the custom jailhouse-rt images
 - ```doc/``` isolate pieces of documentations
 - ```boot/``` pre-built version of Linux and bitstream
 - ```rootfs/``` pre-compiled version of the home directory required for the experiments
 - ```init_submodules.sh``` script in charge of recursively clone the sub-repositories
 - ```quick_deploy.sh``` script to ease the deployment. Currently copy around the programs from demo

## Requirements

 - Petalinux 2018.3
 - SD card with a boot partition of at least 1GB and and a root partition
 - A Xilinx ZCU102

## Setting-up

At first time, run
```bash
./init_submodules.sh
```

Setting up the rootfs can be done with
```bash
./quick_deploy.sh
```
