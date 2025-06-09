`timescale 1ns/1ns
module ALU_7bit_tb;

    reg [6:0] A, B;
    reg OP;
    wire [6:0] result;
    wire ZF;
    
    ALU_7bit uut (
        .A(A),
        .B(B),
        .OP(OP),
        .result(result),
        .ZF(ZF)
    );
    
    initial begin
        $dumpfile("alu_7bit_test.vcd");
        $dumpvars(0, ALU_7bit_tb);
        
        // Test NOT operation
        A = 7'b1010101; B = 7'b0000000; OP = 1'b0;
        #10;
        
        // Test SHR operation with different shift amounts
        A = 7'b1100110; B = 7'b0000001; OP = 1'b1;  // Shift by 1
        #10;
        A = 7'b1100110; B = 7'b0000011; OP = 1'b1;  // Shift by 3
        #10;
        A = 7'b1100110; B = 7'b0000111; OP = 1'b1;  // Shift by 7 (all bits out)
        #10;
        
        // Test zero flag
        A = 7'b0000000; B = 7'b0000000; OP = 1'b0;  // NOT of 0 should be all 1s
        #10;
        A = 7'b0000001; B = 7'b0000001; OP = 1'b1;  // Shift 1 right by 1 (should be 0)
        #10;
        
        $finish;
    end
    
    initial begin
        $monitor("Time=%3t A=%b B=%b OP=%b -> Result=%b ZF=%b", 
                $time, A, B, OP, result, ZF);
    end
endmodule
