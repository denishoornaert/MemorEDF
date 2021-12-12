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
        input  wire                              [DATA_SIZE-1 : 0] dispatcher_to_queues_packet,
        input  wire                       [NUMBER_OF_QUEUES-1 : 0] dispatcher_to_queues_valid,
        input  wire                                                scheduler_to_queues_ready,
        output reg                                                 queues_to_serializer_valid,
        input  wire               [$clog2(NUMBER_OF_QUEUES)-1 : 0] core_id,
        output wire                              [DATA_SIZE-1 : 0] queues_to_serializer_packet,
        output wire                       [NUMBER_OF_QUEUES-1 : 0] empty,
        output wire                       [NUMBER_OF_QUEUES-1 : 0] full,
        output wire                       [NUMBER_OF_QUEUES-1 : 0] lastElem,
        output wire                       [NUMBER_OF_QUEUES-1 : 0] Qs_kill_the_core
    );
    
    // Used for detecting posedge on readiness signal comming from the serializer
    reg                                   scheduler_to_queues_ready_ff;
    
    wire                                  queue_head_popped;
    wire                                  pop_pool_head;
    wire     [$clog2(QUEUE_LENGTH)-1 : 0] insert_addr;
    wire     [$clog2(QUEUE_LENGTH)-1 : 0] looking_up_addr [NUMBER_OF_QUEUES-1 : 0];
    wire                                  availability_depleted;
    wire                                  available;
    
    // Ensures that answer is a simple 1cc pulse
    always @(posedge clock)
    if (reset)
        queues_to_serializer_valid <= 0;
    else if (queues_to_serializer_valid)
        queues_to_serializer_valid <= 0;
    else if (scheduler_to_queues_ready)
        queues_to_serializer_valid <= 1;
    else
        queues_to_serializer_valid <= queues_to_serializer_valid;
        
    // detecting posedge on readiness signal comming from the serializer
    always @(posedge clock)
    begin
        if (reset)
            scheduler_to_queues_ready_ff <= 0;
        else
            scheduler_to_queues_ready_ff <= scheduler_to_queues_ready;
    end
    
    assign     pop_pool_head = |dispatcher_to_queues_valid;
    assign queue_head_popped = (scheduler_to_queues_ready & ~scheduler_to_queues_ready_ff);
    
    HPSPBRAM #(
        .RAM_WIDTH(DATA_SIZE),
        .RAM_DEPTH(QUEUE_LENGTH)
    ) buffer (
        .addra(insert_addr),
        .addrb(looking_up_addr[core_id]),
        .dina(dispatcher_to_queues_packet),
        .clka(clock),
        .wea(pop_pool_head),
        .enb(1),
        .rstb(reset),
        .regceb(),
        .doutb(queues_to_serializer_packet)
    );
    
    genvar i;
    for (i = 0; i < NUMBER_OF_QUEUES; i = i + 1)
    begin
       Queue # (
           .DATA_SIZE($clog2(QUEUE_LENGTH)),
           .QUEUE_LENGTH(QUEUE_LENGTH),
           .REGISTER_SIZE(REGISTER_SIZE)
       ) pointers_queue (
           .clock(clock),
           .reset(reset),
           .higher_threshold(queues_higher_threshold[i]),
           .valueIn(insert_addr),
           .valueInValid(dispatcher_to_queues_valid[i]),
           .consumed((core_id == i)? queue_head_popped : 0),
           .valueOut(looking_up_addr[i]),
           .empty(empty[i]),
           .full(full[i]),
           .lastElem(lastElem[i]),
           .kill_the_core(Qs_kill_the_core[i])
       );
    end
    
    QueueRAM # (
       .DATA_SIZE($clog2(QUEUE_LENGTH)),
       .QUEUE_LENGTH(QUEUE_LENGTH),
       .REGISTER_SIZE(REGISTER_SIZE),
       .INIT_FILE("/home/denis/github/MemorEDF/rtl/ip_repo/MemorEDF/src/availability_pool.coe"),
       .INIT_COUNTER(QUEUE_LENGTH)
    ) availablility_pool (
       .clock(clock),
       .reset(reset),
       .higher_threshold(0), // disable threshold mechanism
       .valueIn(looking_up_addr[core_id]),
       .valueInValid(queue_head_popped),
       .consumed(pop_pool_head),
       .valueOut(insert_addr),
       .empty(availability_depleted),
       .full(available),
       .lastElem(), // Not needed
       .kill_the_core() // not needed
    );
    
endmodule
