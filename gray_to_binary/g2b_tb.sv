module g2b_tb();
		logic [3:0] binary;
		logic [3:0] gray;

		g2b uut ( .gray(gray) , .binary(binary) );

		initial 
			begin
				gray = 4'b1110; #10;
				gray = 4'b1010; #10;
				gray = 4'b0111; #10;
				gray = 4'b1000; #10;
				gray = 4'b0100; #10;
				$finish;
			end
endmodule
		
