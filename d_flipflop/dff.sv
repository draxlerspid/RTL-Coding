module dff(
			output logic q , qn ,
			input logic d , clk , nRst
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
							q <= d;
							qn <= ~d;
						end

				end

endmodule
