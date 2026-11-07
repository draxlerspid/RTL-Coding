`timescale 1ns/1ps

module mux4_1 (	output logic y ,
		input logic a ,b, c , d ,s0,s1);
		
always_comb
	if (s0)
		if (s1)
			y=d;
		else
			y=c;
	else
		if (s1)
			y=b;
		else
			y=a;
endmodule

	
