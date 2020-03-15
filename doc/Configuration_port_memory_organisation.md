## Configuration port memory organisation

| Name      | Size (bit) | Size (byte) | Amount | Product (bit) | Product (byte) |
|:----------|:----------:|:-----------:|:------:|:-------------:|:--------------:|
| Mode      | 32         | 4           | 1      | 32            | 4              |
| Deadlines | 32         | 4           | 4      | 32            | 16             |
| Periods   | 32         | 4           | 4      | 32            | 16             |

## Address spaces

### By 32 bits

| Name        | From      | To        |
|:------------|:---------:|:---------:|
| Periods 1   | base+0x00 | base+0x03 |
| Periods 2   | base+0x04 | base+0x07 |
| Periods 3   | base+0x08 | base+0x0b |
| Periods 4   | base+0x0c | base+0x0f |
| Deadlines 1 | base+0x10 | base+0x13 |
| Deadlines 2 | base+0x14 | base+0x17 |
| Deadlines 3 | base+0x18 | base+0x1b |
| Deadlines 4 | base+0x1c | base+0x1f |
| Mode        | base+0x20 | base+0x24 |

### By 128 bits

| Name      | From      | To        |
|:----------|:---------:|:---------:|
| Periods   | base+0x00 | base+0x0f |
| Deadlines | base+0x10 | base+0x1f |
| Mode      | base+0x20 | base+0x3f |

Values writen in registers must be concatenated in the exact order specified hereunder.
```verilog
Periods   = {Period4, Period3, Period2, Period1}
Deadlines = {Deadline4, Deadline3, Deadline2, Deadline1}
```

## Mode encoding

| Mode | Encoding |
|:----:|:--------:|
| TDMA | 0        |
| EDF  | 1        |

## Example

### TDMA

Let us consider the case where one wants to program the ```MemorEDF``` IP such that the ```TDMA``` policy is applied.
In the present example, the ```base``` address is ```0x44A0_0000```, the FPGA clock is ```99.99MHz``` and one desire that each ```TDMA``` slot is equal to the others and equivalent to ```250ms``` (i.e. for an hyper-period of ```1s```).

Let us first compute the value to write in each ```period``` register. Knowing that the FPGA frequency is ```99.99MHz```, it means that with ```99.99*10^6``` increments of a counter (i.e. clock cycles), ```1s``` has passed. 
Therefore, as ```250ms``` is one quarter of ```1s```, one only needs to wait for one quarter of ```99.99*10^6``` clock cycles.
Consequently, the amount of required clock cycles per ```TDMA``` slot is ```(99.99*10^6)/4 = 24,995,500``` clock cycles.
This value in hexadecimal is the following: ```0x17D6E7C```.

Using the ```devmem``` command:
```bash
# Specify the mode of scheduling. Here, we opted for TDMA so we write 0
devmem 0x44A00020 32 0x00000000
# Set the deadlines to 0 as the TDMA scheduler does not need these meta-data
devmem 0x44A0001C 32 0x00000000
devmem 0x44A00018 32 0x00000000
devmem 0x44A00014 32 0x00000000
devmem 0x44A00010 32 0x00000000
# Set the periods such that they all boast a time slot of 250ms
devmem 0x44A0000C 32 0x017D6E7C
devmem 0x44A00008 32 0x017D6E7C
devmem 0x44A00004 32 0x017D6E7C
devmem 0x44A00000 32 0x017D6E7C
```

Reciprocally, for 128 bits values
```bash
# Specify the mode of scheduling. Here, we opted for TDMA so we write 0
devmem 0x44A00020 128 0x00000000000000000000000000000000
# Set the deadlines to 0 as the TDMA scheduler does not need these meta-data
devmem 0x44A00010 128 0x00000000000000000000000000000000
# Set the periods such that they all boast a time slot of 250ms
devmem 0x44A00000 128 0x017D6E7C017D6E7C017D6E7C017D6E7C
```
