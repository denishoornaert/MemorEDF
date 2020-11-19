`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2020 15:21:58
// Design Name: 
// Module Name: TB_Mapper
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


module TB_Mapper();

    reg          clock;
    reg          reset;
    reg  [6 : 0] id_1;
    reg  [6 : 0] port_1;
    reg          valid_1;
    reg  [6 : 0] id_2;
    reg  [0 : 0] port_2;
    reg          valid_2;
    reg  [6 : 0] id_3;
    reg  [0 : 0] port_3;
    reg          valid_3;
    reg  [6 : 0] id_4;
    reg  [0 : 0] port_4;
    reg          valid_4;
    reg  [6 : 0] look_after;
    wire         came_from;

    Mapper #(
        .ID_WIDTH(6),
        .NUMBER_OF_PORTS(2)
    )
    map (
        .clock(clock),
        .reset(reset),
        //
        .id_1(id_1),
        .port_1(port_1),
        .valid_1(valid_1),
        //
        .id_2(id_2),
        .port_2(port_2),
        .valid_2(valid_2),
        //
        .id_3(id_3),
        .port_3(port_3),
        .valid_3(valid_3),
        //
        .id_4(id_4),
        .port_4(port_4),
        .valid_4(valid_4),
        //
        .write_look_after(look_after),
        .write_came_from(came_from),
        //
        .read_look_after(look_after),
        .read_came_from(came_from)
    );
    
    // Generation the clock signal
    always
        begin
            clock <= 1;
            #5;
            clock <= 0;
            #5;
        end
        
    initial
    begin
        reset <= 1;
        id_1 <= 0;
        port_1 <= 0;
        valid_1 <= 0;
        id_2 <= 0;
        port_2 <= 0;
        valid_2 <= 0;
        id_3 <= 0;
        port_3 <= 0;
        valid_3 <= 0;
        id_4 <= 0;
        port_4 <= 0;
        valid_4 <= 0;
        look_after <= 0;
        look_after <= 0;
        
        id_3 <= 0;
        id_4 <= 0;
        valid_3 <= 0;
        valid_4 <= 0;
        port_3 <= 0;
        port_4 <= 0;
        
        #10ns;
        reset <= 0;
        
        // Insert
        id_1 <= 7'h21;
        port_1 <= 1;
        valid_1 <= 1;
        id_2 <= 7'h20;
        port_2 <= 0;
        valid_2 <= 1;
        #10ns;
        valid_1 <= 0;
        valid_2 <= 0;
        #10ns;
        
        // Look-up
        look_after <= 12;
        #10ns;
        assert(write_came_from == 0) else $display("Output should be 0!");
        #10ns;
        
        // Look-up
        look_after <= 7'h21;
        #10ns;
        assert(write_came_from == 1) else $display("Output should be 0!");
        #10ns;
        
        // Look-up
        look_after <= 7'h20;
        #10ns;
        assert(write_came_from == 0) else $display("Output should be 0!");
        #10ns;
        
        $finish;
        
    end

endmodule
