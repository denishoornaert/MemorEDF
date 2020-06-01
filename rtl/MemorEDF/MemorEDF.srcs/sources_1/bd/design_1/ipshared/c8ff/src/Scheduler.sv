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
        parameter PRIORITY_SIZE        = 4,
        parameter TDMA_ENABLED         = 1,
        parameter EDF_ENABLED          = 1,
        parameter FP_ENABLED           = 1,
        parameter MG_ENABLED           = 1
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
        priorities,
        budgets,
        hyper_period,
        id,
        consumed,
        hasBeenConsumed,
        enable
    );

    localparam NUMBER_OF_SCHEDULERS = TDMA_ENABLED + EDF_ENABLED + FP_ENABLED + MG_ENABLED;

    // Definition of the module IOs
    input                                                clock;
    input                                                reset;
    input           [$clog2(NUMBER_OF_SCHEDULERS)-1 : 0] mode;
    input                       [NUMBER_OF_QUEUES-1 : 0] full;
    input                       [NUMBER_OF_QUEUES-1 : 0] empty;
    input                       [NUMBER_OF_QUEUES-1 : 0] lastElem;
    input [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] deadlines;
    input [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] periods;
    input [NUMBER_OF_QUEUES-1 : 0] [PRIORITY_SIZE-1 : 0] priorities;
    input [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] budgets;
    input                          [REGISTER_SIZE-1 : 0] hyper_period;
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
    reg [$clog2(NUMBER_OF_QUEUES)-1 : 0] internal_id_ff;
    reg                                  start_transaction;
    reg [$clog2(NUMBER_OF_QUEUES)-1 : 0] override_id;
    reg                                  priority_override;
    //
    reg         [NUMBER_OF_QUEUES-1 : 0] internal_hasBeenConsumed; // changed was reg a
    reg         [NUMBER_OF_QUEUES-1 : 0] hasBeenConsumed_ff;
    //
    reg                                  consumed_ff;
    reg                                  consumed_ff2;
    // Booting
    reg [1 : 0] counter;
    reg first_time;
    reg first_time_ff;
    reg pending_transaction;

    assign enable            = internal_enable;
    assign id                = internal_id;//_ff;


    genvar i;
    for(i = 0; i < NUMBER_OF_QUEUES; i = i + 1)
    begin
        assign hasBeenConsumed[i] = (consumed & ~consumed_ff & internal_hasBeenConsumed[i]);//((internal_hasBeenConsumed!=0)&(hasBeenConsumed_ff!=internal_hasBeenConsumed))&(~empty[i]); // (~first_time)&(counter == 1)& // Changed
    end

//    always @(posedge clock)
//    begin
//        if(reset)
//        begin
//            internal_id_ff <= 0;
//        end
//        else
//        begin
//            if((consumed & ~consumed_ff & ~first_time)|((counter == 1) & (~empty[selected_queue]))) //(consumed & ~consumed_ff & ~first_time) //counter == 2) // 3 // Changed
//            begin
//                internal_id_ff <= internal_id;
//            end
//        end
//    end

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
            first_time <= 1;
        end
        else if(~consumed & consumed_ff)//(~empty[internal_id] & (counter == 1))//(consumed_ff & ~consumed_ff2)
        begin
            first_time <= 0;
        end
    end

    always @(posedge clock)
    begin
        if(reset)
        begin
            consumed_ff <= 1;
            consumed_ff2 <= 1;
        end
        else
        begin
            consumed_ff <= consumed;
            consumed_ff2 <= consumed_ff;
        end
    end

//    always @(posedge clock)
//    begin
//        if(reset)
//        begin
//            priority_override <= 0;
//        end
//        else
//        begin
////            if(~priority_override)
////            begin
//                priority_override <= |full;
////            end
////            else if((~consumed)&consumed_ff&(~first_time_ff))
////            begin
////                priority_override <= 0;
////            end
//        end
//    end

    if (NUMBER_OF_SCHEDULERS >= 2)
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
            .delta(periods),
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

    if(FP_ENABLED)
    begin
        FP #(
            .NUMBER_OF_QUEUES(NUMBER_OF_QUEUES),
            .PRIORITY_SIZE(PRIORITY_SIZE)
        ) fp (
            .clock(clock),
            .reset(reset),
            .priorities(priorities),
            .empty(empty),
            .selection(schedulers_to_selector[2])
        );
    end

    if(MG_ENABLED)
    begin
        MemGuard #(
            .NUMBER_OF_QUEUES(NUMBER_OF_QUEUES),
            .REGISTER_SIZE(PRIORITY_SIZE)
        ) mg (
            .clock(clock),
            .reset(reset),
            .budgets(budgets),
            .hyper_period(hyper_period),
            .empty(empty),
            .valid(valid),
            .selection(schedulers_to_selector[3])
        );
    end

    // Dispatcher route the consumed signal to the appropriate queue
    Combinatorial_Dispatcher #(
        .OUTPUTS(NUMBER_OF_QUEUES),
        .INPUT_SIZE(1'b1)
    ) queue_router (
        .clock(clock),
        .reset(reset),
        .packetIn(consumed & ~consumed_ff), // consumed
        .valid(consumed & ~consumed_ff), // consumed_ff
        .id(internal_id), //internal_id_ff
        .packetsOut(internal_hasBeenConsumed)
    );

    always @(posedge clock)
    begin
        if(reset)
        begin
            internal_id <= 0;
        end
        else
        begin
