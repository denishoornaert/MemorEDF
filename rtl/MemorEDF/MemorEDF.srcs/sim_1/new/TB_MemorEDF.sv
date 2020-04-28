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
import design_1_axi_vip_0_1_pkg::*;

// AXI4_WRITE_BURST (id, addr, len, size, burst, lock, cache, prot, region, qos, awuser, data, wuser, resp)
//  AXI4_READ_BURST (id, addr, len, size, burst, lock, cache, prot, region, qos, awuser, data, wuser, resp)

module TB_MemorEDF();


bit aclk = 0;
bit aresetn=0;

xil_axi_ulong addr1  = 40'h0000000000;
xil_axi_ulong addr11 = 40'h0000000004;
xil_axi_ulong addr12 = 40'h0000000008;
xil_axi_ulong addr13 = 40'h000000000c;
xil_axi_ulong addr2  = 40'h0000000010;
xil_axi_ulong addr3  = 40'h0000000020;
xil_axi_ulong addr4  = 40'h0000000030;

xil_axi_ulong b_addr1   = 40'h0400000000;
xil_axi_ulong b_addr2   = 40'h0400000010;
xil_axi_ulong b_addr3   = 40'h0400000020;
xil_axi_ulong b_addr4   = 40'h0400000030;
xil_axi_ulong b_addr5   = 40'h0400000040;
xil_axi_ulong b_addr6   = 40'h0400000050;
xil_axi_ulong b_addr7   = 40'h0400000060;
xil_axi_ulong b_addr8   = 40'h0400000070;
xil_axi_ulong b_addr9   = 40'h0400000080;
xil_axi_ulong b_addr10  = 40'h0400000090;
xil_axi_ulong b_addr11  = 40'h04000000A0;
xil_axi_ulong b_addr12  = 40'h04000000B0;
xil_axi_ulong b_addr13  = 40'h04000000C0;

//  indices                    76543210765432107654321076543210
bit [127 : 0] data_wr1  = 128'h00000000000000000000000000000100; // ABITRARY PERIOD
bit [127 : 0] data_wr11 = 128'h00000000000000000000000000000000; // ABITRARY PERIOD
bit [127 : 0] data_wr12 = 128'h00000000000000000000000000000000; // ABITRARY PERIOD
bit [127 : 0] data_wr13 = 128'h00000000000000000000000000000000; // ABITRARY PERIOD
bit [127 : 0] data_wr2  = 128'h00000000000000000000000000000000; // ARBITRRY AND MEANINGLESS DEADLINE
bit [127 : 0] data_wr3  = 128'h00000000000000000000000000000000; // MODE is 0 for TDMA
bit [127 : 0] data_wr4  = 128'h00000000000000000000000000000000; // Place holder

//  indices                       76543210765432107654321076543210
bit [127 : 0] b_data_wr1   = 128'h0d000000000000001111111111111111;
bit [127 : 0] b_data_wr2   = 128'h01000000000000002222222222222222;
bit [127 : 0] b_data_wr3   = 128'h02000000000000003333333333333333;
bit [127 : 0] b_data_wr4   = 128'h03000000000000004444444444444444;
bit [127 : 0] b_data_wr5   = 128'h04000000000000005555555555555555;
bit [127 : 0] b_data_wr6   = 128'h05000000000000006666666666666666;
bit [127 : 0] b_data_wr7   = 128'h06000000000000007777777777777777;
bit [127 : 0] b_data_wr8   = 128'h07000000000000008888888888888888;
bit [127 : 0] b_data_wr9   = 128'h08000000000000009999999999999999;
bit [127 : 0] b_data_wr10  = 128'h0900000000000000aaaaaaaaaaaaaaaa;
bit [127 : 0] b_data_wr11  = 128'h0a00000000000000bbbbbbbbbbbbbbbb;
bit [127 : 0] b_data_wr12  = 128'h0b00000000000000cccccccccccccccc;
bit [127 : 0] b_data_wr13  = 128'h0c00000000000000dddddddddddddddd;

