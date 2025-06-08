module ALU_NOT_7bit (
    input wire [6:0] A,
    output wire [6:0] result
);
    assign result = ~A;
endmodule