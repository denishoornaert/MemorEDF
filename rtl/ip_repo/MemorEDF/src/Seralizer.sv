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

module Serializer #
    (
		parameter  C_M_TARGET_SLAVE_BASE_ADDR	= 40'h4000000000,
		parameter integer C_M_AXI_BURST_LEN	    = 4,
		parameter integer C_M_AXI_ID_WIDTH	    = 16,
		parameter integer C_M_AXI_ADDR_WIDTH	= 32,
		parameter integer C_M_AXI_DATA_WIDTH	= 128,
		parameter integer C_M_AXI_AWUSER_WIDTH	= 0,
		parameter integer C_M_AXI_ARUSER_WIDTH	= 0,
		parameter integer C_M_AXI_WUSER_WIDTH	= 0,
		parameter integer C_M_AXI_RUSER_WIDTH	= 0,
		parameter integer C_M_AXI_BUSER_WIDTH	= 0
	)
	(
		input  wire                                             INIT_AXI_TXN,
		input  wire                                             M_AXI_ACLK,
		input  wire                                             M_AXI_ARESETN,
		output wire                    [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_AWID,
		output wire                  [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_AWADDR,
		output wire                                     [7 : 0] M_AXI_AWLEN,
		output wire                                     [2 : 0] M_AXI_AWSIZE,
		output wire                                     [1 : 0] M_AXI_AWBURST,
		output wire                                             M_AXI_AWLOCK,
		output wire                                     [3 : 0] M_AXI_AWCACHE,
		output wire                                     [2 : 0] M_AXI_AWPROT,
		output wire                                     [3 : 0] M_AXI_AWQOS,
		output wire                [C_M_AXI_AWUSER_WIDTH-1 : 0] M_AXI_AWUSER,
		output wire                                             M_AXI_AWVALID,
		input  wire                                             M_AXI_AWREADY,
		output reg                   [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_WDATA,
		output reg                 [C_M_AXI_DATA_WIDTH/8-1 : 0] M_AXI_WSTRB,
		output wire                                             M_AXI_WLAST,
		output wire                                             M_AXI_WVALID,
		input  wire                                             M_AXI_WREADY,
		output wire                    [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_ARID,
		output wire                  [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_ARADDR,
		output wire                                     [7 : 0] M_AXI_ARLEN,
		output wire                                     [2 : 0] M_AXI_ARSIZE,
		output wire                                     [1 : 0] M_AXI_ARBURST,
		output wire                                             M_AXI_ARLOCK,
		output wire                                     [3 : 0] M_AXI_ARCACHE,
		output wire                                     [2 : 0] M_AXI_ARPROT,
		output wire                                     [3 : 0] M_AXI_ARQOS,
		output wire                [C_M_AXI_ARUSER_WIDTH-1 : 0] M_AXI_ARUSER,
		output wire                                             M_AXI_ARVALID,
		input  wire                                             M_AXI_ARREADY,
		input  wire                                             M_AXI_RLAST,
		input  wire [(102+(4*16)+(4*C_M_AXI_DATA_WIDTH))-1 : 0] packet_in,
		output wire                                             packetConsumed
	);

	reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	                        axi_awvalid;
	reg [C_M_AXI_DATA_WIDTH-1 : 0] 	axi_wdata;
	reg  	                        axi_wlast;
	reg  	                        axi_wvalid;
	reg  	                        axi_bready;
	reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	                        axi_arvalid;
	reg                   [31 : 0] 	write_index;
	reg  	                        start_single_burst_write;
	reg  	                        start_single_burst_read;
    reg                             rlast_ff;
    reg                             wlast_ff;
    reg                             internal_packetConsumed;
	//Interface response error flags
	wire  	                        wnext;
	reg  	                        init_txn_ff;
	reg  	                        init_txn_ff2;
	wire  	                        init_txn_pulse;

    // Packet meta-data decomposition
    wire                              packet_type;
    // Write packet signals
    wire   [C_M_AXI_ADDR_WIDTH-1 : 0] p_awaddr;
    wire     [C_M_AXI_ID_WIDTH-1 : 0] p_awid;
    wire                      [7 : 0] p_awlen;
    wire                      [2 : 0] p_awsize;
    wire                      [1 : 0] p_awburst;
    wire                              p_awlock;
    wire                      [3 : 0] p_awcache;
    wire                      [2 : 0] p_awprot;
    wire                      [3 : 0] p_awqos;
    wire                      [3 : 0] p_awregion;
    wire [C_M_AXI_AWUSER_WIDTH-1 : 0] p_awuser;
    // Read packet signal
    wire   [C_M_AXI_ADDR_WIDTH-1 : 0] p_araddr;
    wire     [C_M_AXI_ID_WIDTH-1 : 0] p_arid;
    wire                      [7 : 0] p_arlen;
    wire                      [2 : 0] p_arsize;
    wire                      [1 : 0] p_arburst;
    wire                              p_arlock;
    wire                      [3 : 0] p_arcache;
    wire                      [2 : 0] p_arprot;
    wire                      [3 : 0] p_arqos;
    wire                      [3 : 0] p_arregion;
    wire [C_M_AXI_ARUSER_WIDTH-1 : 0] p_aruser;

    wire                  [102-1 : 0] metadata;
    wire                   [16-1 : 0] wstrb_write [0 : 4-1];
    wire   [C_M_AXI_DATA_WIDTH-1 : 0] data [0 : 4-1];
    
    assign metadata       = packet_in[677 : 576];
    // TODO check the order !!
    assign wstrb_write[0] = packet_in[575 : 560];
    assign wstrb_write[1] = packet_in[559 : 544];
    assign wstrb_write[2] = packet_in[543 : 528];
    assign wstrb_write[3] = packet_in[527 : 512];
    assign data[0]        = packet_in[511 : 384];
    assign data[1]        = packet_in[383 : 256];
    assign data[2]        = packet_in[255 : 128];
    assign data[3]        = packet_in[127 :   0];

    // Decomposition of the read and write packet intot he corresponding and adequate signals
    assign packet_type = metadata[101 +: 1];
    assign {p_araddr, p_arid, p_arlen, p_arsize, p_arburst, p_arlock, p_arcache, p_arprot, p_arqos, p_arregion, p_aruser} = metadata[100 : 0];
    assign {p_awaddr, p_awid, p_awlen, p_awsize, p_awburst, p_awlock, p_awcache, p_awprot, p_awqos, p_awregion, p_awuser} = metadata[100 : 0];

	//I/O Connections. Write Address (AW)
	assign M_AXI_AWID	  = p_awid;
	assign M_AXI_AWADDR	  = p_awaddr;
	assign M_AXI_AWLEN	  = p_awlen;
	assign M_AXI_AWSIZE	  = p_awsize;
	assign M_AXI_AWBURST  = p_awburst;
	assign M_AXI_AWLOCK	  = p_awlock;
	assign M_AXI_AWCACHE  = p_awcache;
	assign M_AXI_AWPROT	  = p_awprot;
	assign M_AXI_AWQOS	  = p_awqos;
	assign M_AXI_AWUSER	  = p_awuser;
	assign M_AXI_AWVALID  = axi_awvalid;
	//Write Data(W)
	assign M_AXI_WLAST	  = axi_wlast;
	assign M_AXI_WVALID	  = axi_wvalid;
	assign M_AXI_ARID	  = p_arid;
	assign M_AXI_ARADDR	  = p_araddr;
	assign M_AXI_ARLEN    = p_arlen;
	assign M_AXI_ARSIZE	  = p_arsize;
	assign M_AXI_ARBURST  = p_arburst;
	assign M_AXI_ARLOCK	  = p_arlock;
	assign M_AXI_ARCACHE  = p_arcache;
	assign M_AXI_ARPROT	  = p_arprot;
	assign M_AXI_ARQOS	  = p_arqos;
	assign M_AXI_ARUSER	  = p_aruser;
	assign M_AXI_ARVALID  = axi_arvalid;
	assign init_txn_pulse = INIT_AXI_TXN;//(!init_txn_ff2) && init_txn_ff;

    always @(posedge M_AXI_ACLK)
    begin
        if (M_AXI_ARESETN == 0 )
        begin
            init_txn_ff <= 1'b0;
            init_txn_ff2 <= 1'b0;
        end
        else
        begin
            init_txn_ff <= INIT_AXI_TXN;
            init_txn_ff2 <= init_txn_ff;
        end
    end
    
    always @(posedge M_AXI_ACLK)
    begin
        if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )
            axi_awvalid <= 1'b0;
        else if (~axi_awvalid && start_single_burst_write)
            axi_awvalid <= 1'b1;
        else if (M_AXI_AWREADY && axi_awvalid)
            axi_awvalid <= 1'b0;
        else
            axi_awvalid <= axi_awvalid;
    end
    
    always @(posedge M_AXI_ACLK)
    begin
        if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)
            axi_awaddr <= p_awaddr;
        else if (M_AXI_AWREADY && axi_awvalid)
            axi_awaddr <= axi_awaddr;
        else
            axi_awaddr <= axi_awaddr;
    end

    always @(posedge M_AXI_ACLK)
    begin
        if(init_txn_pulse & packet_type) // implicit packet_type == 1 so packet is a write transaction
        begin
            start_single_burst_write <= 1;
            start_single_burst_read  <= 0;
        end
        else if(init_txn_pulse & !packet_type) // implicit packet_type == 1 so packet is a read transaction
        begin
            start_single_burst_write <= 0;
            start_single_burst_read  <= 1;
        end
        else
        begin
            start_single_burst_write <= 0;
            start_single_burst_read  <= 0;
        end
    end

    assign wnext = M_AXI_WREADY & axi_wvalid;

    always @(posedge M_AXI_ACLK)
    begin
        if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )
            axi_wvalid <= 1'b0;
        else if (~axi_wvalid && (M_AXI_AWREADY && axi_awvalid))
            axi_wvalid <= 1'b1;
        else if (wnext && axi_wlast)
            axi_wvalid <= 1'b0;
        else
            axi_wvalid <= axi_wvalid;
    end

    always @(posedge M_AXI_ACLK)
    begin
        if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )
            axi_wlast <= 1'b0;
        else if (((write_index == (p_awlen+1-2) && (p_awlen+1) >= 2) && wnext) || ((p_awlen+1) == 1 ))
            axi_wlast <= 1'b1;
        else if (wnext)
            axi_wlast <= 1'b0;
        else if (axi_wlast && (p_awlen+1) == 1)
            axi_wlast <= 1'b0;
        else
            axi_wlast <= axi_wlast;
    end

    always @(posedge M_AXI_ACLK)
    begin
        if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 || start_single_burst_write == 1'b1)
        begin
            write_index <= 0;
            M_AXI_WDATA <= data[0];
            M_AXI_WSTRB <= wstrb_write[0];
        end
        else if (wnext && (write_index != (p_awlen+1-1)))
        begin
            write_index <= write_index + 1;
            M_AXI_WDATA <= data[write_index+1];
            M_AXI_WSTRB <= wstrb_write[write_index+1];
        end
        else
        begin
            write_index <= write_index;
            M_AXI_WDATA <= M_AXI_WDATA;
            M_AXI_WSTRB <= M_AXI_WSTRB;
        end
    end

//    assign M_AXI_WDATA = data[write_index];
//    assign M_AXI_WSTRB = wstrb_write[write_index];

    always @(posedge M_AXI_ACLK)
    begin
        if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )
            axi_arvalid <= 1'b0;
        else if (~axi_arvalid && start_single_burst_read)
            axi_arvalid <= 1'b1;
        else if (M_AXI_ARREADY && axi_arvalid)
            axi_arvalid <= 1'b0;
        else
            axi_arvalid <= axi_arvalid;
    end

    always @(posedge M_AXI_ACLK)
    begin
        if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)
            axi_araddr <= p_araddr;
        else if (M_AXI_ARREADY && axi_arvalid)
            axi_araddr <= axi_araddr;
        else
            axi_araddr <= axi_araddr;
    end

    always @(posedge M_AXI_ACLK)
    begin
        if (M_AXI_ARESETN == 0 )
            rlast_ff <= 0;
        else
            rlast_ff <= (axi_arvalid & M_AXI_ARREADY);
    end

    always @(posedge M_AXI_ACLK)
    begin
        if (M_AXI_ARESETN == 0 )
            wlast_ff <= 0;
        else
            wlast_ff <= (axi_wlast & axi_wvalid & M_AXI_WREADY);
    end

    always @(posedge M_AXI_ACLK)
    begin
        if (M_AXI_ARESETN == 0)
            internal_packetConsumed <= 1;
        else if((!init_txn_ff) && INIT_AXI_TXN)
            internal_packetConsumed <= 0;
        else if (((!wlast_ff)&(axi_wlast & axi_wvalid & M_AXI_WREADY))|((!rlast_ff)&(axi_arvalid & M_AXI_ARREADY)))
            internal_packetConsumed <= 1;
    end

    assign packetConsumed = internal_packetConsumed;

endmodule
