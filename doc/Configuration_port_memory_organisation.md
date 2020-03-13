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
