module tff_tb();
			
			logic q , qn ;
			logic t , clk , nRst ;

			tff uut ( .t(t) , .nRst(nRst) , .clk(clk) , .q(q) , .qn(qn) );

			initial 
				begin 
					t=0;
					clk=0;
				end


			always
				#5 clk = ~clk ;
			

			initial 
				begin
					nRst = 1; t = 1; #10;
					nRst = 1; t = 0; #10;
					nRst = 0; t = 1; #10;
					nRst = 1; t = 1; #10; 
					$stop;
				end

endmodule
			

