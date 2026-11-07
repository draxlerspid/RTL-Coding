module alu_tb();
			logic [7:0] result;
			logic signed [3:0] a,b; 
			logic [2:0] opcode;
			logic enable;
			
		alu uut(.result(result) , .a(a) , .b(b) , .opcode(opcode) , .enable(enable) );

		initial 
			begin
				a=0 ; b=0 ; enable=0 ; #10;
				enable=1'b1 ; a=4'b1000 ; b=4'b1111 ; opcode=3'b000  ; #10;
				enable=1'b1 ; a=4'b1000 ; b=4'b1111 ; opcode=3'b001  ; #10;
				enable=1'b1 ; a=4'b1000 ; b=4'b1111 ; opcode=3'b010  ; #10;
				enable=1'b1 ; a=4'b1000 ; b=4'b1111 ; opcode=3'b011  ; #10;
				enable=1'b1 ; a=4'b1000 ; b=4'b1111 ; opcode=3'b100  ; #10;
				enable=1'b1 ; a=4'b1000 ; b=4'b1111 ; opcode=3'b101  ; #10;
				enable=1'b1 ; a=4'b1000 ; b=4'b1111 ; opcode=3'b110  ; #10;
				enable=1'b1 ; a=4'b1000 ; b=4'b1111 ; opcode=3'b111  ; #10;
				$finish;
			end
endmodule
