module g2b #(parameter width = 4)( 
			input logic [width-1 : 0] gray ,
			output logic [width-1 : 0] binary);

			genvar i;

			assign binary[width-1] = gray[width-1];

			generate 
					for ( i = width-2 ; i >= 0 ; i-=1)
						begin
							assign binary[i] = gray[i] ^ binary[i+1];
						end

			endgenerate
			
endmodule
						  
			
			
		
