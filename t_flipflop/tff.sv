module tff(
			output logic q , qn ,
			input logic t , clk , nRst
			);

			always_ff @ ( posedge clk or negedge nRst )
				begin 
					if  ( !nRst ) 
						begin
							q <= 1'b0;
							qn <= 1'b1;
						end

					else 
						begin 
							q <= ~t;
							qn <= t;
						end					

				end

endmodule
