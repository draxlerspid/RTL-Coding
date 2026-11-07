module up_counter(
		output logic [3:0] count, 
		input logic clk , nrst 
		);
		
		always_ff @ ( posedge clk or negedge nrst)
		begin 
			if (!nrst)
			count <= 4'b0000;
			else 
			count <= count + 4'b001;
		end
		
endmodule
