module moore_machine(
			output logic o,
			input logic i,clk,nreset
				);

			typedef enum { s0 , s1 , s2, s3 , s4 } states ; 

			states ps , ns ; 

			always @ ( posedge clk or negedge nreset )
				begin 
					if (! nreset )
						ps <= s0 ;
					else
						ps <= ns ;
				end

			always_comb 
				begin 
					case(ps)
						s0: begin 
								ns = i ? s1 : s0 ;
							end

						s1: begin 
								ns = i ? s1 : s2 ;
							end

						s2: begin 
								ns = i ? s3 : s0 ;
							end

						s3: begin 
								ns = i ? s1 : s4 ;
							end

						s4: begin 
								ns = i ? s3 : s0 ;
							end
						default : ns = s0;

					endcase

				end

			always_comb
				begin
					case(ps)
						s0: begin 
								o = 0;
							end

						s1: begin 
								o = 0;
							end

						s2: begin 
								o = 0;
							end

						s3: begin 
								o = 0;
							end

						s4: begin 
								o = 1;
							end

					endcase
					
				end 

endmodule 


				

					

