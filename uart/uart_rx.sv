module uart_rx( 
			output logic [7:0] data , 
			output logic valid ,
			input logic clk , nrst , rx 
			);

		typedef enum { IDLE , START , DATA , STOP } states ;
			
		states state , nxt_state;

		logic [3:0] bit_cnt;
		logic [7:0] shift_reg;
		
		always_ff @ ( posedge clk or negedge nrst ) 
			begin
				if (!nrst)
					begin
						state <= IDLE ;
						data <= 8'b0;
						valid <=1'b0;
						bit_cnt <= 4'b0;
						shift_reg <= 8'b0;
					end
				else 
					begin
						state <= nxt_state;
						
						case (state)
							IDLE :	begin 
									valid <= 1'b0 ;
									bit_cnt <= 4'd0;
									end
						

							START :	begin 
									//unused
									end

							DATA :	begin 
									shift_reg <= { rx , shift_reg[7:1] } ; 
									bit_cnt <= bit_cnt + 1'b1 ;
									

									if (bit_cnt == 4'd7) 
										begin 
											data <= { rx , shift_reg[7:1] } ;
											valid <= 1'b1;
										end
									end

							STOP : begin 
									// Stops bit handling - nothing in sequential state 
									end

						endcase
					end
				end

		always_comb 
			begin 
				nxt_state = state ;
 				
				case (state) 
					
					IDLE :	if (rx == 1'b0)
								nxt_state = DATA ; 

					START : ;//unused 

							
					DATA : 	if (bit_cnt == 4'd7)
								nxt_state = STOP;
							
					STOP : 	if (rx == 1'b1)
								nxt_state = IDLE;

					default :	nxt_state = IDLE;
				
				endcase
			end

endmodule 

			
 

						

					

						
				




				

									

									 
						

				
				 

