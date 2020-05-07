## Configuration port memory organisation

| Name      | Size (bit) | Size (byte) | Amount | Product (bit) | Product (byte) |
|:----------|:----------:|:-----------:|:------:|:-------------:|:--------------:|
| Mode      | 32         | 4           | 1      | 32            | 4              |
| Deadlines | 32         | 4           | 4      | 128           | 16             |
| Periods   | 32         | 4           | 4      | 128           | 16             |
| Priorites | 8          | 1           | 4      | 32            | 4              |

## Address spaces

| Name        | From      | To        |
|:------------|:---------:|:---------:|
| Period  1   | base+0x00 | base+0x03 |
| Period  2   | base+0x04 | base+0x07 |
| Period  3   | base+0x08 | base+0x0b |
| Period  4   | base+0x0c | base+0x0f |
| Deadline 1  | base+0x10 | base+0x13 |
| Deadline 2  | base+0x14 | base+0x17 |
| Deadline 3  | base+0x18 | base+0x1b |
| Deadline 4  | base+0x1c | base+0x1f |
| Priority 1  | base+0x20 | base+0x20 |
| Priority 2  | base+0x21 | base+0x21 |
| Priority 3  | base+0x22 | base+0x22 |
| Priority 4  | base+0x23 | base+0x23 |
| Mode        | base+0x24 | base+0x27 |


## Mode encoding

| Mode | Encoding |
|:----:|:--------:|
| TDMA | 0        |
| EDF  | 1        |
| FP   | 2        |

## Example

### TDMA

Let us consider the case where one wants to program the ```MemorEDF``` IP such that the ```TDMA``` policy is applied.
In the present example, the ```base``` address is ```0x8000_0000```, the FPGA clock is ```99.99MHz``` and one desire that each ```TDMA``` slot is equal to the others and equivalent to ```250ms``` (i.e. for an hyper-period of ```1s```).

Let us first compute the value to write in each ```period``` register. Knowing that the FPGA frequency is ```99.99MHz```, it means that with ```99.99*10^6``` increments of a counter (i.e. clock cycles), ```1s``` has passed.
Therefore, as ```250ms``` is one quarter of ```1s```, one only needs to wait for one quarter of ```99.99*10^6``` clock cycles.
Consequently, the amount of required clock cycles per ```TDMA``` slot is ```(99.99*10^6)/4 = 24,995,500``` clock cycles.
This value in hexadecimal is the following: ```0x17D6E7C```.

Using the ```devmem``` command:
```bash
# Specify the mode of scheduling. Here, we opted for TDMA so we write 0
devmem 0x80000024 32 0x00000000
# Set the priorities to 0 as the TDMA scheduler does not need these meta-data
devmem 0x80000020 32 0x00000000
# Set the deadlines to 0 as the TDMA scheduler does not need these meta-data
devmem 0x8000001C 32 0x00000000
devmem 0x80000018 32 0x00000000
devmem 0x80000014 32 0x00000000
devmem 0x80000010 32 0x00000000
# Set the periods such that they all boast a time slot of 250ms
devmem 0x8000000C 32 0x017D6E7C
devmem 0x80000008 32 0x017D6E7C
devmem 0x80000004 32 0x017D6E7C
devmem 0x80000000 32 0x017D6E7C
```

### FP

Using the ```devmem``` command:
```bash
# Specify the mode of scheduling. Here, we opted for TDMA so we write 0
devmem 0x80000024 32 0x00000000
# Set the priorities to inform the module how to discriminate transactions
devmem 0x80000020 32 0x0f0a080e
# Set the deadlines to 0 as the FP scheduler does not need these meta-data
devmem 0x8000001C 32 0x00000000
devmem 0x80000018 32 0x00000000
devmem 0x80000014 32 0x00000000
devmem 0x80000010 32 0x00000000
# Set the periods to 0 as the FP scheduler does not need these meta-data
devmem 0x8000000C 32 0x00000000
devmem 0x80000008 32 0x00000000
devmem 0x80000004 32 0x00000000
devmem 0x80000000 32 0x00000000
```

### First experiment

Using the ```devmem``` command:
```bash
# Specify the mode of scheduling. Here, we opted for TDMA so we write 0
devmem 0x80000024 32 0x00000000
# Set the deadlines to 0 as the TDMA scheduler does not need these meta-data
devmem 0x8000001C 32 0x00000000
devmem 0x80000018 32 0x00000000
devmem 0x80000014 32 0x00000000
devmem 0x80000010 32 0x00000000
# Set the periods such that they all boast a time slot of 250ms
devmem 0x8000000C 32 0x00000000
devmem 0x80000008 32 0x00000000
devmem 0x80000004 32 0x00000000
devmem 0x80000000 32 0x017D6E7C
```
