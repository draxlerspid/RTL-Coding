module decoder_tb();
			logic [7:0]out;
			logic [2:0]in;

			decoder uut(.out(out) , .in(in));
			
			initial 
				begin
					$monitor("Time= %0t | in =%b => out=%b",$time , in , out);

					in = 3'b000; #10;
					in = 3'b001; #10;
					in = 3'b010; #10;
					in = 3'b011; #10;
					in = 3'b100; #10;
					in = 3'b101; #10;
					in = 3'b110; #10;
					in = 3'b111; #10;

					$finish;
				end

endmodule
