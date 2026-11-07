`timescale 1ns / 1ps

module mux_4to1 (
    output logic out	
    input logic [3:0] data,
    input logic [1:0] sel
	);

    always_comb 
		begin
		    case (sel)
		        2'b00: out = data[0];
		        2'b01: out = data[1];
		        2'b10: out = data[2];
		        2'b11: out = data[3];
		        default: out = 1'b0;  
		    endcase
    end
endmodule
