module piso_tb();
			logic sout;
			logic [3:0] temp;
			logic clk,load;
			logic [3:0] pin;

			piso uut ( .sout(sout) , .temp(temp) , .clk(clk) , .load(load) , .pin(pin) );
			
			initial 
				clk = 0;
			always 
				#5 clk = ~clk;
			initial 
				begin 
				clk = 0;
				pin = 4'b1010;
				load = 1'b1;
				#10;

				load = 1'b0;
				#50;
				pin = 4'b0101;
				load=1'b1;
				#10;
				load=1'b0;
				#50;
				$finish;
				
				end



endmodule
