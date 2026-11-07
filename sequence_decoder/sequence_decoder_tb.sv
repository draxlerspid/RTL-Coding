module sequence_detector_tb();          // 1011
			logic out;
			logic in;
			logic clk , nrst;

		sequence_detector uut ( .out(out) , .in(in) , .clk(clk) , .nrst(nrst) );

		initial 
			begin
				in=0; clk=03 ; nrst= 1;
				
				nrst=0; #5;
				nrst=1; #5;

				in = 1; #10; in = 0; #10; in = 1; #10; in = 1; #10;
				in = 0; #10; in = 1; #10; in = 0; #10; in = 1; #10; in = 1; #10;
				$finish;

			end

		always #5 clk = ~clk ;

endmodule
				
					
