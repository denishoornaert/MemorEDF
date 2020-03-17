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
		// Base address of targeted slave
		parameter  C_M_TARGET_SLAVE_BASE_ADDR	= 40'h4000000000,
		// Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths
		parameter integer C_M_AXI_BURST_LEN	    = 16,
		// Thread ID Width
		parameter integer C_M_AXI_ID_WIDTH	    = 16,
		// Width of Address Bus
		parameter integer C_M_AXI_ADDR_WIDTH	= 32,
		// Width of Data Bus
		parameter integer C_M_AXI_DATA_WIDTH	= 128,
		// Width of User Write Address Bus
		parameter integer C_M_AXI_AWUSER_WIDTH	= 0,
		// Width of User Read Address Bus
		parameter integer C_M_AXI_ARUSER_WIDTH	= 0,
		// Width of User Write Data Bus
		parameter integer C_M_AXI_WUSER_WIDTH	= 0,
		// Width of User Read Data Bus
		parameter integer C_M_AXI_RUSER_WIDTH	= 0,
		// Width of User Response Bus
		parameter integer C_M_AXI_BUSER_WIDTH	= 0
	)
	(
		// Initiate AXI transactions
		input wire  INIT_AXI_TXN,
		// Global Clock Signal.
		input wire  M_AXI_ACLK,
		// Global Reset Singal. This Signal is Active Low
		input wire  M_AXI_ARESETN,
		// Master Interface Write Address ID
		output wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_AWID,
		// Master Interface Write Address
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_AWADDR,
		// Burst length. The burst length gives the exact number of transfers in a burst
		output wire [7 : 0] M_AXI_AWLEN,
		// Burst size. This signal indicates the size of each transfer in the burst
		output wire [2 : 0] M_AXI_AWSIZE,
		// Burst type. The burst type and the size information, 
    // determine how the address for each transfer within the burst is calculated.
		output wire [1 : 0] M_AXI_AWBURST,
		// Lock type. Provides additional information about the
    // atomic characteristics of the transfer.
		output wire  M_AXI_AWLOCK,
		// Memory type. This signal indicates how transactions
    // are required to progress through a system.
		output wire [3 : 0] M_AXI_AWCACHE,
		// Protection type. This signal indicates the privilege
    // and security level of the transaction, and whether
    // the transaction is a data access or an instruction access.
		output wire [2 : 0] M_AXI_AWPROT,
		// Quality of Service, QoS identifier sent for each write transaction.
		output wire [3 : 0] M_AXI_AWQOS,
		// Optional User-defined signal in the write address channel.
		output wire [C_M_AXI_AWUSER_WIDTH-1 : 0] M_AXI_AWUSER,
		// Write address valid. This signal indicates that
    // the channel is signaling valid write address and control information.
		output wire  M_AXI_AWVALID,
		// Write address ready. This signal indicates that
    // the slave is ready to accept an address and associated control signals
		input wire  M_AXI_AWREADY,
		// Master Interface Write Data.
		output wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_WDATA,
		// Write strobes. This signal indicates which byte
    // lanes hold valid data. There is one write strobe
    // bit for each eight bits of the write data bus.
		output wire [C_M_AXI_DATA_WIDTH/8-1 : 0] M_AXI_WSTRB,
		// Write last. This signal indicates the last transfer in a write burst.
		output wire  M_AXI_WLAST,
		// Optional User-defined signal in the write data channel.
//		output wire [C_M_AXI_WUSER_WIDTH-1 : 0] M_AXI_WUSER,
		// Write valid. This signal indicates that valid write
    // data and strobes are available
		output wire  M_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    // can accept the write data.
		input wire  M_AXI_WREADY,
		// Master Interface Write Response.
		input wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_BID,
		// Write response. This signal indicates the status of the write transaction.
		input wire [1 : 0] M_AXI_BRESP,
		// Optional User-defined signal in the write response channel
//		input wire [C_M_AXI_BUSER_WIDTH-1 : 0] M_AXI_BUSER,
		// Write response valid. This signal indicates that the
    // channel is signaling a valid write response.
		input wire  M_AXI_BVALID,
		// Response ready. This signal indicates that the master
    // can accept a write response.
		output wire  M_AXI_BREADY,
		// Master Interface Read Address.
		output wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_ARID,
		// Read address. This signal indicates the initial
    // address of a read burst transaction.
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_ARADDR,
		// Burst length. The burst length gives the exact number of transfers in a burst
		output wire [7 : 0] M_AXI_ARLEN,
		// Burst size. This signal indicates the size of each transfer in the burst
		output wire [2 : 0] M_AXI_ARSIZE,
		// Burst type. The burst type and the size information, 
    // determine how the address for each transfer within the burst is calculated.
		output wire [1 : 0] M_AXI_ARBURST,
		// Lock type. Provides additional information about the
    // atomic characteristics of the transfer.
		output wire  M_AXI_ARLOCK,
		// Memory type. This signal indicates how transactions
    // are required to progress through a system.
		output wire [3 : 0] M_AXI_ARCACHE,
		// Protection type. This signal indicates the privilege
    // and security level of the transaction, and whether
    // the transaction is a data access or an instruction access.
		output wire [2 : 0] M_AXI_ARPROT,
		// Quality of Service, QoS identifier sent for each read transaction
		output wire [3 : 0] M_AXI_ARQOS,
		// Optional User-defined signal in the read address channel.
		output wire [C_M_AXI_ARUSER_WIDTH-1 : 0] M_AXI_ARUSER,
		// Write address valid. This signal indicates that
    // the channel is signaling valid read address and control information
		output wire  M_AXI_ARVALID,
		// Read address ready. This signal indicates that
    // the slave is ready to accept an address and associated control signals
		input wire  M_AXI_ARREADY,
		// Read ID tag. This signal is the identification tag
    // for the read data group of signals generated by the slave.
//		input wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_RID,
		// Master Read Data
//		input wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_RDATA,
		// Read response. This signal indicates the status of the read transfer
//		input wire [1 : 0] M_AXI_RRESP,
		// Read last. This signal indicates the last transfer in a read burst
		input wire  M_AXI_RLAST,
		// Optional User-defined signal in the read address channel.
//		input wire [C_M_AXI_RUSER_WIDTH-1 : 0] M_AXI_RUSER,
		// Read valid. This signal indicates that the channel
    // is signaling the required read data.
//		input wire  M_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    // accept the read data and response information.
//		output wire  M_AXI_RREADY,
		
		// Packet to serialise
		input wire [(102+(4*16)+(4*C_M_AXI_DATA_WIDTH))-1 : 0] packet_in,
		output wire packetConsumed
	);


	// function called clogb2 that returns an integer which has the
	//value of the ceiling of the log base 2

	  // function called clogb2 that returns an integer which has the 
	  // value of the ceiling of the log base 2.                      
	  function integer clogb2 (input integer bit_depth);              
	  begin                                                           
	    for(clogb2=0; bit_depth>0; clogb2=clogb2+1)                   
	      bit_depth = bit_depth >> 1;                                 
	    end                                                           
	  endfunction                                                     

	// C_TRANSACTIONS_NUM is the width of the index counter for 
	// number of write or read transaction.
	 localparam integer C_TRANSACTIONS_NUM = clogb2(C_M_AXI_BURST_LEN-1);

	// Burst length for transactions, in C_M_AXI_DATA_WIDTHs.
	// Non-2^n lengths will eventually cause bursts across 4K address boundaries.
	 localparam integer C_MASTER_LENGTH	= 12;
	// total number of burst transfers is master length divided by burst length and burst size
	 localparam integer C_NO_BURSTS_REQ = C_MASTER_LENGTH-clogb2((C_M_AXI_BURST_LEN*C_M_AXI_DATA_WIDTH/8)-1);

	// AXI4LITE signals
	//AXI4 internal temp signals
	reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	                        axi_awvalid;
	reg [C_M_AXI_DATA_WIDTH-1 : 0] 	axi_wdata;
	reg  	                        axi_wlast;
	reg  	                        axi_wvalid;
	reg  	                        axi_bready;
	reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	                        axi_arvalid;
