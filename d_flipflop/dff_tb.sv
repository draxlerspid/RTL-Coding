module dff_tb();
			
			logic q , qn ;
			logic d , clk , nRst ;

			dff uut ( .d(d) , .nRst(nRst) , .clk(clk) , .q(q) , .qn(qn) );

			initial 
				begin 
					d=0;
					clk=0;
				end


			always
				#5 clk = ~clk ;
			

			initial 
				begin
					nRst = 1; d = 1; #10;
					nRst = 1; d = 0; #10;
					nRst = 0; d = 1; #10;
					nRst = 1; d = 1; #10; 
					$stop;
				end

endmodule
			

