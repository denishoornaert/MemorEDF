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
import design_static_bleacher_axi_vip_0_0_pkg::*;
import design_static_bleacher_axi_vip_0_1_pkg::*;

// AXI4_WRITE_BURST (id, addr, len, size, burst, lock, cache, prot, region, qos, awuser, data, wuser, resp)
//  AXI4_READ_BURST (id, addr, len, size, burst, lock, cache, prot, region, qos, aruser, data, resp, ruser)

module VIP_static_bleacher();


bit aclk = 0;
bit aresetn=0;

xil_axi_ulong addr1  = 40'h11ffff0000;
xil_axi_ulong addr2  = 40'h4800000000;
xil_axi_ulong addr3  = 40'h1010503000;
xil_axi_ulong addr4  = 40'h48FFFFFFFF;

xil_axi_ulong b_addr1   = 40'h0400000000;
xil_axi_ulong b_addr2   = 40'h0400004000;
xil_axi_ulong b_addr3   = 40'h0400008000;
xil_axi_ulong b_addr4   = 40'h040000c000;

//  indices                      76543210765432107654321076543210
bit [127 : 0] data_wr1    = 128'h00000020000000200000002000000020; // ABITRARY PERIOD
bit [127 : 0] data_wr2    = 128'h00000007000000070000000700000007; // ARBITRRY THRESHOLD
bit [127 : 0] data_wr3    = 128'h0000000b00000020000000080f0e0d0c; // MITS[2 : 0], Priorities
bit [127 : 0] data_wr4    = 128'h00000000000000030000000000000060; // reset, mode, hyperperiod, MITS[3]

xil_axi_size_t size = XIL_AXI_SIZE_16BYTE;
xil_axi_burst_t burst = XIL_AXI_BURST_TYPE_INCR;
xil_axi_lock_t lock = XIL_AXI_ALOCK_NOLOCK;
xil_axi_data_beat ruser;
xil_axi_prot_t  prot = 0;
xil_axi_resp_t 	resp;
xil_axi_resp_t 	[255:0] rresp;

always #5ns aclk = ~aclk;

design_static_bleacher_wrapper DUT
(
    .aclk_0(aclk),
    .aresetn_0(aresetn)
);

// Declare agent
design_static_bleacher_axi_vip_0_0_mst_t      master_agent;
design_static_bleacher_axi_vip_0_1_slv_mem_t  slv_mem_agent;

initial begin
    //Create an agent
    slv_mem_agent = new("slave vip agent",DUT.design_static_bleacher_i.axi_vip_1.inst.IF);
    slv_mem_agent.set_agent_tag("Slave VIP");
    slv_mem_agent.set_verbosity(400);
    slv_mem_agent.start_slave();
    
    master_agent = new("master vip agent",DUT.design_static_bleacher_i.axi_vip_0.inst.IF);
    master_agent.set_agent_tag("Master VIP");
    master_agent.set_verbosity(400);
    master_agent.start_master();
    
    // Finish the setup
    #20ns;
    aresetn = 1;
    
    #20ns
    master_agent.AXI4_WRITE_BURST(16'h040d, addr1, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_wr1, 1, resp);
    #20ns
    master_agent.AXI4_WRITE_BURST(16'h042d, addr2, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_wr2, 1, resp);
    #20ns
    master_agent.AXI4_READ_BURST( 16'h070d, addr3, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_wr3, rresp, ruser);
    #20ns
    master_agent.AXI4_READ_BURST( 16'h07ad, addr4, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_wr4, rresp, ruser);
    #50ns
    
    $finish;
end

endmodule