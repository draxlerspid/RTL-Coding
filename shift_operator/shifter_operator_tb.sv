module shift_operator_tb();
			logic [3:0] out ;
			logic [1:0] sel;
			logic [3:0] in;
			integer i;

			shift_operator uut ( .out(out) , .sel(sel) , .in(in) );
			
			initial 
				begin 
					{in} = 1'b0; #2;
					{in} = 4'b0110;
				end
			initial 
				begin 
					for ( i = 0 ; i < 4 ; i=i+1 )
						begin 
							sel = i ;
							#5;
						end
				end
			
			initial
				#100
				$finish();

endmodule
					
					 
