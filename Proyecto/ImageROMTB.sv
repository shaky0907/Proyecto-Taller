`timescale 1 ps / 1 ps
module ImageROMTB();

	logic clk,rst;
	logic [7:0] q;
	
	ImageROMC prueba(clk,rst,q);
	
	initial begin 
		rst=1; #10;rst=0;
		clk=0;
	end 
	
	
	always begin 
		clk=~clk; #5;
	
	end


endmodule

