`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2020 05:08:27 PM
// Design Name: 
// Module Name: TB_AXI_TLB
// Project Name: 
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


import axi_vip_pkg::*;
import design_1_axi_vip_0_0_pkg::*;
import design_1_axi_vip_1_0_pkg::*;

// AXI4_WRITE_BURST (id, addr, len, size, burst, lock, cache, prot, region, qos, awuser, data, wuser, resp)
//  AXI4_READ_BURST (id, addr, len, size, burst, lock, cache, prot, region, qos, awuser, data, wuser, resp)

//enum scheduler {
//    tdma    = 0,
//    edf     = 1,
//    fp      = 2,
//    mg      = 3,
//    fibo    = 4,
//    gallois = 5
//};

module TB_MemorEDF();


bit aclk = 0;
bit aresetn=0;

xil_axi_uint max_outstanding_transactions = 8;

xil_axi_ulong addr1  = 40'h0000000000;
xil_axi_ulong addr2  = 40'h0000000010;
xil_axi_ulong addr3  = 40'h0000000020;
xil_axi_ulong addr4  = 40'h0000000030;
xil_axi_ulong addr5  = 40'h0000000040;
xil_axi_ulong addr6  = 40'h0000000050;
xil_axi_ulong addr7  = 40'h0000000060;

xil_axi_ulong b_addr1   = 40'h1000000000;
xil_axi_ulong b_addr2   = 40'h4800004000;
xil_axi_ulong b_addr3   = 40'h4800008000;
xil_axi_ulong b_addr4   = 40'h480000c000;

//  indices                      76543210765432107654321076543210
bit [127 : 0] data_wr1    = 128'h00000020000000200000002000000020; // ABITRARY PERIOD
bit [127 : 0] data_wr2    = 128'h00000007000000070000000700000007; // ARBITRRY THRESHOLD
bit [127 : 0] data_wr3    = 128'h0000000b00000020000000080f0e0d0c; // MITS[2 : 0], Priorities
bit [127 : 0] data_wr4    = 128'h00000000000000030000000000000060; // reset, mode, hyperperiod, MITS[3]

xil_axi_size_t size = XIL_AXI_SIZE_16BYTE;//3'b111;
xil_axi_burst_t fixed = XIL_AXI_BURST_TYPE_FIXED;//2'b00;
xil_axi_burst_t burst = XIL_AXI_BURST_TYPE_INCR;//2'b01;
xil_axi_burst_t wrap = XIL_AXI_BURST_TYPE_WRAP;//2'b10;
xil_axi_lock_t lock = XIL_AXI_ALOCK_NOLOCK;//2'b00;
xil_axi_data_beat ruser;
xil_axi_prot_t  prot = 0;
xil_axi_resp_t 	resp;
xil_axi_resp_t 	[255:0] rresp;

always #5ns aclk = ~aclk;

design_1_wrapper DUT
(
    .aclk_0(aclk),
    .aresetn_0(aresetn)
);

// Declare agent
design_1_axi_vip_0_0_mst_t      master_agent;
design_1_axi_vip_0_0_mst_t      b_master_agent;
design_1_axi_vip_0_0_mst_t      c_master_agent;
design_1_axi_vip_1_0_slv_mem_t  slv_mem_agent;

always @(posedge aclk)
begin
    #520ns;
    b_master_agent.send_multi_rdbursts(    
        8,          // input     xil_axi_uint      num_xfers,
        b_addr1,    // input     xil_axi_ulong     start_addr,
        16'h018d,   // input     xil_axi_uint      myid ,
        size,       // input     xil_axi_size_t    mysize,
        3,          // input     xil_axi_len_t     mylen,
        burst,      // input     xil_axi_burst_t   myburst,
        1           // input     bit               no_xfer_delays 
    );
    #20000ns;
end

initial begin
    //Create an agent
    slv_mem_agent = new("slave vip agent",DUT.design_1_i.axi_vip_1.inst.IF);
    slv_mem_agent.set_agent_tag("Slave VIP");
    slv_mem_agent.set_verbosity(400);
    slv_mem_agent.start_slave();
    
    master_agent = new("master vip agent",DUT.design_1_i.axi_vip_0.inst.IF);
    master_agent.set_agent_tag("Master VIP");
    master_agent.set_verbosity(400);
    master_agent.start_master();
    
    b_master_agent = new("master vip agent",DUT.design_1_i.axi_vip_2.inst.IF);
    b_master_agent.set_agent_tag("Master VIP");
    b_master_agent.set_verbosity(400);
    b_master_agent.set_rd_transaction_depth(max_outstanding_transactions);
    b_master_agent.set_wr_transaction_depth(max_outstanding_transactions);
    b_master_agent.enable_transaction_depth_checks();
    b_master_agent.start_master();
        
    $display("b master depth %u", b_master_agent.get_rd_transaction_depth());
    $display("b master depth %u", b_master_agent.get_wr_transaction_depth());
    
    c_master_agent = new("master vip agent",DUT.design_1_i.axi_vip_3.inst.IF);
    c_master_agent.set_agent_tag("Master VIP");
    c_master_agent.set_verbosity(400);
    c_master_agent.set_rd_transaction_depth(max_outstanding_transactions);
    c_master_agent.set_wr_transaction_depth(max_outstanding_transactions);
    c_master_agent.enable_transaction_depth_checks();
    c_master_agent.start_master();
        
    $display("c master depth %u", c_master_agent.get_rd_transaction_depth());
    $display("c master depth %u", c_master_agent.get_wr_transaction_depth());
    
    // Finish the setup
    #20ns;
    aresetn = 1;
    
    #20ns
    master_agent.AXI4_WRITE_BURST(0, addr1, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_wr1, 1, resp);
    #20ns
    master_agent.AXI4_WRITE_BURST(0, addr2, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_wr2, 1, resp);
    #20ns
    master_agent.AXI4_WRITE_BURST(0, addr3, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_wr3, 1, resp);
    #20ns
    master_agent.AXI4_WRITE_BURST(0, addr4, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_wr4, 1, resp);
    #50ns
    
    // WRITE PHASE
    #20ns
    c_master_agent.send_multi_rdbursts(    
        8,          //input     xil_axi_uint       num_xfers,
        b_addr3,    //input     xil_axi_ulong      start_addr,
        16'h01ad,   //input     xil_axi_uint       myid ,
        size,       //input     xil_axi_size_t     mysize,
        3,          //input     xil_axi_len_t      mylen,
        burst,      //input     xil_axi_burst_t    myburst,
        1           //input     bit                no_xfer_delays 
    );
    
    #50ns
    
    $finish;
end

endmodule