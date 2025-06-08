module ALU_SHR_7bit (
    input wire [6:0] in,
    input wire [2:0] shift,  // Shift amount (0-7)
    output reg [6:0] out
);
    always @(*) begin
        case(shift)
            3'b000: out = in;
            3'b001: out = {1'b0, in[6:1]};
            3'b010: out = {2'b00, in[6:2]};
            3'b011: out = {3'b000, in[6:3]};
            3'b100: out = {4'b0000, in[6:4]};
            3'b101: out = {5'b00000, in[6:5]};
            3'b110: out = {6'b000000, in[6]};
            3'b111: out = 7'b0000000;  // Shift all bits out
        endcase
    end
endmodule