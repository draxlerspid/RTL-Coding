module multiplxer_tb();

		logic [7:0]a;
		logic [2:0]sel;
		logic d;

		multiplexer uut(  .d(d), .a(a) , .sel(sel) ); 
		initial 
			begin
			a=8'b00000000; #10;
			a=8'b00000001;  sel=3'b000; #10;
			a=8'b00000010;  sel=3'b001; #10;
			a=8'b00000100;  sel=3'b010; #10;
			a=8'b00001000;  sel=3'b011; #10;
			a=8'b00010000;  sel=3'b100; #10;
			a=8'b00100000;  sel=3'b101; #10;
			a=8'b01000000;  sel=3'b110; #10;
			a=8'b10000000;  sel=3'b111; #10;
			$finish;
			end
endmodule
		
