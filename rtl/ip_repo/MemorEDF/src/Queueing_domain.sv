`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Technische Universitat Munchen. Chair of Cyber-Physical Systems
// Engineer: Denis Hoornaert
//
// Create Date: 01/18/2020 05:19:46 PM
// Design Name: QueueingDomain
// Module Name: QueueingDomain
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


module Queueing_domain #(
        parameter NUMBER_OF_QUEUES = 4,
        parameter    REGISTER_SIZE = 32,
        parameter        DATA_SIZE = 678,
        parameter     QUEUE_LENGTH = 16
    )(
        input  wire                                                clock,
        input  wire                                                reset,
        input  wire [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] queues_higher_threshold,
        input  wire         [(DATA_SIZE*NUMBER_OF_QUEUES/2)-1 : 0] dispatcher_to_queues_packets,
        input  wire                       [NUMBER_OF_QUEUES-1 : 0] dispatcher_to_queues_valid,
        input  wire                       [NUMBER_OF_QUEUES-1 : 0] scheduler_to_queues_consumed,
        output wire                              [DATA_SIZE-1 : 0] queues_to_selector_packets [NUMBER_OF_QUEUES],
        output wire                       [NUMBER_OF_QUEUES-1 : 0] empty,
        output wire                       [NUMBER_OF_QUEUES-1 : 0] full,
        output wire                       [NUMBER_OF_QUEUES-1 : 0] lastElem,
        output wire                       [NUMBER_OF_QUEUES-1 : 0] Qs_kill_the_core
    );
    
    genvar i;
    for (i = 0; i < NUMBER_OF_QUEUES; i = i + 1)
    begin
       Queue # (
           .DATA_SIZE(DATA_SIZE),
           .QUEUE_LENGTH(QUEUE_LENGTH),
           .REGISTER_SIZE(REGISTER_SIZE)
       ) queue (
           .clock(clock),
           .reset(reset),
           .higher_threshold(queues_higher_threshold[i]),
           .valueIn(dispatcher_to_queues_packets[((i>>1)*DATA_SIZE) +: DATA_SIZE]),
           .valueInValid(dispatcher_to_queues_valid[i]),
           .consumed(scheduler_to_queues_consumed[i]),
           .valueOut(queues_to_selector_packets[i]),
           .empty(empty[i]),
           .full(full[i]),
           .lastElem(lastElem[i]),
           .kill_the_core(Qs_kill_the_core[i])
       );
    end
    
endmodule
