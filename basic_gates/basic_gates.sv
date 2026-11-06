module basic_gates(A,B,C,P,Q,R,S,T,U);
	
	input A,B,C;
	output P,Q,R,S,T,U;
	
	and a1(P,A,B);
	nand n1(Q,A,B,C);
	or o1(R,A,B,C);
	nor no1(S,A,B,C);
	xor x1(T,A,B,C);
	xnor xn1(U,A,B,C);
	
endmodule 
	
