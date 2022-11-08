module InsMemory(input [7:0] pc, output [31:0]outdata);

	
	logic [7:0] rom [0:15];
	logic [31:0] outaux = 0;
	
	initial $readmemh("Program.mem", rom);
	
	always @ (*)
	begin
	 outaux = {rom[pc+3], rom[pc+2], rom[pc+1], rom[pc]};
	end
	
	assign outdatat = outaux;

endmodule