//	reg  	                        axi_rready;
	//write beat count in a burst
	reg [C_TRANSACTIONS_NUM : 0] 	write_index;
	//read beat count in a burst
//	reg [C_TRANSACTIONS_NUM : 0] 	read_index;
	reg  	                        start_single_burst_write;
	reg  	                        start_single_burst_read;
	//Interface response error flags
	wire  	                        wnext;
//	wire  	                        rnext;
	reg  	                        init_txn_ff;
	reg  	                        init_txn_ff2;
	wire  	                        init_txn_pulse;

    // Packet meta-data decomposition
    wire packet_type;
    // Write packet signals
    wire [C_M_AXI_ADDR_WIDTH-1 : 0] p_awaddr;
    wire [C_M_AXI_ID_WIDTH-1 : 0] p_awid;
    wire [7 : 0]  p_awlen;
    wire [2 : 0]  p_awsize;
    wire [1 : 0]  p_awburst;
    wire          p_awlock;
    wire [3 : 0]  p_awcache;
    wire [2 : 0]  p_awprot;
    wire [3 : 0]  p_awqos;
    wire [3 : 0]  p_awregion;
    wire [C_M_AXI_AWUSER_WIDTH-1 : 0] p_awuser;
//    wire p_awuser;
//    wire p_wuser;
//    wire [(C_M_AXI_DATA_WIDTH/8)-1 : 0] p_wstrb;
    // Read packet signal
    wire [C_M_AXI_ADDR_WIDTH-1 : 0] p_araddr;
    wire [C_M_AXI_ID_WIDTH-1 : 0] p_arid;
    wire [7 : 0]  p_arlen;
    wire [2 : 0]  p_arsize;
    wire [1 : 0]  p_arburst;
    wire          p_arlock;
    wire [3 : 0]  p_arcache;
    wire [2 : 0]  p_arprot;
    wire [3 : 0]  p_arqos;
    wire [3 : 0]  p_arregion;
    wire [C_M_AXI_ARUSER_WIDTH-1 : 0] p_aruser;
