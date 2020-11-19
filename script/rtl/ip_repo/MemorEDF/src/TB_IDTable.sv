`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Technische Universitat Munchen. Chair of Cyber-Physical Systems
// Engineer: Denis Hoornaert
//
// Create Date: 01/18/2020 05:19:46 PM
// Design Name: Root
// Module Name: Root
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


module TB_IDTable();

    // Inputs
    reg          clock;
    reg          reset;
    reg [15 : 0] id;
    reg  [0 : 0] origin;
    reg          insert;
    reg          lookup;
    reg          invalidate;
    // Outputs
    wire [0 : 0] answer;
    wire         hit;

    IDTable #(
        .NUMBER_OF_PORTS(2),
        .ID_WIDTH(16),
        .NUMBER_OF_ENTRIES(32)
    )
    derm (
        .clock(clock),
        .reset(reset),
        .id(id),
        .origin(origin),
        .insert(insert),
        .lookup(lookup),
        .invalidate(invalidate),
        .answer(answer),
        .hit(hit)
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
        id <= 16'h018d;
        origin <= 1;
        insert <= 0;
        lookup <= 0;
        invalidate <= 0;
        #10ns
        reset <= 0;
        #10ns
        
        // Test insert first value
        insert <= 1;
        #10ns
        insert <= 0;
        id <= id+16'h0020;
        #10ns
        
        // Test insert second value
        insert <= 1;
        #10ns
        insert <= 0;
        id <= id+16'h0020;
        #10ns
        
        // Test insert third value
        insert <= 1;
        #10ns
        insert <= 0;
        id <= id+16'h0020;
        #10ns
        
        // Test insert fourth value
        insert <= 1;
        #10ns
        insert <= 0;
        id <= id+16'h0020;
        #10ns
        
        // Lookup for value in second position
        lookup <= 1;
        id <= 16'h01ad;
        #10ns
        assert(hit == 1) else $display("A hit should be detected");
        assert(answer == 1) else $display("The outcome of the lookup should be 1");
        lookup <= 0;
        #10ns
        
        // Lookup for value in fourth position
        lookup <= 1;
        id <= 16'h01ed;
        #10ns
        assert(hit == 1) else $display("A hit should be detected");
        assert(answer == 1) else $display("The outcome of the lookup should be 1");
        lookup <= 0;
        #10ns
        
        // Lookup for value not in the table
        lookup <= 1;
        id <= 16'h090d;
        #10ns
        assert(hit == 0) else $display("A miss should be detected");
        lookup <= 0;
        #10ns
        
        for (int i = 0; i < 28; i+=1)
        begin
            // Test insert fourth value
            insert <= 1;
            #10ns;
            insert <= 0;
            id <= id+16'h0020;
            #10ns;
        end
        
        // Test eviction of 0x01ad
        invalidate <= 1;
        id <= 16'h01ad;
        #10ns
        invalidate <= 0;
        #10ns
        
        // Test looking after the evicted entry
        lookup <= 1;
        id <= 16'h01ad;
        #10ns
        assert(hit == 0) else $display("A miss should be detected");
        lookup <= 0;
        #10ns
        
        $finish;
    end

endmodule
