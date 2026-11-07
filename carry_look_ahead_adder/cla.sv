module cla(
		output logic [3:0]s,
		output logic cout,
		output logic [2:0]c,
		output logic [3:0]p,g,
		input logic [3:0]a,b,
		input logic cin

		);



		always_comb
			begin 
				g[0] = a[0] & b[0];
				g[1] = a[1] & b[1];
				g[2] = a[2] & b[2];
				g[3] = a[3] & b[3];

				p[0] = a[0] ^ b[0];
				p[1] = a[1] ^ b[1];
				p[2] = a[2] ^ b[2];
				p[3] = a[3] ^ b[3];

				c[0] = g[0] | (p[0] & cin);
				c[1] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & cin);
				c[2] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & cin) ;
				cout = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & cin);
				

				s[0] = p[0] ^ cin;
				s[1] = p[1] ^ c[0];
				s[2] = p[2] ^ c[1];
				s[3] = p[3] ^ c[2]; 
				
			end
endmodule
