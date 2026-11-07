module barrel_shifter (
        output logic [7:0] data_out,
		input logic [7:0] data_in,
    	input logic [2:0] shift,
    	input  logic dir // 0 for left shift, 1 for right shift

);
    always_comb  
		begin
		    if (dir)
		        data_out = data_in >> shift;
		    else
		        data_out = data_in << shift;
    	end
endmodule
