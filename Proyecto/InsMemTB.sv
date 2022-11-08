
module InsMemTB();



	logic [7:0] pc;
	logic [31:0] data;

	InsMemory prueba(pc,data);


	initial begin
		pc=0;


	end


	always begin
		pc =  pc+4;#5;

	end

endmodule


