module half_substractor(
		output logic diff,bo,
		input logic a,b);
		
		assign dif=a^b;
		assign bo=~a&b;
		
endmodule

