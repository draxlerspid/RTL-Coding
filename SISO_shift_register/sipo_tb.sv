module sipo_tb();
			logic [3:0] pout;
			logic clk,sin;
			logic pin;

			sipo uut ( .pout(pout) ,  .clk(clk) , .sin(sin) );
			
			initial
				begin 
					clk = 0;
					sin = 0;
				end

			always 
				#5 clk = ~clk;
			initial 
				begin 
				clk = 0;
				#10 sin = 1'b1;
				#10 sin = 1'b0;
				#10 sin = 1'b1;
				#10 sin = 1'b0;
				#10 sin = 1'b1;
				#10 sin = 1'b0;

				#50;
				$finish;
				
				end



endmodule
