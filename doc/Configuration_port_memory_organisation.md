## Configuration port memory organisation

| Name      | Size (bit) | Size (byte) | Amount | Product (bit) | Product (byte) |
|:----------|:----------:|:-----------:|:------:|:-------------:|:--------------:|
| Mode      | 32         | 4           | 1      | 32            | 4              |
| Deadlines | 32         | 4           | 4      | 32            | 16             |
| Periods   | 32         | 4           | 4      | 32            | 16             |
|           |            |             |        |               |                |
| Sum       | 32         | 4           | 9      | 288           | 36             |

## Address spaces

| Name      | From      | To        |
|:----------|:---------:|:---------:|
| Periods   | base+0x00 | base+0x0f |
| Deadlines | base+0x10 | base+0x1f |
| Periods   | base+0x20 | base+0x3f |
