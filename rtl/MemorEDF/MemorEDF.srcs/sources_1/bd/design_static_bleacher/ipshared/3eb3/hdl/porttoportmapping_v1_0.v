
`timescale 1 ns / 1 ps

module porttoportmapping_v1_0 #
	(
		// Users to add parameters here
        parameter COLOR_BITS_UPPER_BOUND = 15,
        parameter COLOR_BITS_LOWER_BOUND = 14,
        parameter SPM_SIZE_IN_BYTE       = 2*1024*1024,
		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter C_S00_AXI_ID_WIDTH	= 1,
		parameter C_S00_AXI_DATA_WIDTH	= 128,
		parameter C_S00_AXI_ADDR_WIDTH	= 40,
		parameter C_S00_AXI_AWUSER_WIDTH	= 0,
		parameter C_S00_AXI_ARUSER_WIDTH	= 0,
		parameter C_S00_AXI_WUSER_WIDTH	= 0,
		parameter C_S00_AXI_RUSER_WIDTH	= 0,
		parameter C_S00_AXI_BUSER_WIDTH	= 0,

		// Parameters of Axi Master Bus Interface M00_AXI
		parameter C_M00_AXI_TARGET_SLAVE_BASE_ADDR	= 40'h0000000000,
		parameter C_M00_AXI_BURST_LEN    = 16,
		parameter C_M00_AXI_ID_WIDTH     = 1,
		parameter C_M00_AXI_ADDR_WIDTH   = 40,
		parameter C_M00_AXI_DATA_WIDTH   = 128,
		parameter C_M00_AXI_AWUSER_WIDTH = 0,
		parameter C_M00_AXI_ARUSER_WIDTH = 0,
		parameter C_M00_AXI_WUSER_WIDTH  = 0,
		parameter C_M00_AXI_RUSER_WIDTH  = 0,
		parameter C_M00_AXI_BUSER_WIDTH  = 0
	)
	(
		// Ports of Axi Slave Bus Interface S00_AXI
            input wire                        s00_axi_aclk,
            input wire                        s00_axi_aresetn,
            input wire       [C_S00_AXI_ID_WIDTH-1 : 0] s00_axi_awid,
            input wire     [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
            input wire                [7 : 0] s00_axi_awlen,
            input wire                [2 : 0] s00_axi_awsize,
            input wire                [1 : 0] s00_axi_awburst,
            input wire                        s00_axi_awlock,
            input wire                [3 : 0] s00_axi_awcache,
            input wire                [2 : 0] s00_axi_awprot,
            input wire                [3 : 0] s00_axi_awqos,
            input wire                [3 : 0] s00_axi_awregion,
            input wire   [C_S00_AXI_AWUSER_WIDTH-1 : 0] s00_axi_awuser,
            input wire                        s00_axi_awvalid,
            output wire                       s00_axi_awready,
            input wire     [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
            input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
            input wire                        s00_axi_wlast,
//            input wire    [C_S00_AXI_WUSER_WIDTH-1 : 0] s00_axi_wuser,
            input wire                        s00_axi_wvalid,
            output wire                       s00_axi_wready,
            output wire      [C_S00_AXI_ID_WIDTH-1 : 0] s00_axi_bid,
            output wire               [1 : 0] s00_axi_bresp,
//            output wire   [C_S00_AXI_BUSER_WIDTH-1 : 0] s00_axi_buser,
            output wire                       s00_axi_bvalid,
            input wire                        s00_axi_bready,
            input wire       [C_S00_AXI_ID_WIDTH-1 : 0] s00_axi_arid,
            input wire     [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
            input wire                [7 : 0] s00_axi_arlen,
            input wire                [2 : 0] s00_axi_arsize,
            input wire                [1 : 0] s00_axi_arburst,
            input wire                        s00_axi_arlock,
            input wire                [3 : 0] s00_axi_arcache,
            input wire                [2 : 0] s00_axi_arprot,
            input wire                [3 : 0] s00_axi_arqos,
            input wire                [3 : 0] s00_axi_arregion,
            input wire   [C_S00_AXI_ARUSER_WIDTH-1 : 0] s00_axi_aruser,
            input wire                        s00_axi_arvalid,
            output wire                       s00_axi_arready,
            output wire      [C_S00_AXI_ID_WIDTH-1 : 0] s00_axi_rid,
            output wire    [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
            output wire               [1 : 0] s00_axi_rresp,
            output wire                       s00_axi_rlast,
//            output wire   [C_S00_AXI_RUSER_WIDTH-1 : 0] s00_axi_ruser,
            output wire                       s00_axi_rvalid,
            input wire                        s00_axi_rready,
    
            // Ports of Axi Master Bus Interface M00_AXI
            input wire                        m00_axi_aclk,
            input wire                        m00_axi_aresetn,
            output wire      [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_awid,
            output wire    [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_awaddr,
            output wire               [7 : 0] m00_axi_awlen,
            output wire               [2 : 0] m00_axi_awsize,
            output wire               [1 : 0] m00_axi_awburst,
            output wire                       m00_axi_awlock,
            output wire               [3 : 0] m00_axi_awcache,
            output wire               [2 : 0] m00_axi_awprot,
            output wire               [3 : 0] m00_axi_awqos,
            output wire  [C_M00_AXI_AWUSER_WIDTH-1 : 0] m00_axi_awuser,
            output wire                       m00_axi_awvalid,
            input wire                        m00_axi_awready,
            output wire    [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_wdata,
            output wire  [C_M00_AXI_DATA_WIDTH/8-1 : 0] m00_axi_wstrb,
            output wire                       m00_axi_wlast,
//            output wire   [C_M00_AXI_WUSER_WIDTH-1 : 0] m00_axi_wuser,
            output wire                       m00_axi_wvalid,
            input wire                        m00_axi_wready,
            input wire       [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_bid,
            input wire                [1 : 0] m00_axi_bresp,
//            input wire    [C_M00_AXI_BUSER_WIDTH-1 : 0] m00_axi_buser,
            input wire                        m00_axi_bvalid,
            output wire                       m00_axi_bready,
            output wire      [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_arid,
            output wire    [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_araddr,
            output wire               [7 : 0] m00_axi_arlen,
            output wire               [2 : 0] m00_axi_arsize,
            output wire               [1 : 0] m00_axi_arburst,
            output wire                       m00_axi_arlock,
            output wire               [3 : 0] m00_axi_arcache,
            output wire               [2 : 0] m00_axi_arprot,
            output wire               [3 : 0] m00_axi_arqos,
            output wire  [C_M00_AXI_ARUSER_WIDTH-1 : 0] m00_axi_aruser,
            output wire                       m00_axi_arvalid,
            input wire                        m00_axi_arready,
            input wire       [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_rid,
            input wire     [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_rdata,
            input wire                [1 : 0] m00_axi_rresp,
            input wire                        m00_axi_rlast,
//            input wire    [C_M00_AXI_RUSER_WIDTH-1 : 0] m00_axi_ruser,
            input wire                        m00_axi_rvalid,
            output wire                       m00_axi_rready
        );
        
        wire                                             [3 : 0] write_isolated_bank;
        wire                                            [31 : 0] write_removed_msb;
        wire                                            [31 : 0] write_dropped_address;
        wire                                            [39 : 0] write_new_msb;
        
        wire                                             [3 : 0] read_isolated_bank;
        wire                                            [39 : 0] read_removed_msb;
        wire                                            [31 : 0] read_dropped_address;
        wire                                            [31 : 0] read_new_msb;
        
        assign write_isolated_bank   = s00_axi_awaddr[35 : 32];
        assign write_removed_msb     = s00_axi_awaddr[31 : 0];
        assign write_dropped_address = {2'b00, write_removed_msb[31 : 16], write_removed_msb[13 : 0]};
        assign write_new_msb         = {4'h0, write_isolated_bank, write_dropped_address};
        
        assign read_isolated_bank   = s00_axi_araddr[35 : 32];
        assign read_removed_msb     = s00_axi_araddr[31 : 0];
        assign read_dropped_address = {2'b00, read_removed_msb[31 : 16], read_removed_msb[13 : 0]};
        assign read_new_msb         = {4'h0, read_isolated_bank, read_dropped_address};
        
        // Drive signals from the master port to the slave port
        assign s00_axi_awready = m00_axi_awready;
        assign s00_axi_wready  = m00_axi_wready;
        assign s00_axi_bid     = m00_axi_bid;
        assign s00_axi_bresp   = m00_axi_bresp;
//        assign s00_axi_buser   = m00_axi_buser;
        assign s00_axi_bvalid  = m00_axi_bvalid;
        assign s00_axi_arready = m00_axi_arready;
        assign s00_axi_rid     = m00_axi_rid;
        assign s00_axi_rdata   = m00_axi_rdata;
        assign s00_axi_rresp   = m00_axi_rresp;
        assign s00_axi_rlast   = m00_axi_rlast;
//        assign s00_axi_ruser   = m00_axi_ruser;
        assign s00_axi_rvalid  = m00_axi_rvalid;
    
        // Drive signals from the slave port to the master port
        assign m00_axi_awid    = s00_axi_awid;
        //assign m00_axi_awaddr  = {s00_axi_awaddr[22:16], s00_axi_awaddr[13:0]};
        //assign m00_axi_awaddr  = C_M00_AXI_TARGET_SLAVE_BASE_ADDR | {zeros, s00_axi_awaddr[27 : COLOR_BITS_UPPER_BOUND+1], s00_axi_awaddr[COLOR_BITS_LOWER_BOUND-1 : 0]};
        assign m00_axi_awaddr  = write_new_msb;
        assign m00_axi_awlen   = s00_axi_awlen;
        assign m00_axi_awsize  = s00_axi_awsize;
        assign m00_axi_awburst = s00_axi_awburst;
        assign m00_axi_awlock  = s00_axi_awlock;
        assign m00_axi_awcache = s00_axi_awcache;
        assign m00_axi_awprot  = s00_axi_awprot;
        assign m00_axi_awqos   = s00_axi_awqos;
        assign m00_axi_awuser  = s00_axi_awuser;
        assign m00_axi_awvalid = s00_axi_awvalid;
        assign m00_axi_wdata   = s00_axi_wdata;
        assign m00_axi_wstrb   = s00_axi_wstrb;
        assign m00_axi_wlast   = s00_axi_wlast;
//        assign m00_axi_wuser   = s00_axi_wuser;
        assign m00_axi_wvalid  = s00_axi_wvalid;
        assign m00_axi_bready  = s00_axi_bready;
        assign m00_axi_arid    = s00_axi_arid;
        //assign m00_axi_araddr  = {s00_axi_araddr[22:16], s00_axi_araddr[13:0]};
        //assign m00_axi_araddr  = C_M00_AXI_TARGET_SLAVE_BASE_ADDR | {8'h00, zeros, s00_axi_araddr[C_M00_AXI_ADDR_WIDTH-9 : COLOR_BITS_UPPER_BOUND+1], s00_axi_araddr[COLOR_BITS_LOWER_BOUND-1 : 0]};
        //assign m00_axi_araddr  = C_M00_AXI_TARGET_SLAVE_BASE_ADDR | {zeros, s00_axi_araddr[27 : COLOR_BITS_UPPER_BOUND+1], s00_axi_araddr[COLOR_BITS_LOWER_BOUND-1 : 0]};
        assign m00_axi_araddr  = read_new_msb;
        assign m00_axi_arlen   = s00_axi_arlen;
        assign m00_axi_arsize  = s00_axi_arsize;
        assign m00_axi_arburst = s00_axi_arburst;
        assign m00_axi_arlock  = s00_axi_arlock;
        assign m00_axi_arcache = s00_axi_arcache;
        assign m00_axi_arprot  = s00_axi_arprot;
        assign m00_axi_arqos   = s00_axi_arqos;
        assign m00_axi_aruser  = s00_axi_aruser;
        assign m00_axi_arvalid = s00_axi_arvalid;
        assign m00_axi_rready  = s00_axi_rready;

endmodule
