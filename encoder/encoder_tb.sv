module encoder_tb();

		logic [1:0]d;
		logic [3:0]y;
		logic en;

		encoder uut ( .d(d) , .y(y) , .en(en) );
		
		initial begin 
			$dumpfile("encoder.vcd");
			$dumpvars(0,encoder_tb);

		end

		initial begin 
			repeat (10)
				begin 
					stimulus();
						begin 
							$display("en : %0b , y : %0b , d : %0b",en,y,d);
						end
				end
		end

		task stimulus();
			begin
				en = $random; #5;
				y = $random; #5;
			end
		endtask

endmodule

