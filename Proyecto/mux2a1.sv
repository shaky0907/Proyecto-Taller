module mux2a1 #(parameter WIDTH = 4) (input logic [WIDTH-1:0] d0,d1,
													input logic [1:0] s,
													output [WIDTH-1:0] out);
													
	always_comb 
		case(s)
			2'd0: out = d0;
			2'd1: out = d1;
			default: out = d1;
		
		endcase

	
endmodule
