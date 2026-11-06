module half_adder_tb();
	logic a,b;
	logic SUM,CARRY;
	
	half_adder uut(.a(a) , .b(b) , .sum(SUM) , .carry(CARRY));
	
	initial 
		begin
			a=0; b=0; #10
			a=0; b=1; #10
			a=1; b=0; #10
			a=1; b=1; #10
		$stop;
		end
endmodule
