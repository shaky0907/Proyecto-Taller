module ImageROMC(input clk, rst, output [7:0]data);

	
	logic [7:0] q;
	logic [13:0] address;
	
	ImageCounter #(.N(14)) pc (clk, rst,1'b1,address);
	ImageROM memoria (address,clk, q);
	
	assign data= q;


endmodule

