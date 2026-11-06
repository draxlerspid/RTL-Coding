module half_substractor_tb();

	logic a,b;
	logic diff,bo;
	
	half_substractor uut(.a(a) , .b(b) , .diff(diff), .bo(bo));
	
	initial 
		begin 
		a=0; b=0; #100;
		a=0; b=1; #100;
		a=1; b=0; #100;
		a=1; b=1; #100;
		$stop;
	end
	
endmodule
		
		
