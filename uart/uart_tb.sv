
// Testbench code for UART

module tb_uart;

    // Testbench signals
    logic clk;
    logic nrst;
    logic [7:0] tx_data;
    logic tx_start;

    logic tx;
    logic tx_busy;
    logic [7:0] rx_data;
    logic rx_valid;
	

    // Instantiate UART Transmitter
    uart_tx uart_tx_inst (
        .clk(clk),
        .nrst(nrst),
        .data(tx_data),
        .start(tx_start),
        .tx(tx),
        .busy(tx_busy)
    );

    // Instantiate UART Receiver
    uart_rx uart_rx_inst (
        .clk(clk),
        .nrst(nrst),
        .rx(tx),
        .data(rx_data),
        .valid(rx_valid)
    );

    // Clock Generation: 100 MHz
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test Sequence
    initial begin

        // Initialize inputs
        nrst = 0;
        tx_data = 8'h00;
        tx_start = 0;
		

        // Apply active-low reset
        #20;
        nrst = 1;

        // Transmit data
        #10;
        tx_data = 8'hA5;
        tx_start = 1;

        #10;
        tx_start = 0;
        

        // Check received data
        if (rx_data == 8'hA5 && rx_valid == 1'b1) begin
            $display("Test Passed: Received data matches transmitted data.");
        end
        else begin
            $display("Test Failed: Received data does not match transmitted data.");
        end

        #100;
        $finish;

    end

endmodule

