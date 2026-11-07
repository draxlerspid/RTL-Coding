module srff_tb();
			
			logic q , qn ;
			logic s, r , clk , nRst ;

			srff uut ( .s(s) , .r(r) , .nRst(nRst) , .clk(clk) , .q(q) , .qn(qn) );

			
			initial 
				begin 
					clk=0;
					nRst = 0; 
				end
	
			always 
				#5 clk = ~clk;

			initial 
				begin
					$monitor ( " Time  = %0t | s = %0b | r = %0b clk = %b  => q = %b " , $time , s ,r ,clk , q) ;
					
					#10; s = 0 ; r = 0 ;
					nRst = 1;
					#10; s = 0 ; r = 0 ;
					#10; s = 0 ; r = 1 ;	
					#10; s = 1 ; r = 0 ;	
					#10; s = 1 ; r = 1 ;	
					#10; 	
					#10; s = 0 ; r = 0 ;	

					$finish;

				end 

endmodule
		
