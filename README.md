# MemorEDF-Demonstration

![Revison](https://img.shields.io/badge/Revision-1.0-yellow)
![Tested](https://img.shields.io/badge/Tested-Yes-green)
![Synthesisable](https://img.shields.io/badge/Synthesis-Yes-green)
![Deployed](https://img.shields.io/badge/Deployed-Yes-green)


## Organization

 - ```ARM-Trusted-Firmware-FIQ/``` contains the custom (and required) ARM ATF version
 - ```Petalinux-v2018.3/``` contains the patched sources of the Linux kernel used
 - ```jailhouse-rt/``` contains the custom jailhouse-rt images
 - ```doc/``` isolate pieces of documentations
 - ```boot/``` pre-built version of Linux and bitstream
 - ```rootfs/``` pre-compiled version of the home directory required for the experiments
 - ```init_submodules.sh``` script in charge of recursively clone the sub-repositories
 - ```quick_deploy.sh``` script to ease the deployment. Currently copy around the programs from demo [here](#quick-deploy-script)

## Requirements

 - A Xilinx ZCU102
 - Petalinux 2018.3
 - ZCU102 BSP version 2018.3
 - SD card with a boot partition of at least 1GB and and a root partition

## Setting-up
Run the following line in order to setup your local repository
```bash
./init_submodules.sh
```

### Petalinux
 1. Create a petalinux project
 2. Configure the petalinux project such that it considers our custom ATF and petalinux kernel
    ```bash
    petalinux-config
    ```
 3. Configure the kernel such that ```OVERLAYS``` and ```KALLSYMS``` flags are set. The exact path to activate the former is
 ```
General setup --->
        Configure standard kernel feature (expert users) --->
            Load all symbols for debbuging/ksymoops

 ```
 while the former is
 ```
Device Drivers --->
        Device Tree and Open Firmware support --->
            Device Tree overlays

 ```

### Remaining

 1. Modify the ```deploy.config``` file to suit your local configuration.

 2. Source Petalinux manually
```bash
source path/to/petalinux/settings.sh
```
**Remark:** this is only required when using the ```petalinux``` option of the ```quick_deploy``` [script](#quick-deploy-script).

 3. Make sure to be at the root folder of the project.

 4. Build the complete project and copy it to the SD-card with the following command
```bash
./quick_deploy.sh --petalinux build,package,copy --programs clean,build,copy --jailhouse clean,build,copy
```
**Remark:** the ```quick_deploy.sh``` can be used later on to independently build, clean or copy parts of the projects. Further information can be found [here](#quick-deploy-script).

## U-Boot configuration
### CPU-Brainfreeze
```
setenv bootargs "earlycon clk_ignore_unused earlyprintk mem=512M root=/dev/mmcblk0p2 rw rootwait"
setenv uenvcmd "fatload mmc 0 0x3000000 Image && fatload mmc 0 0x2A00000 system.dtb && booti 0x3000000 - 0x2A00000"
setenv bootcmd "run uenvcmd"
saveenv
boot
```
### SchIM
```
setenv bootargs "earlycon clk_ignore_unused earlyprintk mem=1024M root=/dev/mmcblk0p2 rw rootwait"
setenv uenvcmd "fatload mmc 0 0x3000000 Image && fatload mmc 0 0x2A00000 system.dtb && booti 0x3000000 - 0x2A00000"
setenv bootcmd "run uenvcmd"
saveenv
boot
```

## CPU-Brainfreeze experiments
### On the host computer
Make sure to have successfully completed all the steps listed in the [Petalinux](#Petalinux) section.
### On the board
Interrupt the u-boot sequence before the count of 4 seconds by pressing any key and enter the following commands on the u-boot console.
```
setenv bootargs "earlycon clk_ignore_unused earlyprintk mem=512M root=/dev/mmcblk0p2 rw rootwait"
setenv uenvcmd "fatload mmc 0 0x3000000 Image && fatload mmc 0 0x2A00000 system.dtb && booti 0x3000000 - 0x2A00000"
setenv bootcmd "run uenvcmd"
saveenv
boot
```
**Note:** this manipulation only has to be done once.
Once logged in, type the following command:
```
~/brainfreeze/launch_fence_blast.sh
```
This script is in charge of starting jailhouse, recoloring the root-cell and starting the memory-bomb inmate.
After this, the experiments will be automatically launched.
The execution time of each benchmark instance will be displayed on the terminal and stored in a file on the SD-card.
The results can be found in ```~/benchmarks/results``` under the names ```bench_ts_<mit>.csv``` (where ```mit``` is ```1024```, ```32768```, ```131072```, ```524288```).
**Remark:** Unless the script has been altered, generating the results takes around **4 hours** on the ZCU102!

### Post-processing
Retrieve the raw-data files located in ```<sd-card>/home/root/benchmarks/results/``` and copy them in ```<this-repo>/script/brainfreeze/SchIM/```.
Once done, let us move to the script and launch it
```bash
cd <this-repo>/script/brainfreeze/SchIM/
python3 brainfreeze_effects.py
```
The generated plot will be located in the same directory under the name ```cpu-brainfreeze-interference.pdf```.

## Quick deploy script
```
Usage: quick_deploy.sh [OPTION [ACTION,...]]

Options:
    --programs  [ACTION,...]        Indicates what actions to perform regarding
                                    the programs located in demo/
    --petalinux [ACTION,...]        Indicates what actions to perform regarding
                                    the petalinux project
    --jailhouse [ACTION,...]        Indicates what actions to perform regarding
                                    the jailhouse-rt project
    --petalinux-path                Indicates the path to the Petalinux project
                                    in use (Note: if not specified, default path
                                    is taken from deploy.config)
    --boot-path                     Indicates the path to the SD card boot
                                    partition (Note: if not specified, default
                                    path is taken from deploy.config)
    --root-path                     Indicates the path to the SD card root FS
                                    partition (Note: if not specified, default
                                    path is taken from deploy.config)

Actions:
    clean                           Clean the targeted project (Note: always
                                    performed first when called alongside other
                                    actions)
    build                           Build the targeted project (Note: always
                                    performed after a clean and before a copy if
                                    any)
    copy                            Copy the outcome of the targeted project to
                                    the relevant path
    package                         Petalinux only
```