//    wire p_aruser;
    
    wire                [102-1 : 0] metadata;
    wire                 [16-1 : 0] wstrb_write [0 : 4-1];
    wire [C_M_AXI_DATA_WIDTH-1 : 0] data [0 : 4-1];
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

	// I/O Connections assignments

	//I/O Connections. Write Address (AW)
	assign M_AXI_AWID	  = p_awid;
	//The AXI address is a concatenation of the target base address + active offset range
	assign M_AXI_AWADDR	  = axi_awaddr;
	//Burst LENgth is number of transaction beats, minus 1
	assign M_AXI_AWLEN	  = p_awlen;
	//Size should be C_M_AXI_DATA_WIDTH, in 2^SIZE bytes, otherwise narrow bursts are used
	assign M_AXI_AWSIZE	  = p_awsize;
	//INCR burst type is usually used, except for keyhole bursts
	assign M_AXI_AWBURST  = p_awburst;
	assign M_AXI_AWLOCK	  = p_awlock;
	//Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache. 
	assign M_AXI_AWCACHE  = p_awcache;
	assign M_AXI_AWPROT	  = p_awprot;
	assign M_AXI_AWQOS	  = p_awqos;
	assign M_AXI_AWUSER	  = p_awuser;
	assign M_AXI_AWVALID  = axi_awvalid;
	//Write Data(W)
	assign M_AXI_WDATA	  = axi_wdata;
	//All bursts are complete and aligned in this example
	assign M_AXI_WLAST	  = axi_wlast;
//	assign M_AXI_WUSER	  = p_wuser;
	assign M_AXI_WVALID	  = axi_wvalid;
	//Write Response (B)
	assign M_AXI_BREADY	  = axi_bready;
	//Read Address (AR)
	assign M_AXI_ARID	  = p_arid;
	assign M_AXI_ARADDR	  = axi_araddr;
	//Burst LENgth is number of transaction beats, minus 1
	assign M_AXI_ARLEN    = p_arlen;
	//Size should be C_M_AXI_DATA_WIDTH, in 2^n bytes, otherwise narrow bursts are used
	assign M_AXI_ARSIZE	  = p_arsize;
	//INCR burst type is usually used, except for keyhole bursts
	assign M_AXI_ARBURST  = p_arburst;
	assign M_AXI_ARLOCK	  = p_arlock;
	//Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache. 
	assign M_AXI_ARCACHE  = p_arcache;
	assign M_AXI_ARPROT	  = p_arprot;
	assign M_AXI_ARQOS	  = p_arqos;
	assign M_AXI_ARUSER	  = p_aruser;
	assign M_AXI_ARVALID  = axi_arvalid;
	//Read and Read Response (R)
