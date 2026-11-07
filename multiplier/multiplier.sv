module multiplier(
    		output logic [15:0] product ,
    		input logic [7:0] a,
    		input logic [7:0] b

);
			always_comb
			begin   
				product = a * b;
			end

endmodule
