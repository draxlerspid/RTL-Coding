`timescale 1ns/1ps

module full_adder_tb();

	logic sum,carry;
	logic a,b,c;
	
	full_adder uut(.sum(sum) , .carry(carry) , .a(a) ,.b(b) , .c(c));
	
	initial 
		begin
		
		a=0;b=0;c=0; #10;
		a=0;b=0;c=1; #10;
		a=0;b=1;c=0; #10;
		a=0;b=1;c=1; #10;
		a=1;b=0;c=0; #10;
		a=1;b=0;c=1; #10;
		a=1;b=1;c=0; #10;
		a=1;b=1;c=1; #10;
		
		
		$finish;
		end
		
endmodule