//	assign M_AXI_RREADY	  = axi_rready;
	assign init_txn_pulse = (!init_txn_ff) && INIT_AXI_TXN;

	//Generate a pulse to initiate AXI transaction.
	always @(posedge M_AXI_ACLK)										      
	  begin                                                                        
	    // Initiates AXI transaction delay    
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


	//--------------------
	//Write Address Channel
	//--------------------

	// The purpose of the write address channel is to request the address and 
	// command information for the entire transaction.  It is a single beat
	// of information.

	// The AXI4 Write address channel in this example will continue to initiate
	// write commands as fast as it is allowed by the slave/interconnect.
	// The address will be incremented on each accepted address transaction,
	// by burst_size_byte to point to the next address. 

	  always @(posedge M_AXI_ACLK)                                   
	  begin                                                                
	                                                                       
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                           
	      begin                                                            
	        axi_awvalid <= 1'b0;                                           
	      end                                                              
	    // If previously not valid , start next transaction                
	    else if (~axi_awvalid && start_single_burst_write)                 
	      begin                                                            
	        axi_awvalid <= 1'b1;                                           
	      end                                                              
	    /* Once asserted, VALIDs cannot be deasserted, so axi_awvalid      
	    must wait until transaction is accepted */                         
	    else if (M_AXI_AWREADY && axi_awvalid)                             
	      begin                                                            
	        axi_awvalid <= 1'b0;                                           
	      end                                                              
	    else                                                               
	      axi_awvalid <= axi_awvalid;                                      
	    end                                                                
	                                                                       
	                                                                       
	// Next address after AWREADY indicates previous address acceptance    
	  always @(posedge M_AXI_ACLK)                                         
	  begin                                                                
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                            
	      begin                                                            
	        axi_awaddr <= p_awaddr;                                             
	      end                                                              
	    else if (M_AXI_AWREADY && axi_awvalid)                             
	      begin                                                            
	        axi_awaddr <= axi_awaddr;// + (C_M_AXI_DATA_WIDTH/8);
	      end                                                              
	    else                                                               
	      axi_awaddr <= axi_awaddr;                                        
	    end                                                                


	//--------------------
	//Write Data Channel
	//--------------------

	//The write data will continually try to push write data across the interface.

	//The amount of data accepted will depend on the AXI slave and the AXI
	//Interconnect settings, such as if there are FIFOs enabled in interconnect.

	//Note that there is no explicit timing relationship to the write address channel.
	//The write channel has its own throttling flag, separate from the AW channel.

	//Synchronization between the channels must be determined by the user.

	//The simpliest but lowest performance would be to only issue one address write
	//and write data burst at a time.

	//In this example they are kept in sync by using the same address increment
	//and burst sizes. Then the AW and W channels have their transactions measured
	//with threshold counters as part of the user logic, to make sure neither 
	//channel gets too far ahead of each other.

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

	//Forward movement occurs when the write channel is valid and ready

	  assign wnext = M_AXI_WREADY & axi_wvalid;                                   
	                                                                                    
	// WVALID logic, similar to the axi_awvalid always block above                      
	  always @(posedge M_AXI_ACLK)                                                      
	  begin                                                                             
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                                        
	      begin                                                                         
	        axi_wvalid <= 1'b0;                                                         
	      end                                                                           
	    // If previously not valid, start next transaction                              
	    else if (~axi_wvalid && start_single_burst_write)                               
	      begin                                                                         
	        axi_wvalid <= 1'b1;                                                         
	      end                                                                           
	    /* If WREADY and too many writes, throttle WVALID                               
	    Once asserted, VALIDs cannot be deasserted, so WVALID                           
	    must wait until burst is complete with WLAST */                                 
	    else if (wnext && axi_wlast)                                                    
	      axi_wvalid <= 1'b0;                                                           
	    else                                                                            
	      axi_wvalid <= axi_wvalid;                                                     
	  end                                                                               
	                                                                                    
	                                                                                    
	//WLAST generation on the MSB of a counter underflow                                
	// WVALID logic, similar to the axi_awvalid always block above                      
	  always @(posedge M_AXI_ACLK)                                                      
	  begin                                                                             
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                                        
	      begin                                                                         
	        axi_wlast <= 1'b0;                                                          
	      end                                                                           
	    // axi_wlast is asserted when the write index                                   
	    // count reaches the penultimate count to synchronize                           
	    // with the last write data when write_index is b1111                           
	    // else if (&(write_index[C_TRANSACTIONS_NUM-1:1])&& ~write_index[0] && wnext)  
	    else if (((write_index == C_M_AXI_BURST_LEN-2 && C_M_AXI_BURST_LEN >= 2) && wnext) || (C_M_AXI_BURST_LEN == 1 ))
	      begin                                                                         
	        axi_wlast <= 1'b1;                                                          
	      end                                                                           
	    // Deassrt axi_wlast when the last write data has been                          
	    // accepted by the slave with a valid response                                  
	    else if (wnext)                                                                 
	      axi_wlast <= 1'b0;                                                            
	    else if (axi_wlast && C_M_AXI_BURST_LEN == 1)                                   
	      axi_wlast <= 1'b0;                                                            
	    else                                                                            
	      axi_wlast <= axi_wlast;                                                       
	  end                                                                               
	                                                                                    
	                                                                                    
	/* Burst length counter. Uses extra counter register bit to indicate terminal       
	 count to reduce decode logic */                                                    
	  always @(posedge M_AXI_ACLK)                                                      
	  begin                                                                             
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 || start_single_burst_write == 1'b1)    
	      begin                                                                         
	        write_index <= 0;                                                           
	      end                                                                           
	    else if (wnext && (write_index != C_M_AXI_BURST_LEN-1))                         
	      begin                                                                         
	        write_index <= write_index + 1;                                             
	      end                                                                           
	    else                                                                            
	      write_index <= write_index;                                                   
	  end                                                                               
	                                                                                    
	                                                                                    
    /* Write Data Generator                                                             
    Data pattern is only a simple incrementing count from 0 for each burst  */         
    always @(posedge M_AXI_ACLK)                                                      
    begin                                                                             
        if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                         
            axi_wdata <= data[write_index];                                                            
        //else if (wnext && axi_wlast)                                                  
        //  axi_wdata <= 'b0;                                                           
        else if (wnext)                                                                 
            axi_wdata <= data[write_index];                                                   
        else                                                                            
            axi_wdata <= data[write_index];                                                       
    end
    assign M_AXI_WSTRB = wstrb_write[write_index];

	//----------------------------
	//Write Response (B) Channel
	//----------------------------

	//The write response channel provides feedback that the write has committed
	//to memory. BREADY will occur when all of the data and the write address
	//has arrived and been accepted by the slave.

	//The write issuance (number of outstanding write addresses) is started by 
	//the Address Write transfer, and is completed by a BREADY/BRESP.

	//While negating BREADY will eventually throttle the AWREADY signal, 
	//it is best not to throttle the whole data channel this way.

	//The BRESP bit [1] is used indicate any errors from the interconnect or
	//slave for the entire write burst. This example will capture the error 
	//into the ERROR output. 

	  always @(posedge M_AXI_ACLK)                                     
	  begin                                                                 
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                            
	      begin                                                             
	        axi_bready <= 1'b0;                                             
	      end                                                               
	    // accept/acknowledge bresp with axi_bready by the master           
	    // when M_AXI_BVALID is asserted by slave                           
	    else if (M_AXI_BVALID && ~axi_bready)                               
	      begin                                                             
	        axi_bready <= 1'b1;                                             
	      end                                                               
	    // deassert after one clock cycle                                   
	    else if (axi_bready)                                                
	      begin                                                             
	        axi_bready <= 1'b0;                                             
	      end                                                               
	    // retain the previous value                                        
	    else                                                                
	      axi_bready <= axi_bready;                                         
	  end


	//----------------------------
	//Read Address Channel
	//----------------------------

	//The Read Address Channel (AW) provides a similar function to the
	//Write Address channel- to provide the tranfer qualifiers for the burst.

	//In this example, the read address increments in the same
	//manner as the write address channel.

	  always @(posedge M_AXI_ACLK)                                 
	  begin                                                              
	                                                                     
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                         
	      begin                                                          
	        axi_arvalid <= 1'b0;                                         
	      end                                                            
	    // If previously not valid , start next transaction              
	    else if (~axi_arvalid && start_single_burst_read)                
	      begin                                                          
	        axi_arvalid <= 1'b1;                                         
	      end                                                            
	    else if (M_AXI_ARREADY && axi_arvalid)                           
	      begin                                                          
	        axi_arvalid <= 1'b0;                                         
	      end                                                            
	    else                                                             
	      axi_arvalid <= axi_arvalid;                                    
	  end                                                                
	                                                                     
	                                                                     
	// Next address after ARREADY indicates previous address acceptance  
	  always @(posedge M_AXI_ACLK)                                       
	  begin                                                              
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                          
	      begin                                                          
	        axi_araddr <= p_araddr;                                           
	      end                                                            
	    else if (M_AXI_ARREADY && axi_arvalid)                           
	      begin                                                          
	        axi_araddr <= axi_araddr;// + (C_M_AXI_DATA_WIDTH/8);
	      end                                                            
	    else                                                             
	      axi_araddr <= axi_araddr;                                      
	  end                                                                


