module controller (
    input wire clk, reset,
    output reg [6:0] A, B,
    output reg OP
);
    reg [2:0] pstate, nstate;
    
    parameter [2:0] START = 3'b000,
                    TEST_NOT = 3'b001,
                    TEST_SHR = 3'b010,
                    FINISH = 3'b011;
    
    // State register
    always @(posedge clk or posedge reset) begin
        if (reset)
            pstate <= START;
        else
            pstate <= nstate;
    end
    
    // Next state and output logic
    always @(*) begin
        // Default outputs
        A = 7'b0000000;
        B = 7'b0000000;
        OP = 1'b0;
        nstate = pstate;
        
        case (pstate)
            START: begin
                nstate = TEST_NOT;
            end
            
            TEST_NOT: begin
                A = 7'b1010101;  // Test pattern for NOT
                B = 7'b0000000;  // Not used for NOT operation
                OP = 1'b0;       // NOT operation
                nstate = TEST_SHR;
            end
            
            TEST_SHR: begin
                A = 7'b1100110;  // Test pattern for SHR
                B = 7'b0000011;  // Shift by 3
                OP = 1'b1;      // SHR operation
                nstate = FINISH;
            end
            
            FINISH: begin
                nstate = START;
            end
            
            default: nstate = START;
        endcase
    end
endmodule