//            if(~first_time & (counter < 2))//if(consumed)
//            begin
//                internal_id <= internal_id;
//            end
//            else
            begin
//                if(priority_override) // & consumed)
//                begin
//                    internal_id <= override_id;
//                end
//                if(first_time)
//                begin
//                    internal_id <= selected_queue;
//                end
//                else if((consumed & ~consumed_ff))// & ~first_time)|((counter == 1)))// & (~empty[selected_queue])))
//                begin
//                    internal_id <= selected_queue;
//                end
                if(~pending_transaction)
                begin
                    internal_id <= selected_queue;
                end
            end
        end
    end
    
//    always @(posedge clock)
//    begin
//        if(reset)
//        begin
//            pending_transaction <= 0;
//        end
//        else
//        begin
//            if(~pending_transaction & ~empty[internal_id] & (counter == 1))
//            begin
//                pending_transaction <= 1;
//            end
//            else if(pending_transaction & consumed & ~consumed_ff)
//            begin
//                pending_transaction <= 0;
//            end
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

    always@(posedge clock)
    begin
        if(reset)
        begin
            internal_enable <= 0;
            pending_transaction <= 0;
            counter <= 0;
            //first_time <= 1;
        end
        else
        begin
//            if(first_time)
//            begin
//                if(consumed & ~empty[internal_id] & (counter == 0)) // changed added: "consumed & "
//                begin
//                    counter <= 1;
//                    internal_enable <= 0;
//                end
//                else if(counter == 3)
//                begin
//                    counter <= 0;
//                    internal_enable <= 0;
//                    //first_time <= 0;
//                end
//                else if((counter == 2) & (~empty[internal_id]))
//                begin
//                    counter <= counter + 1;
//                    internal_enable <= 1;
//                end
//                else if((counter == 2) & (empty[internal_id]))
//                begin
//                    counter <= 0;
//                    internal_enable <= 0;
//                end
//                else if((counter == 1) & (~empty[internal_id]))
//                begin
//                    counter <= counter + 1;
//                    internal_enable <= 0;
//                end
//                else if((counter == 1) & (empty[internal_id]))
//                begin
//                    counter <= 0;
//                    internal_enable <= 0;
//                end
//                else
//                begin
//                    internal_enable <= 0;
//                end
//            end
//            else // first_time == 0
//            begin
//                if(consumed & ~empty[internal_id] & (counter == 0))
//                begin
//                    counter <= 1;
//                    internal_enable <= 0;
//                end
//                else if(counter == 3)
//                begin
//                    counter <= 0;
//                    internal_enable <= 0;
//                end
//                else if((counter == 2) & (~empty[internal_id]))
//                begin
//                    counter <= counter + 1;
//                    internal_enable <= 1;
//                end
//                else if((counter == 2) & (empty[internal_id]))
//                begin
//                    counter <= 0;
//                    internal_enable <= 0;
//                end
//                else if((counter == 1) & (~empty[internal_id]))
//                begin
//                    counter <= counter + 1;
//                    internal_enable <= 0;
//                end
//                else if((counter == 1) & (empty[internal_id]))
//                begin
//                    counter <= 0;
//                    internal_enable <= 0;
//                end
//                else
//                begin
//                    internal_enable <= 0;
//                end
//            end

//            if(consumed & ~empty[internal_id] & (counter == 0)) // changed was slected_queue instead of internal_id
//            begin
//                counter <= 1;
//                internal_enable <= 0;
//            end
//            else if(counter == 2)
//            begin
//                counter <= 0;
//                internal_enable <= 0;
//            end
//            else if((counter == 1) & (~empty[internal_id_ff])) // changed was slected_queue instead of internal_id_ff
//            begin
//                counter <= counter + 1;
//                internal_enable <= 1;
//            end
//            else if((counter == 1) & (empty[internal_id_ff])) // changed was slected_queue instead of internal_id_ff
//            begin
//                counter <= 0;
//                internal_enable <= 0;
//            end
//            else
//            begin
//                internal_enable <= 0;
//            end

//            if(consumed & (counter == 0))
//            begin // wait for the queue state to update upon the reception of the consumed signal
//                counter <= 1;
//                internal_enable <= 0;
//            end
//            else if(~empty[internal_id] & (counter == 1))
//            begin
//                counter <= 2;
//                internal_enable <= 1;
//            end
//            else if(counter == 2)
//            begin
//                counter <= 0;
//                internal_enable <= 0;
//            end
//            else
//            begin
//                counter <= 0;
//                internal_enable <= 0;
//            end

            if(~pending_transaction & ~empty[selected_queue])
            begin
                pending_transaction <= 1;
                internal_enable <= 1;
            end
            else if(pending_transaction & consumed & ~consumed_ff)
            begin
                pending_transaction <= 0;
                internal_enable <= 0;
            end
            else
            begin
                internal_enable <= 0;
            end
        end
    end

endmodule
