module debounce(
    input  logic clk,               // Clock signal
    input logic nreset,             // Reset signal
    input logic noisy,             // Noisy switch input
    output logic clean         // Debounced (clean) output
);

    logic [3:0] shift_reg;

    always @(posedge clk or negedge nreset) begin
        if (!nreset) begin
            shift_reg <= 4'b0;
            clean <= 0;
        end else begin
            shift_reg <= {shift_reg[2:0], noisy};
            if (shift_reg == 4'b1111)
                clean <= 1;
            else if (shift_reg == 4'b0000)
                clean <= 0;
        end
    end
endmodule
