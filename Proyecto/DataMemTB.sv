module DataMemTB();





logic clk;

logic [3:0] address;
logic writeEnable;
logic [31:0] writeData, outputdata,outdata;
logic [31:0] pc;

InstructionMemory mem1(pc,outdata);
//DataMemory prueba(clk,address,writeEnable,writeData,outputdata);

initial begin 

	clk=0;
	pc = 7'd0;
	writeEnable = 0;
	address = 13'd1;
	writeData = 31'd0;
	
end 


always begin 
	//clk=~clk;#5;
	pc = pc + 4; #5;

end

endmodule