//	//--------------------------------
//	//Read Data (and Response) Channel
//	//--------------------------------

//	 // Forward movement occurs when the channel is valid and ready   
//	  assign rnext = M_AXI_RVALID && axi_rready;                            
	                                                                        
	                                                                        
//	// Burst length counter. Uses extra counter register bit to indicate    
//	// terminal count to reduce decode logic                                
//	  always @(posedge M_AXI_ACLK)                                          
//	  begin                                                                 
//	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 || start_single_burst_read)                  
//	      begin                                                             
//	        read_index <= 0;                                                
//	      end                                                               
//	    else if (rnext && (read_index != C_M_AXI_BURST_LEN-1))              
//	      begin                                                             
//	        read_index <= read_index + 1;                                   
//	      end                                                               
//	    else                                                                
//	      read_index <= read_index;                                         
//	  end                                                                   
	                                                                        
	                                                                        
//	/*                                                                      
//	 The Read Data channel returns the results of the read request          
	                                                                        
//	 In this example the data checker is always able to accept              
//	 more data, so no need to throttle the RREADY signal                    
//	 */                                                                     
//	  always @(posedge M_AXI_ACLK)                                          
//	  begin                                                                 
//	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                  
//	      begin                                                             
//	        axi_rready <= 1'b0;                                             
//	      end                                                               
//	    // accept/acknowledge rdata/rresp with axi_rready by the master     
//	    // when M_AXI_RVALID is asserted by slave                           
//	    else if (M_AXI_RVALID)                       
//	      begin                                      
//	         if (M_AXI_RLAST && axi_rready)          
//	          begin                                  
//	            axi_rready <= 1'b0;                  
//	          end                                    
//	         else                                    
//	           begin                                 
//	             axi_rready <= 1'b1;                 
//	           end                                   
//	      end
//	  end      
	  
    reg rlast_ff;
    // The "has been consumed" signal
    always @(posedge M_AXI_ACLK)                                              
    begin                                                                        
        // Initiates AXI transaction delay    
        if (M_AXI_ARESETN == 0 )                                                   
        begin                                                  
            rlast_ff <= 1'b0;                                                   
        end                                                                               
        else                                                                       
        begin  
            rlast_ff <= M_AXI_RLAST;                                                                
        end                                                                      
    end
    
    reg wlast_ff;
    // The "has been consumed" signal
    always @(posedge M_AXI_ACLK)                                              
    begin                                                                        
        // Initiates AXI transaction delay    
        if (M_AXI_ARESETN == 0 )                                                   
        begin                                                  
            wlast_ff <= 1'b0;                                                 
        end                                                                               
        else                                                                       
        begin  
            wlast_ff <= axi_wlast;                                                             
        end                                                                      
    end
    
    reg internal_packetConsumed;
    
    always @(posedge M_AXI_ACLK)
    begin                                                                        
        // Initiates AXI transaction delay    
        if (M_AXI_ARESETN == 0)                                                   
        begin                                                  
            internal_packetConsumed <= 1'b1;                                                   
        end
        else if( init_txn_pulse == 1'b1 )
        begin
            internal_packetConsumed <= 0;  
        end 
        else if (((!wlast_ff)&(axi_wlast))|((!rlast_ff)&(M_AXI_RLAST)))
        begin  
            internal_packetConsumed <= 1;                                                              
        end
    end
    
    assign packetConsumed = internal_packetConsumed;

	endmodule
