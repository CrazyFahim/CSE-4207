module top (
    input wire clk, reset,
    output wire [6:0] result,
    output wire flag_gt_zero
);
    wire [6:0] A, B;
    wire OP;
    wire [6:0] alu_result;
    wire ZF;
    
    controller fsm (
        .clk(clk),
        .reset(reset),
        .A(A),
        .B(B),
        .OP(OP)
    );
    
    ALU_7bit datapath (
        .A(A),
        .B(B),
        .OP(OP),
        .result(alu_result),
        .ZF(ZF)
    );
    
    assign result = alu_result;
    assign flag_gt_zero = (alu_result != 7'b0); // Direct comparison
endmodule
