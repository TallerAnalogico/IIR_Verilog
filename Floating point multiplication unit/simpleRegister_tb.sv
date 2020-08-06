module simpleRegister_tb();
parameter N_BITS=6;
logic clk, reset;
logic [N_BITS-1:0] data_i;
logic [N_BITS-1:0] data_o;
				
simpleRegister#(.N_BITS(N_BITS)) DUT(.*);

initial 
begin
	clk=0;
	data_i=1;
	clk=1;
	#1;
	data_i=2;
	clk=0;
	#1;
	clk=1;
	#1;
	data_i=3;
	clk=0;
	#1;
	clk=1;
	#1;
	data_i=4;
	clk=0;
	#1;
	clk=1;
	#1;
	data_i=5;
	clk=0;
	#1;
	
	
end



endmodule