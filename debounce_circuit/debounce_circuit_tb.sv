module debounce_tb;


    logic clk;
    logic nreset;
    logic noisy;
    logic clean;


    debounce uut (
        .clk(clk),
        .nreset(nreset),
        .noisy(noisy),
        .clean(clean)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        // Initialize Inputs
        nreset = 0;
        noisy = 0;

        // Reset the circuit
        #20;
        nreset = 1;

        // Simulate noisy switch input
        #20 noisy = 1; #10 noisy = 0; #10 noisy = 1;
        #10 noisy = 0; #10 noisy = 1; #10 noisy = 0;
        #20 noisy = 1; #10 noisy = 1; #10 noisy = 1;
		#10 noisy = 1;

        // Wait for debounce
        #200;

        // Check if the output is clean
        if (clean == 1) begin
            $display("Test Passed: Debounced output is clean.");
        end else begin
            $display("Test Failed: Debounced output is not clean.");
        end

        $finish;
    end

endmodule
