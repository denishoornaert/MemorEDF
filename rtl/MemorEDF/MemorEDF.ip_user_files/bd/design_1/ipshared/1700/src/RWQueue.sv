`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Technische Universitat Munchen. Chair of Cyber-Physical Systems
// Engineer: Denis Hoornaert
//
// Create Date: 01/17/2020 02:22:57 PM
// Design Name: RWQueue
// Module Name: RWQueue
// Project Name: MemorEDF
// Target Devices: Generic
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


module RWQueue #(
        parameter READ_DATA_SIZE     = 8,
        parameter WRITE_DATA_SIZE    = 8,
        parameter READ_QUEUE_LENGTH  = 4,
        parameter WRITE_QUEUE_LENGTH = 4,
        parameter REGISTER_SIZE      = 32
    )
    (
        input  wire                         clock,
        input  wire                         reset,
        input  wire   [REGISTER_SIZE-1 : 0] higher_threshold,
        input  wire  [READ_DATA_SIZE-1 : 0] read_valueIn,
        input  wire                         read_valueInValid,
        input  wire [WRITE_DATA_SIZE-1 : 0] write_valueIn,
        input  wire                         write_valueInValid,
        input  wire                         consumed,
        output wire [WRITE_DATA_SIZE-1 : 0] valueOut,
        output wire                         empty,
        output wire                         full,
        output wire                         lastElem,
        output wire                         kill_the_core
    );
    
    localparam QUEUES_LENGTH     = $clog2(READ_QUEUE_LENGTH+WRITE_QUEUE_LENGTH);
    localparam TIME_COUNTER_SIZE = 4;
    localparam MAX_VALUE         = 8'hfF;
    
    //
    wire                          read_consumed;
    wire                         write_consumed;
    wire  [READ_DATA_SIZE-1 : 0]  read_valueOut;
    wire [WRITE_DATA_SIZE-1 : 0] write_valueOut;
    wire                             read_empty;
    wire                            write_empty;
    wire                              read_full;
    wire                             write_full;
    wire                          read_lastElem;
    wire                         write_lastElem;
    wire   [REGISTER_SIZE-1 : 0]   read_counter;
    wire   [REGISTER_SIZE-1 : 0]  write_counter;
    wire   [REGISTER_SIZE-1 : 0]        counter;
    wire                    internalKillTheCore;
    reg  [WRITE_DATA_SIZE-READ_DATA_SIZE-1 : 0]                  zeros;
    reg               [TIME_COUNTER_SIZE-1 : 0]   read_time_counter_in;
    reg               [TIME_COUNTER_SIZE-1 : 0]  write_time_counter_in;
    wire              [TIME_COUNTER_SIZE-1 : 0]  read_time_counter_out;
    wire              [TIME_COUNTER_SIZE-1 : 0] write_time_counter_out;
    wire                                           forward_write_queue;
    
    //
    assign  read_consumed      = (consumed & (~forward_write_queue));
    assign write_consumed      = (consumed & forward_write_queue);
    assign valueOut            = (forward_write_queue)? write_valueOut : {read_valueOut, zeros};
    assign empty               = read_empty&write_empty;
    assign full                = read_full&write_full;
    assign lastElem            = read_lastElem&write_lastElem;
    assign counter             = read_counter+write_counter;
    assign internalKillTheCore = ((higher_threshold > 0) & (counter >= higher_threshold));
    assign kill_the_core       = internalKillTheCore;
    assign forward_write_queue = (((write_empty)? MAX_VALUE : write_time_counter_out) < ((read_empty)? MAX_VALUE : read_time_counter_out));//((write_time_counter_out < read_time_counter_out)&(~write_empty));
    
    // Processes
    always @(posedge clock)
    begin
        zeros <= 0;
    end
    
    always @(posedge clock)
    begin
        if(reset)
        begin
            read_time_counter_in <= 0;
            write_time_counter_in <= 0;
        end
        else if(read_valueIn & write_valueIn)
        begin
            read_time_counter_in <= read_time_counter_in+2;
            write_time_counter_in <= write_time_counter_in+1;
        end
        else if(read_valueIn)
        begin
            read_time_counter_in <= read_time_counter_in+1;
        end
        else if(write_valueIn)
        begin
            write_time_counter_in <= write_time_counter_in+1;
        end
    end
    
    //
    Queue #(
        .DATA_SIZE(TIME_COUNTER_SIZE+READ_DATA_SIZE),
        .QUEUE_LENGTH(READ_QUEUE_LENGTH),
        .REGISTER_SIZE(REGISTER_SIZE)
    ) read_queue (
        .clock(clock),
        .reset(reset),
        .valueIn({read_time_counter_in, read_valueIn}),
        .valueInValid(read_valueInValid),
        .consumed(read_consumed),
        .valueOut({read_time_counter_out, read_valueOut}),
        .empty(read_empty),
        .full(read_full),
        .lastElem(read_lastElem),
        .counter(read_counter)
    );
    
    Queue #(
        .DATA_SIZE(TIME_COUNTER_SIZE+WRITE_DATA_SIZE),
        .QUEUE_LENGTH(WRITE_QUEUE_LENGTH),
        .REGISTER_SIZE(REGISTER_SIZE)
    ) write_queue (
        .clock(clock),
        .reset(reset),
        .valueIn({write_time_counter_in, write_valueIn}),
        .valueInValid(write_valueInValid),
        .consumed(write_consumed),
        .valueOut({write_time_counter_out, write_valueOut}),
        .empty(write_empty),
        .full(write_full),
        .lastElem(write_lastElem),
        .counter(write_counter)
    );
    
    
endmodule
