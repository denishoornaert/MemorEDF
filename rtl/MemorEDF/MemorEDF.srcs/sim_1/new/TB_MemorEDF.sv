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
bit txn = 0;

xil_axi_prot_t  prot = 0;

xil_axi_ulong addr1  = 40'h0000000000;
xil_axi_ulong addr2  = 40'h0000000010;
xil_axi_ulong addr3  = 40'h0000000020;
xil_axi_ulong addr4  = 40'h0000000030;

//  indices                    76543210765432107654321076543210
bit [127 : 0] data_wr1  = 128'h00000000000000000000000000000020; // ABITRARY PERIOD
bit [127 : 0] data_wr2  = 128'h00000000000000000000000000000030; // ARBITRRY AND MEANINGLESS DEADLINE
bit [127 : 0] data_wr3  = 128'h00000000000000000000000000000000; // MODE is 0
bit [127 : 0] data_wr4  = 128'h00000000000000000000000000000000;

bit [127 : 0] data_rd1;
bit [127 : 0] data_rd2;
bit [127 : 0] data_rd3;
bit [127 : 0] data_rd4;

xil_axi_resp_t 	resp;

always #5ns aclk = ~aclk;

design_1_wrapper DUT
(
    .aclk_0(aclk),
    .aresetn_0(aresetn),
    .txn_0(txn)
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
    #20ns;
    aresetn = 1;
    
    #20ns
    master_agent.AXI4LITE_WRITE_BURST(addr1,prot,data_wr1,resp);
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
    end
    
    #50ns
    txn = 1;
    #10ns
    
    #26us
    $finish;
end

endmodule