module ripple_carry_adder_tb();
			
			logic [3:0]s,cout;
			logic [3:0]a,b;
			logic [2:0]c;
			
			ripple_carry_adder uut (.s(s)  , .cout(cout) , .a(a) , .b(b) , .c(c));
		
			initial 
				begin
				a=4'b0000; b=4'b0110 ; #100;
				a=4'b1001; b=4'b1110 ; #100;
				a=4'b0011; b=4'b1010 ; #100;
				

				$finish;
				end
endmodule
				 		
			


