module sipo (
		output logic [3:0] pout ,
		input logic sin , clk
			);
		logic [3:0] temp;
		
			always_ff @ (posedge clk )
				begin 
					temp <= {sin ,temp[3:1] } ; // Serial I/P
					pout = temp ;   // Paralle O/P
				end
endmodule

