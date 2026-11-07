module alu (
			output logic [7:0] result,
			input logic signed [3:0] a,b, 
			input logic [2:0] opcode,
			input logic enable
			);

		always @ (opcode,a,b,enable)
			begin 
				if (enable == 0 )
					begin
						result = 8'bx;
					end
				else
					begin 
						case (opcode) 
							3'b000 : result = a + b ;
							3'b001 : result = a - b ;
							3'b010 : result = a ^ b ;
							3'b000 : result = ~(a ^ b) ;
							3'b000 : result = a | b ;
							3'b000 : result = a & b ;
							3'b000 : result = ~a ;
							3'b000 : result = !a ;
						endcase
					end
			end

endmodule
	 
				
