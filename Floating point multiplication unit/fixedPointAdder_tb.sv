module fixedPointAdder_tb();
parameter N_BITS=32;
logic[N_BITS-1:0] a_i,b_i,c_o;
logic overflow_o;


fixedPointAdder #(.N_BITS(32)) DUT(.*);


initial 
	begin
	a_i=32'b00000000000000000000110011001100;
	b_i=32'b11111111111111111100110011001101;
	#2;
	$display("result: %b", c_o);
	#2;

	end



endmodule