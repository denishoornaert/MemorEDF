## Configuration port memory organisation

| Name      | Size (bit) | Size (byte) | Amount | Product (bit) | Product (byte) |
|:----------|:----------:|:-----------:|:------:|:-------------:|:--------------:|
| Mode      | 32         | 4           | 1      | 32            | 4              |
| Deadlines | 32         | 4           | 4      | 32            | 16             |
| Periods   | 32         | 4           | 4      | 32            | 16             |

## Address spaces

| Name      | From      | To        |
|:----------|:---------:|:---------:|
| Periods   | base+0x00 | base+0x0f |
| Deadlines | base+0x10 | base+0x1f |
| Mode      | base+0x20 | base+0x3f |

**Remark:** Registers can only be written 128 bits by 128 bits!
Therefore, values writen in registers must be concatenated in the exact order specified hereunder.
```verilog
Periods   = {Period4, Period3, Period2, Period1}
Deadlines = {Deadline4, Deadline3, Deadline2, Deadline1}
```

## Mode encoding

| Mode | Encoding |
|:----:|:--------:|
| TDMA | 0        |
| EDF  | 1        |
