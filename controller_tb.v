`timescale 1ns/1ns
module controller_tb;

    reg clk, reset;
    wire [6:0] A, B;
    wire OP;
    
    controller uut (
        .clk(clk),
        .reset(reset),
        .A(A),
        .B(B),
        .OP(OP)
    );
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        $dumpfile("controller_test.vcd");
        $dumpvars(0, controller_tb);
        
        reset = 1;
        #10;
        reset = 0;
        
        #100;
        $finish;
    end
    
    initial begin
        $monitor("Time=%3t State=%b A=%b B=%b OP=%b", 
                $time, uut.pstate, A, B, OP);
    end
endmodule