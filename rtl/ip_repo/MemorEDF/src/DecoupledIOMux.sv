`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Technische Universitat Munchen. Chair of Cyber-Physical Systems
// Engineer: Denis Hoornaert
//
// Create Date: 01/18/2020 05:19:46 PM
// Design Name: Decoupled IO Mux
// Module Name: Decoupled IO Mux
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


module DecoupledIOMux #(
        parameter integer DATA_SIZE        = 512,
        parameter integer NUMBER_OF_QUEUES = 4,
        parameter integer NUMBER_OF_INPUTS = 2
    )(
        //
        input wire                                  [NUMBER_OF_INPUTS-1 : 0] packetizers_valid,
        output wire                                 [NUMBER_OF_INPUTS-1 : 0] packetizers_ready,
        input wire  [NUMBER_OF_INPUTS-1 : 0][$clog2(NUMBER_OF_QUEUES)-1 : 0] packetizers_id,
        input wire                 [NUMBER_OF_INPUTS-1 : 0][DATA_SIZE-1 : 0] packetizers_packet,
        //
        output wire                                                          queues_valid,
        input wire                                                           queues_ready,
        output wire                         [$clog2(NUMBER_OF_QUEUES)-1 : 0] queues_id,
        output wire                                        [DATA_SIZE-1 : 0] queues_packet
    );
    
    // Assignments to internal logic
    wire [$clog2(NUMBER_OF_INPUTS)-1 : 0] selected_input;
    assign selected_input = (packetizers_valid[0])? 0 : 1; // i.e., packetizers_valid[0] or packetizers_valid[1]
    wire [$clog2(NUMBER_OF_INPUTS)-1 : 0] unselected_input;
    assign unselected_input = (packetizers_valid[0])? 1 : 0; // i.e., packetizers_valid[1] or packetizers_valid[0]
    
    // Assignments to outputs
    assign packetizers_ready[0] = (selected_input == 0)? queues_ready : 0;
    assign packetizers_ready[1] = (selected_input == 1)? queues_ready : 0;
    assign         queues_valid = |(packetizers_valid);
    assign            queues_id = (selected_input == 0)? packetizers_id[0] : packetizers_id[1];
    assign        queues_packet = (selected_input == 0)? packetizers_packet[0] : packetizers_packet[1];
    
endmodule
