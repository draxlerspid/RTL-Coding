module jkff_tb();
			
			logic q , qn ;
			logic j, k , clk , nRst ;

			jkff uut ( .j(j) , .k(k) , .nRst(nRst) , .clk(clk) , .q(q) , .qn(qn) );

			
			initial 
				begin 
					clk=0;
					nRst = 0;
					forever #5 clk = ~clk ; 
				end	

			initial 
				begin
					$monitor ( " Time  = %0t | j = %0b | k = %0b clk = %b  => q = %b " , $time , j ,k ,clk , q) ;
					
					#10; j = 0 ; k = 0 ;
					nRst = 1;
					#10; j = 0 ; k = 0 ;
					#10; j = 0 ; k = 1 ;	
					#10; j = 1 ; k = 0 ;	
					#10; j = 1 ; k = 1 ;	
					#10; 	
					#10; j = 0 ; k = 0 ;	

					$finish;

				end 

endmodule
		
