module encoder_8_3_tb();
			
			logic [2:0] y;
			logic [7:0] a;
			logic en;
			
			encoder_8_3 uut(.y(y) , .a(a) , .en(en));
			
			initial 
				begin
				en=1;
					a=8'b0000000;#10;
					a=8'b00000001;#10;
					a=8'b00000010;#10;
					a=8'b00000100;#10;
					a=8'b00001000;#10;
					a=8'b00010000;#10;
					a=8'b00100000;#10;
					a=8'b01000000;#10;
					a=8'b10000000;#10;
				$finish;
			end

endmodule 

			
			
