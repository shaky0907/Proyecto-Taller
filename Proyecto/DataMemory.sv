module DataMemory(input clk,
						input [3:0] address,
						input writeEnable,
						input [31:0] writeData,
						output [31:0] data);
						
	logic [31:0] ram [15:0];
	logic [31:0] aux;
	
	
	initial $readmemh("ram.mem",ram);
	
	

	always @ (negedge clk)
	begin
		if(writeEnable)
			ram[address] = writeData;
		
	
	end
	
	always @ (posedge clk)
	begin
		aux = ram[address];
		
	
	end
	
	assign data = aux;



endmodule
