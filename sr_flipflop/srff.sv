module srff(
			output logic q , qn ,
			input logic s, r , clk , nRst
			);

			always_ff @ ( posedge clk or negedge nRst )
				begin 
					if  ( !nRst ) 
						begin
							q <= 1'b0;
							qn <= 1'b1;
						end

					else
						case ({s,r})
						2'b00:
							begin 
								q <= q;
								qn <= qn;
							end

						2'b01:
							begin 
								q <= 1'b0;
								qn <= 1'b1;
							end

						2'b10:
							begin 
								q <= 1'bx;
								qn <= 1'bx;
							end

						2'b11:
							begin 
								q <= ~q;
								qn <= ~qn;

							end

						default : q <= 1'b0;
							
						endcase


				end

endmodule
