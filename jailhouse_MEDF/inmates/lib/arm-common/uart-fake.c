/*
 * Jailhouse, a Linux-based partitioning hypervisor
 * 
 * Copyright 2017 NXP
 *
 * Description: Fake UART interface for inmates. Requires user driver
 * on root cell, but it is useful one there are no additional physical
 * terminals on the target SoC.
 * 
 * Authors:
 *  Renato Mancuso (BU) <rmancuso@bu.edu>
 *
 * This work is licensed under the terms of the GNU GPL, version 2.  See
 * the COPYING file in the top-level directory.
 */

#include <inmate.h>
#include <uart.h>

/* We are always going to use mmio_read32/write32 operations, so make
 * read/write pointers 32 bits apart */
#define UT_READ			0x0
#define UT_WRITE                0x4
#define UT_BUFSTART             0x8

static void uart_init(struct uart_chip *chip)
{
	/* At initialization time, we need to only initialize read and
	 * write pointers at the beginning of the console page. */

	mmio_write32(chip->base + UT_READ, 0);
	mmio_write32(chip->base + UT_WRITE, 0);
}

static bool uart_is_busy(struct uart_chip *chip)
{
	static unsigned long size = 0;
	unsigned long read =  mmio_read32(chip->base + UT_READ);
	unsigned long write = mmio_read32(chip->base + UT_WRITE);

	if (size == 0)
		size = chip->size - UT_BUFSTART;
	
	/* If the next byte written will overwrite a byte that has not
	 * been consumed yet, make the terminal busy (buffer full). */
	if ((write + 1) % size == read)
		return 1;

	return 0;
}

static void uart_write_char(struct uart_chip *chip, char c)
{
	/* Write new character and increase write pointer */
	unsigned long write = mmio_read32(chip->base + UT_WRITE);
	mmio_write8(chip->base + UT_BUFSTART + write, c);
	mmio_write32(chip->base + UT_WRITE, write + 1);
}

struct uart_chip uart_fake_ops = {
	.init = uart_init,
	.is_busy = uart_is_busy,
	.write = uart_write_char,
};
