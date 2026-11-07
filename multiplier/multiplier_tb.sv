module multiplier_tb();

			logic [7:0] a ;
			logic [7:0] b ;
			logic [15:0] product;

			multiplier uut( .product(product) , .a(a) , .b(b) );

			initial 
				begin 

					a=8'd12 ; b=8'd3 ; #10;

					a=8'd15 ; b=8'd7 ; #10;

					a=8'd5 ; b=8'd20 ; #10;

					a=8'd225 ; b=8'd225 ; #10;

				end
endmodule
