module newspaper_vm (
    input  logic [1:0] coin,
    input  logic       clk,
    input  logic       nreset,
    output logic       newspaper
);

    // FSM States
    typedef enum logic [1:0] { 
        s0  = 2'b00, 
        s5  = 2'b01, 
        s10 = 2'b10, 
        s15 = 2'b11 
    } states;
    
    states pr_state, nxt_state;

    // Combinational Next State and Output Logic
    always_comb begin
        // Default assignments to prevent unwanted latches
        nxt_state = pr_state;
        newspaper = 1'b0;

        case (pr_state)
            s0: begin
                if (coin == 2'b10) begin
                    newspaper = 1'b0;
                    nxt_state = s10;
                end else if (coin == 2'b01) begin
                    newspaper = 1'b0;
                    nxt_state = s5;
                end else begin 
                    newspaper = 1'b0;
                    nxt_state = s0;
                end
            end

            s5: begin 
                if (coin == 2'b10) begin 
                    newspaper = 1'b0;
                    nxt_state = s15;
                end else if (coin == 2'b01) begin 
                    newspaper = 1'b0;
                    nxt_state = s10;
                end else begin
                    newspaper = 1'b0;
                    nxt_state = s5;
                end
            end

            s10: begin 
                if (coin == 2'b10) begin
                    newspaper = 1'b0;
                    nxt_state = s15;
                end else if (coin == 2'b01) begin 
                    newspaper = 1'b0;
                    nxt_state = s15;
                end else begin 
                    newspaper = 1'b0;
                    nxt_state = s0;
                end
            end

            s15: begin
                newspaper = 1'b1;
                nxt_state = s0;
            end

            default: begin
                nxt_state = s0;
                newspaper = 1'b0;
            end
        endcase
    end

    // Sequential State Register Logic
    always_ff @(posedge clk or negedge nreset) begin 
        if (!nreset) begin
            pr_state <= s0;
        end else begin
            pr_state <= nxt_state; 
        end
    end

endmodule
