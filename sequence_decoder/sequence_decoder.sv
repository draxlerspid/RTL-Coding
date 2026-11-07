module sequence_detector(          // 1011
			output logic out,
			input logic in,
			input logic clk , nrst
			);

			enum { s0 , s1 , s2 , s3 , s4} pr_state , nxt_state;

			always_ff @ ( posedge clk or negedge nrst )
				begin
					if (! nrst)
						pr_state <= s0;
					else 
						pr_state <= nxt_state;
				end

			always_comb
				begin
					case(pr_state)
						s0 :	begin	
								if (in)
									nxt_state <= s1;
								else
									nxt_state <= s0;
								out =0;
								end

						s1 :	begin	
								if (in)
									nxt_state <= s1;
								else
									nxt_state <= s2;
								out =0;
								end

						s2 :	begin	
								if (in)
									nxt_state <= s3;
								else
									nxt_state <= s2;
								out =0;
								end

						s3 :	begin	
								if (in)
									nxt_state <= s4;
								else
									nxt_state <= s3;
								out =0;
								end

						s4 :	begin	
								if (in)
									nxt_state <= s1;
								else
									nxt_state <= s2;
								out =1;
								end

						default : 	begin
									nxt_state <= s0;
									out = 0;
									end

					endcase
				end

endmodule


			

