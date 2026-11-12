module digital_clock(
		output logic [4:0] hr ,
		output logic [5:0] min ,
		output logic [5:0] sec ,
		input logic clk ,
		input logic nreset
		);
		
		logic [4:0] hr_count =0;
		logic [5:0] min_count =0;
		logic [5:0] sec_count =0;

		always @ ( posedge clk or negedge nreset)
			begin 
				if (!nreset)
					begin
						hr_count <= 0;
						min_count <= 0;
						sec_count <= 0;
					end
				else
					begin
						if (sec_count ==6'd59)
							begin
								sec_count <= 0;

								if ( min_count == 6'd59)
									begin 
										min_count <= 0;
										if (hr_count == 4'd23 )
											begin
												hr_count <= 0;
											end
										else
											begin
												hr_count <= hr_count +1 ;
											end
										
									end
								else
									begin 
										min_count <= min_count +1 ;
									end
									
							end

						else
							begin 
								sec_count <= sec_count +1;
							end
					end
				end

		always_comb
			begin
				sec = sec_count ;
				min = min_count;
				hr = hr_count;
			end

endmodule
						
				
				 

		
		 
