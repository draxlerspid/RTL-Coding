module piso(
			output logic sout,
			output logic [3:0] temp,
			input logic clk,load,
			input logic [3:0] pin
			);

			always_ff @ (posedge clk ) 
				begin 
					if (load)
						temp <= pin ;  // Parallel I/P
					else
						begin
							sout <= temp[3];        // Serial I/P
							temp <= { temp[2:0] , 1'b0 };
						end
				end
endmodule

			
