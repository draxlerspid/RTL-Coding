module traffic_light_controller(
			output logic [2:0] NS_light,
			output logic [2:0] EW_light,
			input logic clk , nrst
			);
			
			localparam logic [2:0] RED = 3'b100, YELLOW = 3'b010, GREEN = 3'b001;

			typedef enum { s0 , s1 , s2 , s3 } states ; 
			states state, nxt_state;

			logic [3:0] counter;
			
			always_ff @ (posedge clk or negedge nrst )
				begin
					if (!nrst)
						begin 
							state <= s0;
							counter <= 0;
						end
		
					else 
						begin 
							state <= nxt_state;
						end
				end

			always_comb 
				begin 
					case (state) 
						s0:	begin
								nxt_state = s1;
								NS_light = GREEN ; 
								EW_light = RED ; 
							end

						s1:	begin
								nxt_state = s2;
								NS_light = YELLOW ; 
								EW_light = YELLOW ; 
							end

						s2:	begin
								nxt_state = s3;
								NS_light = RED ; 
								EW_light = GREEN ; 
							end

						s3:	begin
								nxt_state = s0;
								NS_light = YELLOW ; 
								EW_light = YELLOW ; 
							end

						default:	begin
										nxt_state = s0;
										NS_light = RED ; 
										EW_light = RED ; 
									end

					endcase

				end

endmodule
								
						
								
						
			
			