bit [127 : 0] data_rd1;
bit [127 : 0] data_rd2;
bit [127 : 0] data_rd3;
bit [127 : 0] data_rd4;
bit [127 : 0] data_rd5;
bit [127 : 0] data_rd6;
bit [127 : 0] data_rd7;
bit [127 : 0] data_rd8;
bit [127 : 0] data_rd9;
bit [127 : 0] data_rd10;
bit [127 : 0] data_rd11;
bit [127 : 0] data_rd12;
bit [127 : 0] data_rd13;

xil_axi_size_t size = XIL_AXI_SIZE_4BYTE;//3'b111;
xil_axi_burst_t burst = XIL_AXI_BURST_TYPE_INCR;//2'b00;
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
design_1_axi_vip_0_1_slv_mem_t  slv_mem_agent;

initial begin
    //Create an agent
    slv_mem_agent = new("slave vip agent",DUT.design_1_i.axi_vip_1.inst.IF);
    
    // set tag for agents for easy debug
    slv_mem_agent.set_agent_tag("Slave VIP");
    
    // set print out verbosity level.
    slv_mem_agent.set_verbosity(400);
    
    //Start the agent
    slv_mem_agent.start_slave();
    
    //Create an agent
    master_agent = new("master vip agent",DUT.design_1_i.axi_vip_0.inst.IF);
 
    // set tag for agents for easy debug
    master_agent.set_agent_tag("Master VIP");
 
    // set print out verbosity level.
    master_agent.set_verbosity(400);
 
    //Start the agent
    master_agent.start_master();
    
    //Create an agent
    b_master_agent = new("master vip agent",DUT.design_1_i.axi_vip_2.inst.IF);
 
    // set tag for agents for easy debug
    b_master_agent.set_agent_tag("Master VIP");
 
    // set print out verbosity level.
    b_master_agent.set_verbosity(400);
 
    //Start the agent
    b_master_agent.start_master();
    
    // Finish the setup
    #20ns;
    aresetn = 1;
    
    #20ns
    master_agent.AXI4LITE_WRITE_BURST(addr1,prot,data_wr1,resp);
    #20ns
    master_agent.AXI4LITE_WRITE_BURST(addr11,prot,data_wr11,resp);
    #20ns
    master_agent.AXI4LITE_WRITE_BURST(addr12,prot,data_wr12,resp);
    #20ns
    master_agent.AXI4LITE_WRITE_BURST(addr13,prot,data_wr13,resp);
    #20ns
    master_agent.AXI4LITE_WRITE_BURST(addr2,prot,data_wr2,resp);
    #20ns
    master_agent.AXI4LITE_WRITE_BURST(addr3,prot,data_wr3,resp);
    #20ns
    master_agent.AXI4LITE_WRITE_BURST(addr4,prot,data_wr4,resp);
    #50ns
    
    #20ns
    master_agent.AXI4LITE_READ_BURST(addr1,prot,data_rd1,resp);
    #20ns
    master_agent.AXI4LITE_READ_BURST(addr2,prot,data_rd2,resp);
    #20ns
    master_agent.AXI4LITE_READ_BURST(addr3,prot,data_rd3,resp);
    #20ns
    master_agent.AXI4LITE_READ_BURST(addr4,prot,data_rd4,resp);
    #20ns
    
    #50ns
    if((data_wr1 == data_rd1)&&(data_wr2 == data_rd2))
    begin
        $display("Data match, test succeeded");
    end
    else
    begin
        $display("Data do not match, test failed");
        $display("1)  Received %h but expectd %h", data_rd1, data_wr1);
        $display("2)  Received %h but expectd %h", data_rd2, data_wr2);
        $display("3)  Received %h but expectd %h", data_rd3, data_wr3);
        $display("4)  Received %h but expectd %h", data_rd4, data_wr4);
    end
    
    // WRITE PHASE
    #20ns
    b_master_agent.AXI4_WRITE_BURST(16'h0180+(0), b_addr1, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, b_data_wr1, 1, resp);
    #20ns
    b_master_agent.AXI4_WRITE_BURST(16'h0180+(1), b_addr2, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, b_data_wr2, 1, resp);
    #20ns
    b_master_agent.AXI4_WRITE_BURST(16'h0180+(2), b_addr3, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, b_data_wr3, 1, resp);
    #20ns
    b_master_agent.AXI4_WRITE_BURST(16'h0180+(3), b_addr4, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, b_data_wr4, 1, resp);
    #20ns
    b_master_agent.AXI4_WRITE_BURST(16'h0180+(4), b_addr5, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, b_data_wr5, 1, resp);
    #20ns
    b_master_agent.AXI4_WRITE_BURST(16'h0180+(5), b_addr6, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, b_data_wr6, 1, resp);
    #20ns
    b_master_agent.AXI4_WRITE_BURST(16'h0180+(6), b_addr7, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, b_data_wr7, 1, resp);
    #20ns
    b_master_agent.AXI4_WRITE_BURST(16'h0180+(7), b_addr8, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, b_data_wr8, 1, resp);
    #20ns
    b_master_agent.AXI4_WRITE_BURST(16'h0180+(8), b_addr9, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, b_data_wr9, 1, resp);
    #20ns
    b_master_agent.AXI4_WRITE_BURST(16'h0180+(9), b_addr10, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, b_data_wr10, 1, resp);
    #20ns
    b_master_agent.AXI4_WRITE_BURST(16'h0180+(10), b_addr11, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, b_data_wr11, 1, resp);
    #20ns
    b_master_agent.AXI4_WRITE_BURST(16'h0180+(11), b_addr12, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, b_data_wr12, 1, resp);
    #20ns
    b_master_agent.AXI4_WRITE_BURST(16'h0180+(12), b_addr13, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, b_data_wr13, 1, resp);
    #20ns
//     READ PHASE
    #20ns
    b_master_agent.AXI4_READ_BURST(16'h0180+(0), b_addr1, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd1, rresp, ruser);
    #20ns
    b_master_agent.AXI4_READ_BURST(16'h0180+(1), b_addr2, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd2, rresp, ruser);
    #20ns
    b_master_agent.AXI4_READ_BURST(16'h0180+(2), b_addr3, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd3, rresp, ruser);
    #20ns
    b_master_agent.AXI4_READ_BURST(16'h0180+(3), b_addr4, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd4, rresp, ruser);
    #20ns
    b_master_agent.AXI4_READ_BURST(16'h0180+(4), b_addr5, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd5, rresp, ruser);
    #20ns
    b_master_agent.AXI4_READ_BURST(16'h0180+(5), b_addr6, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd6, rresp, ruser);
    #20ns
    b_master_agent.AXI4_READ_BURST(16'h0180+(6), b_addr7, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd7, rresp, ruser);
    #20ns
    b_master_agent.AXI4_READ_BURST(16'h0180+(7), b_addr8, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd8, rresp, ruser);
    #20ns
    b_master_agent.AXI4_READ_BURST(16'h0180+(8), b_addr9, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd9, rresp, ruser);
    #20ns
    b_master_agent.AXI4_READ_BURST(16'h0180+(9), b_addr10, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd10, rresp, ruser);
    #20ns
    b_master_agent.AXI4_READ_BURST(16'h0180+(10), b_addr11, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd11, rresp, ruser);
    #20ns
    b_master_agent.AXI4_READ_BURST(16'h0180+(11), b_addr12, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd12, rresp, ruser);
    #20ns
    b_master_agent.AXI4_READ_BURST(16'h0180+(12), b_addr13, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd13, rresp, ruser);
    #20ns
//    b_master_agent.AXI4_READ_BURST(16'h0180+(0), b_addr1, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd1, rresp, ruser);
//    #20ns
//    b_master_agent.AXI4_READ_BURST(16'h0180+(1), b_addr2, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd2, rresp, ruser);
//    #20ns
//    b_master_agent.AXI4_READ_BURST(16'h0180+(2), b_addr3, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd3, rresp, ruser);
//    #20ns
//    b_master_agent.AXI4_READ_BURST(16'h0180+(3), b_addr4, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd4, rresp, ruser);
//    #20ns
//    b_master_agent.AXI4_READ_BURST(16'h0180+(4), b_addr5, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd5, rresp, ruser);
//    #20ns
//    b_master_agent.AXI4_READ_BURST(16'h0180+(5), b_addr6, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd6, rresp, ruser);
//    #20ns
//    b_master_agent.AXI4_READ_BURST(16'h0180+(6), b_addr7, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd7, rresp, ruser);
//    #20ns
//    b_master_agent.AXI4_READ_BURST(16'h0180+(7), b_addr8, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd8, rresp, ruser);
//    #20ns
//    b_master_agent.AXI4_READ_BURST(16'h0180+(8), b_addr9, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd9, rresp, ruser);
//    #20ns
//    b_master_agent.AXI4_READ_BURST(16'h0180+(9), b_addr10, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd10, rresp, ruser);
//    #20ns
//    b_master_agent.AXI4_READ_BURST(16'h0180+(10), b_addr11, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd11, rresp, ruser);
//    #20ns
//    b_master_agent.AXI4_READ_BURST(16'h0180+(11), b_addr12, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd12, rresp, ruser);
//    #20ns
//    b_master_agent.AXI4_READ_BURST(16'h0180+(12), b_addr13, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd13, rresp, ruser);
//    #20ns
//    b_master_agent.AXI4_READ_BURST(16'h0180+(0), b_addr1, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd1, rresp, ruser);
//    #20ns
//    b_master_agent.AXI4_READ_BURST(16'h0180+(1), b_addr2, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd2, rresp, ruser);
//    #20ns
//    b_master_agent.AXI4_READ_BURST(16'h0180+(2), b_addr3, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd3, rresp, ruser);
//    #20ns
//    b_master_agent.AXI4_READ_BURST(16'h0180+(3), b_addr4, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd4, rresp, ruser);
//    #20ns
//    b_master_agent.AXI4_READ_BURST(16'h0180+(4), b_addr5, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd5, rresp, ruser);
//    #20ns
//    b_master_agent.AXI4_READ_BURST(16'h0180+(5), b_addr6, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd6, rresp, ruser);
//    #20ns
//    b_master_agent.AXI4_READ_BURST(16'h0180+(6), b_addr7, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd7, rresp, ruser);
//    #20ns
//    b_master_agent.AXI4_READ_BURST(16'h0180+(7), b_addr8, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd8, rresp, ruser);
//    #20ns
//    b_master_agent.AXI4_READ_BURST(16'h0180+(8), b_addr9, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd9, rresp, ruser);
//    #20ns
//    b_master_agent.AXI4_READ_BURST(16'h0180+(9), b_addr10, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd10, rresp, ruser);
//    #20ns
//    b_master_agent.AXI4_READ_BURST(16'h0180+(10), b_addr11, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd11, rresp, ruser);
//    #20ns
//    b_master_agent.AXI4_READ_BURST(16'h0180+(11), b_addr12, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd12, rresp, ruser);
//    #20ns
//    b_master_agent.AXI4_READ_BURST(16'h0180+(12), b_addr13, 0, size, burst, lock, 4'h0, prot, 4'h0, 4'h0, 1'h0, data_rd13, rresp, ruser);
//    #20ns
    
    $display("1 )  Received %h but expectd %h", data_rd1, b_data_wr1);
    $display("2 )  Received %h but expectd %h", data_rd2, b_data_wr2);
    $display("3 )  Received %h but expectd %h", data_rd3, b_data_wr3);
    $display("4 )  Received %h but expectd %h", data_rd4, b_data_wr4);
    $display("5 )  Received %h but expectd %h", data_rd5, b_data_wr5);
    $display("6 )  Received %h but expectd %h", data_rd6, b_data_wr6);
    $display("7 )  Received %h but expectd %h", data_rd7, b_data_wr7);
    $display("8 )  Received %h but expectd %h", data_rd8, b_data_wr8);
    $display("9 )  Received %h but expectd %h", data_rd9, b_data_wr9);
    $display("10)  Received %h but expectd %h", data_rd10, b_data_wr10);
    $display("11)  Received %h but expectd %h", data_rd11, b_data_wr11);
    $display("12)  Received %h but expectd %h", data_rd12, b_data_wr12);
    $display("13)  Received %h but expectd %h", data_rd13, b_data_wr13);
    
    #10us
    
    $finish;
end

endmodule