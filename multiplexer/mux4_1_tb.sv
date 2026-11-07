`timescale 1ns/1ps

module mux4_1_tb;

logic a,b,c,d;
logic s0,s1;
logic y;


mux4_1 uut(
	.y(y), 
	.a(a),
	.b(b),
	.c(c),
	.d(d),
	.s0(s0),
	.s1(s1)
	);
	
initial begin
	a=0;
	b=1;
	c=0;
	d=1;
	
	s0=0; s1=0; #10; 
	$display("s1=%b s0=%b ->y=%b",s1,s0,y);
	
	s0=0; s1=1; #10; 
	$display("s1=%b s0=%b ->y=%b",s1,s0,y);
	
	s0=1; s1=0; #10; 
	$display("s1=%b s0=%b ->y=%b",s1,s0,y);
	
	s0=1; s1=1; #10; 
	$display("s1=%b s0=%b ->y=%b",s1,s0,y);

	#100
	
	$finish;
	end
	
endmodule
			
