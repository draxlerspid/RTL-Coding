module mealy_machine_tb();
			logic o;
			logic i,clk,nreset;

			mealy_machine uut ( .o(o) , .clk(clk) , .nreset(nreset) , .i(i) );

			initial 
				begin 
					clk = 1'b0;
					nreset = 1'b0; #10;
					nreset = 1'b1;
				end

			always #5 clk = ~clk ;
			
			initial 
				begin
					#10;
					i=0 ; #10 ; i=0 ; #10 ; i=1 ; #10 ; i=0 ; #10 ;
					i=1 ; #10 ; i=1 ; #10 ; i=0 ; #10 ; i=1 ; #10 ;
					i=0 ; #10 ; i=1 ; #10 ; i=0 ; #10 ; i=1 ; #10 ;
					i=0 ; #10 ; i=1 ; #10 ; i=1 ; #10 ; i=0 ; #10 ;
					$finish;
				end

endmodule 
