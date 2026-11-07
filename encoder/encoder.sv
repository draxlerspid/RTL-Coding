module encoder(
		output logic [1:0]d,
		input logic [3:0]y,
		input logic en
		);

		always_comb @ (en or d ) 
		begin
			if (en)			
				begin
					if (y == 4'b0001)
						d = 2'b00;
					else if (y == 4'b0010)
						d = 2'b01;
					else if (y == 4'b0100)
						d = 2'b10;
					else if (y == 4'b1000)
						d = 2'b11;
					else 
						d = 2'b00;
				end
			else 
				d = 2'b00; 
		end

endmodule
