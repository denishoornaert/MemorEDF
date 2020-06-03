#
# Jailhouse AArch64 support
#
# Copyright (C) 2015 Huawei Technologies Duesseldorf GmbH
#
# Authors:
#  Antonios Motakis <antonios.motakis@huawei.com>
#
# This work is licensed under the terms of the GNU GPL, version 2.  See
# the COPYING file in the top-level directory.
#

include $(INMATES_LIB)/Makefile.lib

INMATES := gic-demo.bin uart-demo.bin mem-demo.bin mem-demo-reads.bin

gic-demo-y	 	:= ../arm/gic-demo.o
uart-demo-y		:= ../arm/uart-demo.o
mem-demo-y		:= ../arm/mem-demo.o
mem-demo-reads-y	:= ../arm/mem-demo-reads.o

$(eval $(call DECLARE_TARGETS,$(INMATES)))
