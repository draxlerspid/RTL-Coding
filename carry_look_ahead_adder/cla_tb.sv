module cla_tb();
		

		logic [3:0]s;
		logic cout;
		logic [3:0]a,b;
		logic cin;
		logic [2:0]c;
		logic [3:0]p,g;

	cla uut(.s(s) , .cout(cout) , .a(a) , .b(b) , .cin(cin) .c(c) , .p(p) , .g(g) );
		initial 
			begin 
				a=4'b0011;b=4'b1000;cin=0;#50;
    			a=4'b1111;b=4'b1111;cin=1;#50;
    			a=4'b0000;b=4'b0000;cin=0;#50;
    			a=4'b0101;b=4'b1010;cin=1;#50;
    			a=4'b1101;b=4'b1000;cin=0;#50;
    			a=4'b0011;b=4'b1000;cin=1;#50;

				$finish;
			end 

endmodule
		
