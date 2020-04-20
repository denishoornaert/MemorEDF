//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: Technische Universitat Munchen. Chair of Cyber-Physical Systems
//// Engineer: Denis Hoornaert
//// 
//// Create Date: 01/18/2020 05:19:46 PM
//// Design Name: Scheduler
//// Module Name: Scheduler
//// Project Name: MemorEDF
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
////////////////////////////////////////////////////////////////////////////////////

//module Scheduler
//    #(
//        parameter NUMBER_OF_QUEUES     = 4,
//        parameter REGISTER_SIZE        = 32,
//        parameter TDMA_ENABLED         = 1,
//        parameter EDF_ENABLED          = 1
//    )
//    (
//        clock,
//        reset,
//        mode,
//        full,
//        empty,
//        lastElem,
//        deadlines,
//        periods,
//        id,
//        consumed,
//        hasBeenConsumed,
//        enable
//    );
    
//    localparam NUMBER_OF_SCHEDULERS = TDMA_ENABLED + EDF_ENABLED;
    
//    // Definition of the module IOs
//    input                                                clock;
//    input                                                reset;
//    input           [$clog2(NUMBER_OF_SCHEDULERS)-1 : 0] mode;
//    input                       [NUMBER_OF_QUEUES-1 : 0] full;
//    input                       [NUMBER_OF_QUEUES-1 : 0] empty;
//    input                       [NUMBER_OF_QUEUES-1 : 0] lastElem;
//    input [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] deadlines;
//    input [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] periods;
//    output              [$clog2(NUMBER_OF_QUEUES)-1 : 0] id;
//    input                                                consumed;
//    output                      [NUMBER_OF_QUEUES-1 : 0] hasBeenConsumed;
//    output                                               enable;
    
//    // Scheduling part
//    wire [$clog2(NUMBER_OF_QUEUES)-1 : 0] schedulers_to_selector [NUMBER_OF_SCHEDULERS];
//    wire [$clog2(NUMBER_OF_QUEUES)-1 : 0] selected_queue;
//    // Control part
//    reg                                  internal_enable;
//    reg [$clog2(NUMBER_OF_QUEUES)-1 : 0] internal_id;
//    reg                                  start_transaction;
//    reg [$clog2(NUMBER_OF_QUEUES)-1 : 0] override_id;
//    reg                                  priority_override;
//    reg         [NUMBER_OF_QUEUES-1 : 0] empty_ff;
//    //
//    wire        [NUMBER_OF_QUEUES-1 : 0] internal_hasBeenConsumed;
//    reg         [NUMBER_OF_QUEUES-1 : 0] hasBeenConsumed_ff;
//    // Booting
//    reg booted;
    
//    assign enable            = internal_enable;
//    assign id                = internal_id;//(priority_override)? override_id : selected_queue;
    
//    if (NUMBER_OF_SCHEDULERS <= 2)
//    begin
//        Selector # (
//            .INPUTS(NUMBER_OF_SCHEDULERS),
//            .INPUT_SIZE($clog2(NUMBER_OF_QUEUES))
//        ) scheduling_policy_selector (
//            .clock(clock),
//            .reset(reset),
//            .index(mode),
//            .values(schedulers_to_selector),
//            .outcome(selected_queue)
//        );
//    end
//    else
//    begin
//        assign selected_queue = schedulers_to_selector[0];
//    end
    
//    if (TDMA_ENABLED)
//    begin
//        TDMA # (
//            .NUMBER_OF_QUEUES(NUMBER_OF_QUEUES),
//            .REGISTER_SIZE(REGISTER_SIZE)
//        ) tdma (
//            .clock(clock),
//            .reset(reset),
//            .deltaT(periods),
//            .selection(schedulers_to_selector[0])
//        );
//    end
    
