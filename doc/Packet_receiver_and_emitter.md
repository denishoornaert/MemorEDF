# Packet receiver and emitter descriptions

The document aims at describing and classifying the signals that must be stored inside a packet for read and write transaction depending on whether they are received by the slave port (**AXI0** in the figure) or they are sent by the master port (**AXI1** in the figure).

## Reading

### Slave part

#### Signals to buffer

|           Signals | Bits | Not fixed |  Protocol specific  |
|:-----------------:|:----:|:---------:|:-------------------:|
|```s_axi_arid```   |    1 |         * |                     |
|```s_axi_araddr``` |   32 |           |                     |
|```s_axi_arlen```  |    8 |           |                     |
|```s_axi_arsize``` |    3 |         * |                     |
|```s_axi_arlock``` |    1 |       (*) |                     |
|```s_axi_arburst```|    2 |       (*) |                     |
|```s_axi_arcache```|    4 |           |                     |
|```s_axi_arprot``` |    3 |           |                     |
|```s_axi_arqos```  |    4 |           |                     |
|```s_axi_aruser``` |    1 |         * |                     |
|```s_axi_arvalid```|    1 |           |                   * |
|```s_axi_rready``` |    1 |           |                   * |
|           **SUM** |   59 |   **N/A** |             **N/A** |

### Master part

#### Signals to buffer

|           Signals | Bits | Not fixed |  Protocol specific  |
|:-----------------:|:----:|:---------:|:-------------------:|
|```s_axi_arready```|    1 |           |                   * |
|```s_axi_rid```    |    1 |         * |                     |
|```s_axi_rdata```  |  128 |         * |                     |
|```s_axi_rresp```  |    2 |         * |                     |
|```s_axi_rlast```  |    1 |           |                   * |
|```s_axi_ruser```  |    1 |         * |                     |
|```s_axi_rvalid``` |    1 |           |                   * |
|           **SUM** |  516 |   **N/A** |             **N/A** |

## Writing

### Slave part

#### Signals to buffer

|           Signals | Bits | Not fixed |  Protocol specific  |
|:-----------------:|:----:|:---------:|:-------------------:|
|```s_axi_awid```   |    1 |         * |                     |
|```s_axi_awaddr``` |   40 |           |                     |
|```s_axi_awlen```  |    8 |           |                     |
|```s_axi_awsize``` |    3 |         * |                     |
|```s_axi_awburst```|    2 |         * |                     |
|```s_axi_awlock``` |    1 |           |                   * |
|```s_axi_awcache```|    4 |           |                     |
|```s_axi_awprot``` |    3 |       (*) |                     |
|```s_axi_awqos```  |    4 |           |                     |
|```s_axi_awregion```|    4 |      (*)  |                     |
|```s_axi_awuser``` |    1 |         * |                     |
|```s_axi_awvalid```|    1 |           |                   * |
|```s_axi_wdata```  |  128 |         * |                     |
|```s_axi_wstrb```  |   16 |         * |                     |
|```s_axi_wlast```  |    1 |           |                   * |
|```s_axi_wuser```  |    1 |         * |                     |
|```s_axi_awvalid```|    1 |           |                   * |
|           **SUM** |  580 |   **N/A** |             **N/A** |

### Master part

#### Signals to buffer

|           Signals | Bits | Not fixed |  Protocol specific  |
|:-----------------:|:----:|:---------:|:-------------------:|
|```s_axi_awready```|    1 |           |                   * |
|```s_axi_wready``` |    1 |           |                   * |
|           **SUM** |    0 |   **N/A** |             **N/A** |

## Answering

### Slave part

#### Signals to buffer

|           Signals | Bits | Not fixed |  Protocol specific  |
|:-----------------:|:----:|:---------:|:-------------------:|
|```s_axi_bready``` |    1 |           |                   * |
|           **SUM** |    0 |   **N/A** |             **N/A** |

### Master part

#### Signals to buffer

|           Signals | Bits | Not fixed |  Protocol specific  |
|:-----------------:|:----:|:---------:|:-------------------:|
|```s_axi_bid```    |    1 |         * |                     |
|```s_axi_bresp```  |    2 |           |                     |
|```s_axi_buser```  |    1 |       (*) |                     |
|```s_axi_bvalid``` |    1 |           |                   * |
|           **SUM** |    4 |   **N/A** |             **N/A** |
