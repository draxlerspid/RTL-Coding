module multiplexer(
			output logic d,
			input logic [2:0]sel,[7:0]a
			);

always @ (sel,a)
		begin
			case (sel)			
				3'd0 : d = a[0];
				3'd1 : d = a[1];
				3'd2 : d = a[2];
				3'd3 : d = a[3];
				3'd4 : d = a[4];
				3'd5 : d = a[5];
				3'd6 : d = a[6];
				3'd7 : d = a[7];
				default : d = 0;
			endcase
		end

endmodule


