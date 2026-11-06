module bit_comparator_tb();
		
		logic [7:0] a_gt_b;
		logic [7:0] a_lt_b;
		logic [7:0] a_eq_b;
		logic [7:0] a;
		logic [7:0] b;
		
		bit_comparator uut( .a_gt_b(a_gt_b) , .a_lt_b(a_lt_b) , .a_eq_b(a_eq_b) , .a(a) , .b(b));
		
		initial 
			begin 

			
			 	a = 8'b00000000; b = 8'b00000000; #10;
        
  
		        a = 8'b10011001; b = 8'b01100110; #10;
        
        
			 	a = 8'b00110011; b = 8'b01000100; #10;
        
        
				a = 8'b11111111; b = 8'b11111111; #10;
				
				$finish;
				
			end
endmodule
			
