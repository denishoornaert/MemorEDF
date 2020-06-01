`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Technische Universitat Munchen. Chair of Cyber-Physical Systems
// Engineer: Denis Hoornaert
// 
// Create Date: 01/17/2020 03:01:32 PM
// Design Name: Test bench Queue
// Module Name: TB_Queue
// Project Name: MemorEDF
// Target Devices: 
// Tool Versions: 
// Description: Test bench for the Queue module
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TB_Queue();

    reg          clock;
    reg          reset;
    reg  [7 : 0] valueIn;
    reg          valueInValid;
    reg          consume;
    
    wire [7 : 0] valueOut;
    wire         empty;
    wire         full;

    Queue queue(clock, reset, valueIn, valueInValid, consume, valueOut, empty, full);
    
    // Generation the clock signal
    always
    begin
        clock <= 0;
        #5;
        clock <= 1;
        #5;
    end
    
    // Test bench in itself
    initial
    begin
        // Force reset on the circuit
        reset        <= 1;
        valueIn      <= 0;
        valueInValid <= 0;
        consume      <= 0;
        #10;
        // Stop reset but do nothing
        reset        <= 0;
        #10;
        // TEST SINGLE AND SIMPLE VALUES INSERTION IN THE QUEUE
        // Insert first value
        valueInValid <= 1;
        valueIn      <= 1;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 1)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 0)
        begin
            $display("Error. Expected %b, found %b!", 0, valueOut);
            $finish;
        end
        #10;
        // Try to insert a second value without the valid signal as high
        valueInValid <= 0;
        valueIn      <= 2;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 1)
        begin
            $display("Error. Expected 1, found something else!");
            $finish;
        end
        #10;
        // Insert second value
        valueInValid <= 1;
        valueIn      <= 3;
        #10;
        // Try to insert a third value without the valid signal as high
        valueInValid <= 0;
        valueIn      <= 4;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 1)
        begin
            $display("Error. Expected 1, found something else!");
            $finish;
        end
        #10;
        // Insert thrid value
        valueInValid <= 1;
        valueIn      <= 5;
        #10;
        // Try to insert a fourth value without the valid signal as high
        valueInValid <= 0;
        valueIn      <= 6;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 1)
        begin
            $display("Error. Expected 1, found something else!");
            $finish;
        end
        #10;
        // Insert fifth value
        valueInValid <= 1;
        valueIn      <= 7;
        #10;
        // Try to insert a sixth value without the valid signal as high
        valueInValid <= 0;
        valueIn      <= 8;
        if(full != 1)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 1)
        begin
            $display("Error. Expected 1, found something else!");
            $finish;
        end
        #30;
        // TEST SINGLE AND SIMPLE VALUES EXTRACTION FORM THE QUEUE
        consume <= 1;
        if(full != 1)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 1)
        begin
            $display("Error. Expected 1, found something else!");
            $finish;
        end
        #10;
        consume <= 0;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 3)
        begin
            $display("Error. Expected 3, found something else!");
            $finish;
        end
        #10;
        consume <= 1;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 3)
        begin
            $display("Error. Expected 3, found something else!");
            $finish;
        end
        #10;
        consume <= 0;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 5)
        begin
            $display("Error. Expected 5, found something else!");
            $finish;
        end
        #10;
        consume <= 1;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 5)
        begin
            $display("Error. Expected 5, found something else!");
            $finish;
        end
        #10;
        consume <= 0;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 7)
        begin
            $display("Error. Expected 7, found something else!");
            $finish;
        end
        #10;
        consume <= 1;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 7)
        begin
            $display("Error. Expected 7, found something else!");
            $finish;
        end
        #10;
        consume <= 0;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 1)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 0)
        begin
            $display("Error. Expected 0, found something else!");
            $finish;
        end
        #30;
        // Simultaneous insertion and extraction
        // Insert first value
        valueInValid <= 1;
        valueIn      <= 1;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 1)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 0)
        begin
            $display("Error. Expected %b, found %b!", 0, valueOut);
            $finish;
        end
        #10;
        // Try to insert a second value without the valid signal as high
        valueInValid <= 0;
        valueIn      <= 2;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 1)
        begin
            $display("Error. Expected 1, found something else!");
            $finish;
        end
        #10;
        // First simultaneous insertion and extraction
        valueInValid <= 1;
        valueIn      <= 3;
        consume      <= 1;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 1)
        begin
            $display("Error. Expected 1, found something else!");
            $finish;
        end
        #10;
        // Check first simultaneous insertion and extraction
        valueInValid <= 0;
        valueIn      <= 4;
        consume      <= 0;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 3)
        begin
            $display("Error. Expected 3, found something else!");
            $finish;
        end
        #10;
        // Second simultaneous insertion and extraction
        valueInValid <= 1;
        valueIn      <= 5;
        consume      <= 1;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 3)
        begin
            $display("Error. Expected 3, found something else!");
            $finish;
        end
        #10;
        // Check second simultaneous insertion and extraction
        valueInValid <= 0;
        valueIn      <= 6;
        consume      <= 0;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 5)
        begin
            $display("Error. Expected 5, found something else!");
            $finish;
        end
        #10;
        // Insert second value
        valueInValid <= 1;
        valueIn      <= 7;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 5)
        begin
            $display("Error. Expected %b, found %b!", 5, valueOut);
            $finish;
        end
        #10;
        // Try to insert a third value without the valid signal as high
        valueInValid <= 0;
        valueIn      <= 8;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 5)
        begin
            $display("Error. Expected 5, found something else!");
            $finish;
        end
        #10;
        // First simultaneous insertion and extraction
        valueInValid <= 1;
        valueIn      <= 9;
        consume      <= 1;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 5)
        begin
            $display("Error. Expected 5, found something else!");
            $finish;
        end
        #10;
        // Check first simultaneous insertion and extraction
        valueInValid <= 0;
        valueIn      <= 10;
        consume      <= 0;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 7)
        begin
            $display("Error. Expected 7, found something else!");
            $finish;
        end
        #10;
        // Second simultaneous insertion and extraction
        valueInValid <= 1;
        valueIn      <= 11;
        consume      <= 1;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 7)
        begin
            $display("Error. Expected 7, found something else!");
            $finish;
        end
        #10;
        // Check second simultaneous insertion and extraction
        valueInValid <= 0;
        valueIn      <= 12;
        consume      <= 0;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 9)
        begin
            $display("Error. Expected 9, found something else!");
            $finish;
        end
        #10;
        // Insert third value
        valueInValid <= 1;
        valueIn      <= 13;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 9)
        begin
            $display("Error. Expected %b, found %b!", 9, valueOut);
            $finish;
        end
        #10;
        // Try to insert a fourth value without the valid signal as high
        valueInValid <= 0;
        valueIn      <= 14;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 9)
        begin
            $display("Error. Expected 9, found something else!");
            $finish;
        end
        #10;
        // First simultaneous insertion and extraction
        valueInValid <= 1;
        valueIn      <= 15;
        consume      <= 1;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 9)
        begin
            $display("Error. Expected 9, found something else!");
            $finish;
        end
        #10;
        // Check first simultaneous insertion and extraction
        valueInValid <= 0;
        valueIn      <= 16;
        consume      <= 0;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 11)
        begin
            $display("Error. Expected 11, found something else!");
            $finish;
        end
        #10;
        // Second simultaneous insertion and extraction
        valueInValid <= 1;
        valueIn      <= 17;
        consume      <= 1;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 11)
        begin
            $display("Error. Expected 11, found something else!");
            $finish;
        end
        #10;
        // Check second simultaneous insertion and extraction
        valueInValid <= 0;
        valueIn      <= 18;
        consume      <= 0;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 13)
        begin
            $display("Error. Expected 13, found something else!");
            $finish;
        end
        #10;
        
        
        
        // Insert fourth value
        valueInValid <= 1;
        valueIn      <= 19;
        if(full != 0)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 13)
        begin
            $display("Error. Expected %b, found %b!", 13, valueOut);
            $finish;
        end
        #10;
        // Try to insert a fifth value without the valid signal as high
        valueInValid <= 0;
        valueIn      <= 20;
        if(full != 1)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 13)
        begin
            $display("Error. Expected 13, found something else!");
            $finish;
        end
        #10;
        // First simultaneous insertion and extraction
        valueInValid <= 1;
        valueIn      <= 21;
        consume      <= 1;
        if(full != 1)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 13)
        begin
            $display("Error. Expected 13, found something else!");
            $finish;
        end
        #10;
        // Check first simultaneous insertion and extraction
        valueInValid <= 0;
        valueIn      <= 22;
        consume      <= 0;
        if(full != 1)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 15)
        begin
            $display("Error. Expected 15, found something else!");
            $finish;
        end
        #10;
        // Second simultaneous insertion and extraction
        valueInValid <= 1;
        valueIn      <= 23;
        consume      <= 1;
        if(full != 1)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 15)
        begin
            $display("Error. Expected 15, found something else!");
            $finish;
        end
        #10;
        // Check second simultaneous insertion and extraction
        valueInValid <= 0;
        valueIn      <= 24;
        consume      <= 0;
        if(full != 1)
        begin
            $display("Full output does not respect the specifications!");
            $finish;
        end
        if(empty != 0)
        begin
            $display("Empty output does not respect the specifications!");
            $finish;
        end
        if(valueOut != 17)
        begin
            $display("Error. Expected 17, found something else!");
            $finish;
        end
        #30;
        // END
        $display("Test bench passed successfully!");
        $finish;
    end

endmodule