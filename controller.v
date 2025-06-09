module controller (
    input wire clk, reset,
    output reg [6:0] A, B,
    output reg OP
);
    reg [2:0] pstate, nstate;
    
    parameter START  = 3'b000,
              ONE    = 3'b001,
              TWO    = 3'b010,
              THREE  = 3'b011,
              FINISH = 3'b100;

    // State register
    always @(posedge clk or posedge reset) begin
        if (reset) pstate <= START;
        else pstate <= nstate;
    end

    // Next state and output logic
    always @(*) begin
        A = 7'b0;
        B = 7'b0;
        OP = 1'b0;
        nstate = pstate;
        
        case (pstate)
            START:  nstate = ONE;
            
            ONE: begin       // Test NOT operation (result non-zero)
                A = 7'b1010101;
                OP = 1'b0;   // NOT opcode
                nstate = TWO;
            end
            
            TWO: begin       // Test SHR operation (result non-zero)
                A = 7'b1100110;
                B = 7'b0000001; // Shift by 1
                OP = 1'b1;   // SHR opcode
                nstate = THREE;
            end
            
            THREE: begin     // Test SHR operation (force result=0)
                A = 7'b0000001;
                B = 7'b0000111; // Shift by 7 (all bits out)
                OP = 1'b1;
                nstate = FINISH;
            end
            
            FINISH: nstate = START;
            
            default: nstate = START;
        endcase
    end
endmodule