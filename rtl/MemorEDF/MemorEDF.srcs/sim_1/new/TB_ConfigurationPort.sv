`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Technische Universitat Munchen. Chair of Cyber-Physical Systems
// Engineer: Denis Hoornaert
// 
// Create Date: 01/18/2020 05:19:46 PM
// Design Name: Configuration port test bench
// Module Name: TB_ConfigurationPort
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

import axi_vip_pkg::*;
import design_1_axi_vip_0_0_pkg::*;

module TB_ConfigurationPort ();

bit aclk    = 0;
bit aresetn = 0;
xil_axi_ulong addr1=32'hC0000000, addr2 = 32'hC0000004;
xil_axi_prot_t  prot = 0;
bit [31:0] data_wr1 = 128'h0123456789ABCDEF0123456789ABCDEF, data_wr2 = 128'h0123456789ABCDEF0123456789ABCDEF;
bit [31:0] data_rd1,data_rd2; xil_axi_resp_t resp;

typedef enum bit [1:0] {
  XIL_AXI_ALOCK_NOLOCK              = 2'b00,
  XIL_AXI_ALOCK_EXCL                = 2'b01,
  XIL_AXI_ALOCK_LOCKED              = 2'b10,
  XIL_AXI_ALOCK_RSVD                = 2'b11
} xil_axi_lock_t;

typedef enum bit [1:0] {
  XIL_AXI_BURST_TYPE_FIXED  = 2'b00,
  XIL_AXI_BURST_TYPE_INCR   = 2'b01,
  XIL_AXI_BURST_TYPE_WRAP   = 2'b10,
  XIL_AXI_BURST_TYPE_RSVD   = 2'b11
} xil_axi_burst_t;

typedef enum bit [2:0] {
  XIL_AXI_SIZE_1BYTE    = 3'b000,
  XIL_AXI_SIZE_2BYTE    = 3'b001,
  XIL_AXI_SIZE_4BYTE    = 3'b010,
  XIL_AXI_SIZE_8BYTE    = 3'b011,
  XIL_AXI_SIZE_16BYTE   = 3'b100,
  XIL_AXI_SIZE_32BYTE   = 3'b101,
  XIL_AXI_SIZE_64BYTE   = 3'b110,
  XIL_AXI_SIZE_128BYTE  = 3'b111
} xil_axi_size_t;

xil_axi_lock_t lock   = XIL_AXI_ALOCK_NOLOCK;
xil_axi_burst_t burst = XIL_AXI_BURST_TYPE_INCR;
xil_axi_size_t size   = XIL_AXI_SIZE_16BYTE;

always #5ns aclk = ~aclk;

design_1_wrapper DUT (
    .aclk_0(aclk),
    .aresetn_0(aresetn)
);

design_1_axi_vip_0_0_mst_t      master_agent;

initial begin
    //Create an agent
    master_agent = new("master vip agent",DUT.design_1_i.axi_vip_0.inst.IF);
    // set tag for agents for easy debug
    master_agent.set_agent_tag("Master VIP");
    // set print out verbosity level.
    master_agent.set_verbosity(400);
    //Start the agent
    master_agent.start_master();
    #50ns
    aresetn = 1;
    #20ns
    master_agent.AXI4_WRITE_BURST(0, addr1, size, 128, burst, lock, 0, 0, 0, 0, addr1, data_wr1, 0, resp);
    #20ns
    master_agent.AXI4_WRITE_BURST(0, addr2, size, 128, burst, lock, 0, 0, 0, 0, addr2, data_wr1, 0, resp);
    #70ns
//    master_agent.AXI4_READ_BURST(addr1,prot,data_rd1,resp);
    #20ns
 //   master_agent.AXI4_READ_BURST(addr2,prot,data_rd2,resp);
    #200ns
    if((data_wr1 == data_rd1)&&(data_wr2 == data_rd2))
        $display("Data match, test succeeded");
    else
        $display("Data do not match, test failed");
    $finish;
end
endmodule
