module basic_gates_tb();

	logic A,B,C;
	logic P,Q,R,S,T,U;
	
	basic_gates uut(.A(A) , .B(B) , .C(C) , .P(P) , .Q(Q) , .R(R) ,.S(S) , .T(T) , .U(U));
	
	initial 
		begin
		
			A=0;B=0;C=0; #100;
			A=0;B=0;C=1; #100;
			A=0;B=1;C=0; #100;
			A=0;B=1;C=1; #100;
			A=1;B=0;C=0; #100;
			A=1;B=0;C=1; #100;
			A=1;B=1;C=0; #100;
			A=1;B=1;C=1; #100;
			
		$finish;
		
	end
endmodule
