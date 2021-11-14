`timescale 1 ns / 1 ps

//////////////////////////////////////////////////////////////////////////////////
// Company: Technische Universitat Munchen. Chair of Cyber-Physical Systems
// Engineer: Denis Hoornaert
//
// Create Date: 01/18/2020 05:19:46 PM
// Design Name: Packetizer
// Module Name: Packetizer
// Project Name: MemorEDF
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

module Packetizer #(
		parameter integer C_S_AXI_ID_WIDTH	    = 1,
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		parameter integer C_S_AXI_ADDR_WIDTH	= 7,
		parameter integer C_S_AXI_AWUSER_WIDTH	= 0,
		parameter integer C_S_AXI_ARUSER_WIDTH	= 0,
		parameter integer C_S_AXI_WUSER_WIDTH	= 0,
		parameter integer C_S_AXI_RUSER_WIDTH	= 0,
		parameter integer C_S_AXI_BUSER_WIDTH	= 0,
		parameter         PACKETIZER_NUMBER     = 1'b0,
		parameter integer UPPER_BOUND           = 15,
		parameter integer LOWER_BOUND           = 14,
		parameter integer NB_QUEUES             = 4,
		parameter integer MAX_BURST_LEN         = 4
	)
	(
		input wire                                S_AXI_ACLK,
		input wire                                S_AXI_ARESETN,
		input wire       [C_S_AXI_ID_WIDTH-1 : 0] S_AXI_AWID,
		input wire     [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		input wire                        [7 : 0] S_AXI_AWLEN,
		input wire                        [2 : 0] S_AXI_AWSIZE,
		input wire                        [1 : 0] S_AXI_AWBURST,
		input wire                                S_AXI_AWLOCK,
		input wire                        [3 : 0] S_AXI_AWCACHE,
		input wire                        [2 : 0] S_AXI_AWPROT,
		input wire                        [3 : 0] S_AXI_AWQOS,
		input wire                        [3 : 0] S_AXI_AWREGION,
		input wire   [C_S_AXI_AWUSER_WIDTH-1 : 0] S_AXI_AWUSER,
		input wire                                S_AXI_AWVALID,
		output wire                               S_AXI_AWREADY,
		input wire     [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		input wire                                S_AXI_WLAST,
		input wire                                S_AXI_WVALID,
		output wire                               S_AXI_WREADY,
		input wire       [C_S_AXI_ID_WIDTH-1 : 0] S_AXI_ARID,
		input wire     [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		input wire                        [7 : 0] S_AXI_ARLEN,
		input wire                        [2 : 0] S_AXI_ARSIZE,
		input wire                        [1 : 0] S_AXI_ARBURST,
		input wire                                S_AXI_ARLOCK,
		input wire                        [3 : 0] S_AXI_ARCACHE,
		input wire                        [2 : 0] S_AXI_ARPROT,
		input wire                        [3 : 0] S_AXI_ARQOS,
		input wire                        [3 : 0] S_AXI_ARREGION,
		input wire   [C_S_AXI_ARUSER_WIDTH-1 : 0] S_AXI_ARUSER,
		input wire                                S_AXI_ARVALID,
		output wire                               S_AXI_ARREADY,
		output wire      [C_S_AXI_ID_WIDTH-1 : 0] S_AXI_RID,
		output wire    [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		output wire                       [1 : 0] S_AXI_RRESP,
		output wire                               S_AXI_RLAST,
		output wire                               S_AXI_RVALID,
		input wire                                S_AXI_RREADY,
		// Custom output
		output wire [(102+(4*16)+(4*C_S_AXI_DATA_WIDTH))-1 : 0] packetOut,
		output wire                               packetValid,
		output wire     [$clog2(NB_QUEUES)-1 : 0] coreId
	);

	// AXI4FULL signals
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] axi_awaddr;
	reg                            axi_awready;
	reg                            axi_wready;
	reg                            axi_bvalid;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] axi_araddr;
	reg                            axi_arready;
	reg [C_S_AXI_DATA_WIDTH-1 : 0] axi_rdata;
	reg                    [1 : 0] axi_rresp;
	reg                            axi_rlast;
	reg                            axi_rvalid;
	wire                           aw_wrap_en;
	wire                           ar_wrap_en;
	wire                    [31:0] aw_wrap_size;
	wire                    [31:0] ar_wrap_size;
	reg                            axi_awv_awr_flag;
	reg                            axi_arv_arr_flag;
	reg                      [7:0] axi_awlen_cntr;
	reg                      [7:0] axi_arlen_cntr;
	reg                      [1:0] axi_arburst;
	reg                      [1:0] axi_awburst;
	reg                      [7:0] axi_arlen;
	reg                      [7:0] axi_awlen;
    reg   [C_S_AXI_ID_WIDTH-1: 0 ] axi_awid;
    reg                            axi_aw_flag;
    
    reg                           [102-1 : 0] meta_data_write;
    reg                           [102-1 : 0] meta_data_read;
    reg [0 : 3][(C_S_AXI_DATA_WIDTH/8)-1 : 0] wstrb_write;
    reg       [0 : 3][C_S_AXI_DATA_WIDTH-1:0] byte_ram_write;
    reg                                       packetProduced_read;
    reg                                       packetProduced_write;
    reg             [$clog2(NB_QUEUES)-1 : 0] coreIdReg_read; 
    reg             [$clog2(NB_QUEUES)-1 : 0] coreIdReg_write;
    reg                               [7 : 0] mem_index;

	// I/O Connections assignments

	assign S_AXI_AWREADY	= axi_awready;
	assign S_AXI_WREADY	    = axi_wready;
	assign S_AXI_ARREADY	= axi_arready;
	assign S_AXI_RDATA	    = axi_rdata;
	assign S_AXI_RRESP	    = axi_rresp;
	assign S_AXI_RLAST	    = axi_rlast;
	assign S_AXI_RVALID     = axi_rvalid;
	assign S_AXI_RID        = S_AXI_ARID;

    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            axi_aw_flag <= 1'b0;
        else if (~axi_awready && S_AXI_AWVALID && ~axi_aw_flag)
            axi_aw_flag <= 1'b1;
        else if (S_AXI_WLAST && axi_wready && S_AXI_WVALID)
            axi_aw_flag <= 1'b0;
        else
            axi_aw_flag <= axi_aw_flag;
    end

    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            axi_awready <= 1'b0;
        else if (~axi_awready && S_AXI_AWVALID && ~axi_aw_flag)
            axi_awready <= 1'b1;
        else
            axi_awready <= 1'b0;
    end

    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            axi_wready <= 1'b0;
        else if ( ~axi_wready && S_AXI_WVALID)
            axi_wready <= 1'b1;
        else if (S_AXI_WLAST && axi_wready)
            axi_wready <= 1'b0;
    end

    // TODO: maybe useless
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            axi_arready <= 1'b0;
        else if (~axi_arready & S_AXI_ARVALID && ~packetProduced_read) // always creates a 1 cc gap
            axi_arready <= 1'b1;
        else
            axi_arready <= 1'b0;
    end
	
    always @(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 0 || (S_AXI_WVALID & axi_wready & S_AXI_WLAST))
            mem_index <= 0;
        else if( S_AXI_WVALID & axi_wready)
            mem_index <= mem_index+1;
    end

    assign packetOut   = (packetProduced_write)? {meta_data_write, wstrb_write, byte_ram_write} : {meta_data_read, 64'h0, 512'h0};
    assign packetValid = packetProduced_read|packetProduced_write;
    assign coreId      = (packetProduced_write)? coreIdReg_write : coreIdReg_read;

// WRITE -----------------------------------------------------------------------

    always @(posedge S_AXI_ACLK)
    begin
        if( S_AXI_ARESETN == 0 )
        begin
            meta_data_write <= 0;
            coreIdReg_write <= 0;
        end
        else if( axi_awready & S_AXI_AWVALID )
        begin
            meta_data_write <= {1'b1, S_AXI_AWADDR, {PACKETIZER_NUMBER, S_AXI_AWID[C_S_AXI_ID_WIDTH-2:0]}, S_AXI_AWLEN, S_AXI_AWSIZE, S_AXI_AWBURST, S_AXI_AWLOCK, S_AXI_AWCACHE, S_AXI_AWPROT, S_AXI_AWQOS, S_AXI_AWREGION, S_AXI_AWUSER};
            coreIdReg_write <= S_AXI_AWADDR[UPPER_BOUND : LOWER_BOUND];
        end
    end
    
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 0 )
            for(int i = 0; i < MAX_BURST_LEN; i += 1)
                byte_ram_write[i] <= 0;
        else if (axi_wready && S_AXI_WVALID)
            byte_ram_write[mem_index] <= S_AXI_WDATA;
    end
    
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 0 )
            for(int i = 0; i < MAX_BURST_LEN; i += 1)
                wstrb_write[i] <= 0;
        else if (axi_wready && S_AXI_WVALID)
            wstrb_write[mem_index] <= S_AXI_WSTRB;
    end
    
    always @(posedge S_AXI_ACLK)
    begin
        if( (S_AXI_ARESETN == 0) | packetProduced_write )
            packetProduced_write <= 0;
        else if( axi_wready & S_AXI_WVALID & S_AXI_WLAST )
            packetProduced_write <= 1;
        else
            packetProduced_write <= packetProduced_write;
    end

// READ ------------------------------------------------------------------------
 
    always @(posedge S_AXI_ACLK)
    begin
        if( S_AXI_ARESETN == 0 )
        begin
            meta_data_read <= 0;
            coreIdReg_read <= 0;
        end
        else if( S_AXI_ARVALID & axi_arready )
        begin
            meta_data_read  <= {1'b0, S_AXI_ARADDR, {PACKETIZER_NUMBER, S_AXI_ARID[C_S_AXI_ID_WIDTH-2:0]}, S_AXI_ARLEN, S_AXI_ARSIZE, S_AXI_ARBURST, S_AXI_ARLOCK, S_AXI_ARCACHE, S_AXI_ARPROT, S_AXI_ARQOS, S_AXI_ARREGION, S_AXI_ARUSER};
            coreIdReg_read  <= S_AXI_ARADDR[UPPER_BOUND : LOWER_BOUND];
        end
    end
    
    // if axi_arready process is useless, replace packetProduced_read by axi_arready
    always @(posedge S_AXI_ACLK)
    begin
        if( (S_AXI_ARESETN == 0) | (packetProduced_read & ~packetProduced_write)) // reset also if read is available and no write is stalled
            packetProduced_read <= 0;
        else if( S_AXI_ARVALID & axi_arready)
            packetProduced_read <= 1;
        else
            packetProduced_read <= packetProduced_read;
    end

endmodule
