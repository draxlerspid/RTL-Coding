module up_counter_tb();
	
	logic [3:0] count;
	logic clk , nrst;
	
	up_counter uut(.count(count) , .nrst(nrst) , .clk(clk) );
	
	initial clk=1;
	
	always #5 clk = ~clk ;
	
	initial
		begin 
		
		nrst = 0; #100;
		nrst = 1; #200;
		nrst = 0; #100;
		nrst = 1; #200;
		$finish;
		
		end
		
endmodule
