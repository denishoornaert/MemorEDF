#include <asm-generic/vmlinux.lds.h>
.section .dtb.init.rodata,"a"
.balign STRUCT_ALIGNMENT
.global __dtb_vpci_template_begin
__dtb_vpci_template_begin:
.incbin "/home/renato/MemorEDF/jailhouse-rt/driver/vpci_template.dtb" 
__dtb_vpci_template_end:
.global __dtb_vpci_template_end
.balign STRUCT_ALIGNMENT
