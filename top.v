module top (
    input wire clk, reset,
    output wire [6:0] result,
    output wire flag_gt_zero
);
    wire [6:0] A, B;
    wire OP;
    wire [6:0] R_result;
    wire R_ZF;
    
    controller controller_inst (
        .clk(clk),
        .reset(reset),
        .A(A),
        .B(B),
        .OP(OP)
    );
    
    ALU_7bit alu_inst (
        .A(A),
        .B(B),
        .OP(OP),
        .result(R_result),
        .ZF(R_ZF)
    );
    
    assign result = R_result;
    assign flag_gt_zero = ~R_ZF;  // Active high when result is not zero
endmodule