module ripple_counter_tb();
	
	logic [3:0] q;
	logic clk , nrst;
	
	ripple_counter uut(.q(q) , .nrst(nrst) , .clk(clk) );
	
	initial clk=1;
	
	always #5 clk = ~clk ;
	
	initial
		begin 
		$monitor("Time=%0t | rst=%b clk=%b => q=%b", $time, nrst, clk, q);
		
		nrst = 0; #10;
		nrst = 1; #50;
		nrst = 0; #10;
		nrst = 1; #30;
		$finish;
		
		end
		
endmodule
