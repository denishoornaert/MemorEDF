# MemorEDF-Demonstration

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

 - Petalinux 2018.3
 - SD card with a boot partition of at least 1GB and and a root partition
 - A Xilinx ZCU102

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
 3. Configure the kernel such that ```OVERLAYS``` and ```KALLSYMS``` flags are set.

### Remaining

Modify the ```deploy.config``` file to suit your local configuration.

Source Petalinux manually
```bash
source path/to/petalinux/settings.sh
```
**Remark:** this is only required when using the ```petalinux``` option of the ```quick_deploy``` [script](#quick-deploy-script).

Build the complete project and copy it to the SD-card with the following command
```bash
./quick_deploy.sh --petalinux build,package,copy --programs clean,build,copy --jailhouse clean,build,copy
```
**Remark:** the ```quick_deplpoy.sh``` can be used later on to independently build, clean or copy parts of the projects. Further information can be found [here](#quick-deploy-script).

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
