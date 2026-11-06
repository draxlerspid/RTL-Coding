module bit_comparator(
		output logic [7:0] a_gt_b,
		output logic [7:0] a_lt_b,
		output logic [7:0] a_eq_b,
		input logic [7:0] a,
		input logic [7:0] b
		);
		
		always_comb
			begin 
				a_gt_b = (a > b);
				a_lt_b = (a < b);
				a_eq_b = (a == b);
			end
endmodule 
