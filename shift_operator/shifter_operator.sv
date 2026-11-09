module shift_operator(
			output logic [3:0] out,
			input logic [1:0] sel,
			input logic [3:0] in
			);
		
			always_comb 
				begin 
					case (sel)
						2'b00 : out = in << 1 ; // Logical left
						2'b01 : out = in >> 1 ; // Logical Right
						2'b10 : out = in <<< 1 ; // Arithmetic Left
						2'b11 : out = in >>> 1 ; // Arihmetic Right

						default : out = 4'b0000;
					endcase
				end
endmodule

