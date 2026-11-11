module newspaper_vm_tb();
			logic [1:0] coin;
			logic clk;
			logic nreset;
			logic newspaper;

			newspaper_vm uut ( .newspaper(newspaper), .coin(coin) , .clk(clk) , .nreset(nreset) );

			initial 
				begin 
					clk = 0 ;
					coin = 0;
					nreset = 0 ;
					#50  nreset =1 ; 
					#40;

        			// Insert 3 nickels to get a newspaper				
					coin = 2'b01; #40; //coin = 2'b00; #40;
					coin = 2'b01; #40; //coin = 2'b00; #40;
					coin = 2'b01; #40; //coin = 2'b00; #40;
					
					// Insert one nickel and one dime to get a newspaper
					coin = 2'b01; #40; //coin = 2'b00; #40;
					coin = 2'b10; #40; //coin = 2'b00; #40;
					
					// Insert two dimes; machine should not return a nickel, but give a newspaper
					coin = 2'b10; #40; //coin = 2'b00; #40;
					coin = 2'b10; #40; //coin = 2'b00; #40;
					 
					// Insert one dime and one nickel to get a newspaper
					coin = 2'b10; #40; //coin = 2'b00; #40;
					coin = 2'b01; #40; //coin = 2'b00; #40;
					
					#80 $finish;
				end
    

    always 
		begin
		    #20 clk = ~clk;
		end
endmodule				

			
