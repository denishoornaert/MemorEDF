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

xil_axi_prot_t  prot = 0;

bit [127 : 0] config_wr1  = 128'h80008001800280038010801180128013;
bit [127 : 0] config_wr2  = 128'h80208021802280238030803180328033;

xil_axi_ulong addr1  = 40'h8000000000;
xil_axi_ulong addr2  = 40'h8000020000;
xil_axi_ulong addr3  = 40'h8000040000;
xil_axi_ulong addr4  = 40'h8000060000;
xil_axi_ulong addr5  = 40'h8000200000;
xil_axi_ulong addr6  = 40'h8000220000;
xil_axi_ulong addr7  = 40'h8000240000;
xil_axi_ulong addr8  = 40'h8000260000;
xil_axi_ulong addr9  = 40'h8000400000;
xil_axi_ulong addr10 = 40'h8000420000;
xil_axi_ulong addr11 = 40'h8000440000;
xil_axi_ulong addr12 = 40'h8000460000;
xil_axi_ulong addr13 = 40'h8000600000;
xil_axi_ulong addr14 = 40'h8000620000;
xil_axi_ulong addr15 = 40'h8000640000;
xil_axi_ulong addr16 = 40'h8000660000;

bit [127 : 0] data_wr1  = 128'h00000000000000000100000000000001;
bit [127 : 0] data_wr2  = 128'h00000000000000000200000000000002;
bit [127 : 0] data_wr3  = 128'h00000000000000000300000000000003;
bit [127 : 0] data_wr4  = 128'h00000000000000000400000000000004;
bit [127 : 0] data_wr5  = 128'h00000000000000000500000000000005;
bit [127 : 0] data_wr6  = 128'h00000000000000000600000000000006;
bit [127 : 0] data_wr7  = 128'h00000000000000000700000000000007;
bit [127 : 0] data_wr8  = 128'h00000000000000000800000000000008;
bit [127 : 0] data_wr9  = 128'h00000000000000000900000000000009;
bit [127 : 0] data_wr10 = 128'h00000000000000000a0000000000000a;
bit [127 : 0] data_wr11 = 128'h00000000000000000b0000000000000b;
bit [127 : 0] data_wr12 = 128'h00000000000000000c0000000000000c;
bit [127 : 0] data_wr13 = 128'h00000000000000000d0000000000000d;
bit [127 : 0] data_wr14 = 128'h00000000000000000e0000000000000e;
bit [127 : 0] data_wr15 = 128'h00000000000000000f0000000000000f;
bit [127 : 0] data_wr16 = 128'h00000000000000001000000000000010;

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
bit [127 : 0] data_rd14;
bit [127 : 0] data_rd15;
bit [127 : 0] data_rd16;

xil_axi_resp_t 	resp;

always #5ns aclk = ~aclk;

design_1_wrapper DUT
(
    .aclk_0(aclk),
    .aresetn_0(aresetn)
);

// Declare agent
design_1_axi_vip_0_0_mst_t      master_agent;
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
    
    // Finish the setup
    aresetn = 0;
    
    #50ns
    aresetn = 1;
    
    
    #20ns
    master_agent.AXI4LITE_WRITE_BURST(addr1,prot,data_wr1,resp);
    #20ns
    master_agent.AXI4LITE_WRITE_BURST(addr2,prot,data_wr2,resp);
    #20ns
    master_agent.AXI4LITE_WRITE_BURST(addr3,prot,data_wr3,resp);
    #20ns
    master_agent.AXI4LITE_WRITE_BURST(addr4,prot,data_wr4,resp);
    #20ns
    master_agent.AXI4LITE_WRITE_BURST(addr5,prot,data_wr5,resp);
    #20ns
    master_agent.AXI4LITE_WRITE_BURST(addr6,prot,data_wr6,resp);
    #20ns
    master_agent.AXI4LITE_WRITE_BURST(addr7,prot,data_wr7,resp);
    #20ns
    master_agent.AXI4LITE_WRITE_BURST(addr8,prot,data_wr8,resp);
    #20ns
    master_agent.AXI4LITE_WRITE_BURST(addr9,prot,data_wr9,resp);
    #20ns
    master_agent.AXI4LITE_WRITE_BURST(addr10,prot,data_wr10,resp);
    #20ns
    master_agent.AXI4LITE_WRITE_BURST(addr11,prot,data_wr11,resp);
    #20ns
    master_agent.AXI4LITE_WRITE_BURST(addr12,prot,data_wr12,resp);
    #20ns
    master_agent.AXI4LITE_WRITE_BURST(addr13,prot,data_wr13,resp);
    #20ns
    master_agent.AXI4LITE_WRITE_BURST(addr14,prot,data_wr14,resp);
    #20ns
    master_agent.AXI4LITE_WRITE_BURST(addr15,prot,data_wr15,resp);
    #20ns
    master_agent.AXI4LITE_WRITE_BURST(addr16,prot,data_wr16,resp);
    
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
    master_agent.AXI4LITE_READ_BURST(addr5,prot,data_rd5,resp);
    #20ns
    master_agent.AXI4LITE_READ_BURST(addr6,prot,data_rd6,resp);
    #20ns
    master_agent.AXI4LITE_READ_BURST(addr7,prot,data_rd7,resp);
    #20ns
    master_agent.AXI4LITE_READ_BURST(addr8,prot,data_rd8,resp);
    #20ns
    master_agent.AXI4LITE_READ_BURST(addr9,prot,data_rd9,resp);
    #20ns
    master_agent.AXI4LITE_READ_BURST(addr10,prot,data_rd10,resp);
    #20ns
    master_agent.AXI4LITE_READ_BURST(addr11,prot,data_rd11,resp);
    #20ns
    master_agent.AXI4LITE_READ_BURST(addr12,prot,data_rd12,resp);
    #20ns
    master_agent.AXI4LITE_READ_BURST(addr13,prot,data_rd13,resp);
    #20ns
    master_agent.AXI4LITE_READ_BURST(addr14,prot,data_rd14,resp);
    #20ns
    master_agent.AXI4LITE_READ_BURST(addr15,prot,data_rd15,resp);
    #20ns
    master_agent.AXI4LITE_READ_BURST(addr16,prot,data_rd16,resp);
    
    #200ns
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
        $display("5)  Received %h but expectd %h", data_rd5, data_wr5);
        $display("6)  Received %h but expectd %h", data_rd6, data_wr6);
        $display("7)  Received %h but expectd %h", data_rd7, data_wr7);
        $display("8)  Received %h but expectd %h", data_rd8, data_wr8);
        $display("9)  Received %h but expectd %h", data_rd9, data_wr9);
        $display("10)  Received %h but expectd %h", data_rd10, data_wr10);
        $display("11)  Received %h but expectd %h", data_rd11, data_wr11);
        $display("12)  Received %h but expectd %h", data_rd12, data_wr12);
        $display("13)  Received %h but expectd %h", data_rd13, data_wr13);
        $display("14)  Received %h but expectd %h", data_rd14, data_wr14);
        $display("15)  Received %h but expectd %h", data_rd15, data_wr15);
        $display("16)  Received %h but expectd %h", data_rd16, data_wr16);
    end
    $finish;
end

endmodule