module digital_clock_tb();
    logic [4:0] hr;
    logic [5:0] min;
    logic [5:0] sec;
    logic       clk;
    logic       nreset;

    digital_clock uut (
        .hr(hr),
        .min(min),
        .sec(sec),
        .clk(clk),
        .nreset(nreset)
    );

    always #5 clk = ~clk;

    initial begin

        clk = 0;
        nreset = 0;


        #20;
        nreset = 1;

        // Run simulation long enough to observe seconds incrementing 
        // (e.g., 65 clock cycles = 650 time units)
        #650;

        $finish;
    end

endmodule
