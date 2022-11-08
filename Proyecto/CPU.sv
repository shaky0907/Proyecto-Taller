module CPU(input clk,rst,mode);



logic [7:0] imagedata;
ImageROMC Irom(clk,rst,imagedata);


logic [31:0] ramdata;
logic [13:0] RAMaddress;
DataMemory RAM(clk,RAMaddress,1'b1,31'd56,ramdata);



endmodule

