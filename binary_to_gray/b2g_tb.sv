module b2g_tb();
		logic [3:0] binary;
		logic [3:0] gray;

		b2g uut ( .gray(gray) , .binary(binary) );

		initial 
			begin
				binary = 4'b0110; #10;
				binary = 4'b1010; #10;
				binary = 4'b1110; #10;
				binary = 4'b1001; #10;
				$finish;
			end
endmodule
		
