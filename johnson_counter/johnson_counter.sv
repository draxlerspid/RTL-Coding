module johnson_counter(
			output logic [3:0] q,
			input logic clk , nrst
			);
			
			logic [3:0] q_wire;
			
			always_ff @ (posedge clk or negedge nrst ) 
				begin
					if (!nrst)
						q_wire <= 4'b0001;
					else 
						q_wire <= { q_wire[2:0] ,~q_wire[3]};
				end
				
			always_comb
				q= q_wire;
endmodule