//    if (EDF_ENABLED)
//    begin
//        EDF # (
//            .NUMBER_OF_QUEUES(NUMBER_OF_QUEUES),
//            .REGISTER_SIZE(REGISTER_SIZE)
//        ) edf (
//            .clock(clock),
//            .reset(reset),
//            .periods(periods),
//            .deadlines(deadlines),
//            .selection(schedulers_to_selector[1])
//        );
//    end
    
//    // Dispatcher route the consumed signal to the appropriate queue
//    Combinatorial_Dispatcher #(
//        .OUTPUTS(NUMBER_OF_QUEUES),
//        .INPUT_SIZE(1'b1)
//    ) queue_router (
//        .clock(clock),
//        .reset(reset),
//        .packetIn(consumed),
//        .valid(1'b1),
//        .id(id),
//        .packetsOut(internal_hasBeenConsumed)
//    );
    
//    always @(posedge clock)
//    begin
//        if(reset)
//        begin
//            internal_id <= 0;
//        end
//        else
//        begin
//            internal_id <= (priority_override)? override_id : selected_queue;
//        end
//    end
    
//    always @(posedge clock)
//    begin
//        if(reset)
//        begin
//            internal_enable <= 0;
//        end
//        else if(start_transaction)//internal_enable)
//        begin
//            internal_enable <= 1;
//        end 
//        else if(!priority_override)//internal_enable)
//        begin
//            internal_enable <= start_transaction | priority_override;
//        end
//        else
//        begin
//            internal_enable <= 0;
//        end
//    end
    
//    always @(posedge clock)
//    begin
//        if(reset)
//        begin
//            hasBeenConsumed_ff <= 0;
//        end
//        else
//        begin
//            hasBeenConsumed_ff <= internal_hasBeenConsumed;
//        end
//    end
    
//    always @(posedge clock)
//        begin
//            if(reset)
//            begin
//                booted <= 0;
//            end // Enable to skip the first unwanted rising edge
//            else if (internal_hasBeenConsumed&(~hasBeenConsumed_ff))
//            begin
//                booted <= 1;
//            end
//        end
//    genvar i;
//    for(i = 0; i < NUMBER_OF_QUEUES; i = i + 1)
//    begin
//        assign hasBeenConsumed[i] = booted&(internal_hasBeenConsumed[i]&(~hasBeenConsumed_ff[i]));
//    end
    
//    always @(posedge clock)
//    begin
//        if(reset)
//            empty_ff <= 0;
//        else
//            empty_ff <= empty;
//    end    
    
//    always @(posedge clock)
//    begin
//        if(reset)
//        begin
//            start_transaction <= 0;
//        end
//        else
//        begin
////            start_transaction <= (consumed)? ((!empty[selected_queue])&(!lastElem[selected_queue])) : 0;
//            // When the previous transaction has been performed, that the selected queue contains elements and that the latter actually contains more than one elements.
//            // The last condition is necessary has there is one clock cycle difference between the arrival of consumed and the actualisation of the empty signal.
//            if(consumed & (!empty[selected_queue]) & (!lastElem[selected_queue]))
//                start_transaction <= 1;
//            // If there is a transition between an empty queue to a queue containing one element
//            else if(empty_ff[selected_queue]&(!empty[selected_queue]))
//                start_transaction <= 1;
//            else
//                start_transaction <= 0;
//        end
//    end
    
//    always @(posedge clock)
//    begin
//        if(reset)
//        begin
//            priority_override <= 0;
//        end
//        else
//        begin
//            if(consumed)
//            begin
////                if(priority_override)
////                begin
////                    priority_override <= 0;
////                end
////                else
//                begin
//                    priority_override <= |full;
//                end
//            end
////            else
////            begin
////                priority_override <= 0;
////            end
//        end
//    end
    
//    always @(clock)
//    begin
//        if(reset)
//        begin
//            override_id <= 0;
//        end
//        else
//        begin
//            integer i;
//            for(i = 0; i < NUMBER_OF_QUEUES; i = i + 1)
//            begin
//                if(full[i])
//                begin
//                    override_id <= i;
//                end
//            end
//        end
//    end
    
//endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Technische Universitat Munchen. Chair of Cyber-Physical Systems
// Engineer: Denis Hoornaert
// 
// Create Date: 01/18/2020 05:19:46 PM
// Design Name: Scheduler
// Module Name: Scheduler
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

module Scheduler
    #(
        parameter NUMBER_OF_QUEUES     = 4,
        parameter REGISTER_SIZE        = 32,
        parameter TDMA_ENABLED         = 1,
        parameter EDF_ENABLED          = 1
    )
    (
        clock,
        reset,
        mode,
        full,
        empty,
        lastElem,
        deadlines,
        periods,
        id,
        consumed,
        hasBeenConsumed,
        enable
    );
    
    localparam NUMBER_OF_SCHEDULERS = TDMA_ENABLED + EDF_ENABLED;
    
    // Definition of the module IOs
    input                                                clock;
    input                                                reset;
    input           [$clog2(NUMBER_OF_SCHEDULERS)-1 : 0] mode;
    input                       [NUMBER_OF_QUEUES-1 : 0] full;
    input                       [NUMBER_OF_QUEUES-1 : 0] empty;
    input                       [NUMBER_OF_QUEUES-1 : 0] lastElem;
    input [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] deadlines;
    input [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] periods;
    output              [$clog2(NUMBER_OF_QUEUES)-1 : 0] id;
    input                                                consumed;
    output                      [NUMBER_OF_QUEUES-1 : 0] hasBeenConsumed;
    output                                               enable;
    
    // Scheduling part
    wire [$clog2(NUMBER_OF_QUEUES)-1 : 0] schedulers_to_selector [NUMBER_OF_SCHEDULERS];
    wire [$clog2(NUMBER_OF_QUEUES)-1 : 0] selected_queue;
    // Control part
    reg                                  internal_enable;
    reg [$clog2(NUMBER_OF_QUEUES)-1 : 0] internal_id;
    reg                                  start_transaction;
    reg [$clog2(NUMBER_OF_QUEUES)-1 : 0] override_id;
    reg                                  priority_override;
    //
    reg         [NUMBER_OF_QUEUES-1 : 0] internal_hasBeenConsumed;
    reg         [NUMBER_OF_QUEUES-1 : 0] hasBeenConsumed_ff;
    // 
    reg                                  consumed_ff;
    reg                                  consumed_ff2;
    // Booting
    reg booted;
    
    assign enable            = internal_enable;
    assign id                = internal_id;
    
    
    genvar i;
    for(i = 0; i < NUMBER_OF_QUEUES; i = i + 1)
    begin
        assign hasBeenConsumed[i] = booted&(internal_hasBeenConsumed[i]&(~hasBeenConsumed_ff[i]))&(~empty[i]);
    end
    
    always @(posedge clock)
    begin
        if(reset)
        begin
            hasBeenConsumed_ff <= 0;
        end
        else
        begin
            hasBeenConsumed_ff <= internal_hasBeenConsumed;
        end
    end
    
    always @(posedge clock)
    begin
        if(reset)
        begin
            consumed_ff <= 0;
            consumed_ff2 <= 0;
        end
        else
        begin
            consumed_ff <= consumed;
            consumed_ff2 <= consumed_ff;
        end
    end
    
    always @(posedge clock)
    begin
        if(reset)
        begin
            priority_override <= 0;
        end
        else
        begin
            if(~priority_override)
            begin
                priority_override <= |full;
            end
            else if((~consumed)&consumed_ff)
            begin
                priority_override <= 0;
            end
        end
    end
    
    if (NUMBER_OF_SCHEDULERS <= 2)
    begin
        Selector # (
            .INPUTS(NUMBER_OF_SCHEDULERS),
            .INPUT_SIZE($clog2(NUMBER_OF_QUEUES))
        ) scheduling_policy_selector (
            .clock(clock),
            .reset(reset),
            .index(mode),
            .values(schedulers_to_selector),
            .outcome(selected_queue)
        );
    end
    else
    begin
        assign selected_queue = schedulers_to_selector[0];
    end
    
    if (TDMA_ENABLED)
    begin
        TDMA # (
            .NUMBER_OF_QUEUES(NUMBER_OF_QUEUES),
            .REGISTER_SIZE(REGISTER_SIZE)
        ) tdma (
            .clock(clock),
            .reset(reset),
            .deltaT(periods),
            .selection(schedulers_to_selector[0])
        );
    end
    
    if (EDF_ENABLED)
    begin
        EDF # (
            .NUMBER_OF_QUEUES(NUMBER_OF_QUEUES),
            .REGISTER_SIZE(REGISTER_SIZE)
        ) edf (
            .clock(clock),
            .reset(reset),
            .periods(periods),
            .deadlines(deadlines),
            .selection(schedulers_to_selector[1])
        );
    end
    
    // Dispatcher route the consumed signal to the appropriate queue
    Combinatorial_Dispatcher #(
        .OUTPUTS(NUMBER_OF_QUEUES),
        .INPUT_SIZE(1'b1)
    ) queue_router (
        .clock(clock),
        .reset(reset),
        .packetIn(consumed),
        .valid(consumed_ff),
        .id(internal_id),
        .packetsOut(internal_hasBeenConsumed)
    );
    
    always @(posedge clock)
    begin
        if(reset)
        begin
            booted <= 0;
        end // Enable to skip the first unwanted rising edge
        else if (internal_hasBeenConsumed&(~hasBeenConsumed_ff))
        begin
            booted <= 1;
        end
    end

    always @(posedge clock)
    begin
        if(reset)
        begin
            internal_id <= 0;
        end
        else
        begin
            if(consumed)
            begin
                if(priority_override)
                begin
                    internal_id <= override_id;
                end
                else
                begin
                    internal_id <= selected_queue;
                end
            end
        end
    end
    
    always @(clock)
    begin
        if(reset)
        begin
            override_id <= 0;
        end
        else
        begin
            integer i;
            for(i = 0; i < NUMBER_OF_QUEUES; i = i + 1)
            begin
                if(full[i])
                begin
                    override_id <= i;
                end
            end
        end
    end

    reg [1 : 0] counter;
    reg first_time;
    always@(posedge clock)
    begin
        if(reset)
        begin
            internal_enable <= 0;
            counter <= 0;
            first_time <= 1;
        end
        else
        begin
            if(first_time)
            begin
                if(~empty[internal_id] & (counter == 0))
                begin
                    counter <= 1;
                    internal_enable <= 0;
                end
                else if(counter == 3)
                begin
                    counter <= 0;
                    internal_enable <= 0;
                    first_time <= 0;
                end
                else if(counter == 2)
                begin
                    counter <= counter + 1;
                    internal_enable <= 1;
                end 
                else if((counter > 0) & (~empty[internal_id]))
                begin
                    counter <= counter + 1;
                    internal_enable <= 0;
                end
                else if((counter > 0) & (empty[internal_id]))
                begin
                    counter <= 0;
                    internal_enable <= 0;
                end 
                else
                begin
                    internal_enable <= 0;
                end 
            end
            else
            begin
                if(consumed & ~empty[internal_id] & (counter == 0))
                begin
                    counter <= 1;
                    internal_enable <= 0;
                end
                else if(counter == 3)
                begin
                    counter <= 0;
                    internal_enable <= 0;
                end
                else if(counter == 2)
                begin
                    counter <= counter + 1;
                    internal_enable <= 1;
                end 
                else if((counter > 0) & (~empty[internal_id]))
                begin
                    counter <= counter + 1;
                    internal_enable <= 0;
                end
                else if((counter > 0) & (empty[internal_id]))
                begin
                    counter <= 0;
                    internal_enable <= 0;
                end 
                else
                begin
                    internal_enable <= 0;
                end
            end
        end
    end
    
endmodule