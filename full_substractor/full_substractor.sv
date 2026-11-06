module full_substractor(
	output logic d,bo,
	input logic a,b,bin
	);
	
	always_comb
		begin
		
		d = a ^ b ^ bin;
		bo = ~a & (b ^ bin) | (b & bin);
		
		end
		
endmodule 
	
