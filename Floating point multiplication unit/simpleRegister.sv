module simpleRegister# 	(parameter N_BITS=32)
								(input logic clk,
								input logic [N_BITS-1:0] data_i,
								output logic [N_BITS-1:0] data_o);

	
logic [N_BITS-1:0] data;
always @(posedge clk)
begin
	data_o=data;
end

always @(negedge clk)
begin
	data=data_i;
end




endmodule