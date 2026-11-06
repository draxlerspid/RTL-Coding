module full_adder(
		output logic sum,carry,
		input logic a,b,c
		);
		
		logic w1,w2,w3;
		
		always_comb
			begin
			sum= a ^ b ^ c;
			carry=( a & b ) | ( b & c) | ( c & a);
			end
			
		endmodule
