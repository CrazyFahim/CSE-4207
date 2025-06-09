module ALU_7bit (
    input wire [6:0] A, B,
    input wire OP,          // 0: NOT, 1: SHR
    output reg [6:0] result,
    output wire ZF          // Zero flag
);
    wire [6:0] R_NOT, R_SHR;
    
    // Instantiate modules
    ALU_NOT_7bit NOT1 (.A(A), .result(R_NOT));
    ALU_SHR_7bit SHR1 (.in(A), .shift(B[2:0]), .out(R_SHR));
    
    always @(*) begin
        case (OP)
            1'b0: result = R_NOT;  // NOT operation
            1'b1: result = R_SHR;  // SHR operation
            default: result = 7'b0000000;
        endcase
    end
    
    // Zero flag (1 when result is all zeros)
    assign ZF = (result == 7'b0000000);
endmodule
