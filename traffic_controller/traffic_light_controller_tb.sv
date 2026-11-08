module traffic_light_controller_tb();
			logic clk, nrst ;
			logic [2:0] NS_light , EW_light ; 
			
			traffic_light_controller uut ( .NS_light(NS_light) , .EW_light(EW_light) , .clk(clk) , .nrst(nrst));
				
			initial 
				begin 
					clk = 0 ;
					nrst = 1;

					nrst=0 ; #10;
					nrst=1 ; #10;
					
					#200 ;
					$finish ;
				end

					always #5 clk=~clk;

endmodule
						
				
