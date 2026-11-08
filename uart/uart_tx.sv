module uart_tx( 
			output logic tx , 
			output logic busy , 
			input logic [7:0] data , 
			input logic start ,  
			input logic clk , nrst 
			);
	
		typedef enum { IDLE , START , DATA , STOP } states ;

		states state , nxt_state ; 
			
		logic [3:0] bit_cnt;
		logic [7:0] shift_reg;

		always_ff @ ( posedge clk or negedge nrst ) 
			begin
				if (!nrst)
					begin
						state <= IDLE ;
						tx <=1'b1;
						busy <=1'b0;
						bit_cnt <= 4'b0;
						shift_reg <= 8'b0;
					end
				else 
					begin
						state <= nxt_state;
						
						case (state)
							IDLE :	begin 
									tx <= 1'b1;
									busy <= 1'b0;
									end
						

							START :	begin 
									tx <= 1'b0;
									busy <= 1'b1;
									shift_reg <= data;  // PARALLEL INPUT from other module to Transmiter 
									bit_cnt <= 0;
									end

							DATA :	begin 
									tx <= shift_reg[0];  // Serial INPUT takes only LSB 
									shift_reg <= { 1'b0 , shift_reg[7:1] } ; // Shifting 1 bit at a time . -ONLY takes LSB
									bit_cnt <= bit_cnt + 1 ;
									end

							STOP : begin 
									tx <= 1'b1;
									end

						endcase
					end
				end

		always_comb 
			begin 
				nxt_state = state;
 				
				case (state) 
					
					IDLE :	if (start)
								nxt_state = START ;
							 else 
								nxt_state = IDLE ;

					START : nxt_state = DATA ; 
 							
					DATA : 	if (bit_cnt == 4'd7)
								nxt_state = STOP;
							else 
								nxt_state = DATA;
							
					STOP : 	if (start)
								nxt_state = STOP;
							else
								nxt_state = IDLE ;

					default :	nxt_state = IDLE;
				
				endcase
			end

endmodule 

			
			

