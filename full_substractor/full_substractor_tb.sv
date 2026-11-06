module full_substractor_tb();

	logic a,b,bin;
	logic d,bo;
		
	full_substractor uut(.d(d) , .bo(bo) , .a(a) , .b(b) , .bin(bin));
	
	initial 
		begin
		
		a=0;b=0;bin=0; #10;
		a=0;b=0;bin=1; #10;
		a=0;b=1;bin=0; #10;
		a=0;b=1;bin=1; #10;
		a=1;b=0;bin=0; #10;
		a=1;b=0;bin=1; #10;
		a=1;b=1;bin=0; #10;
		a=1;b=1;bin=1; #10;
		
		
		$finish;
		end
		
endmodule	   
