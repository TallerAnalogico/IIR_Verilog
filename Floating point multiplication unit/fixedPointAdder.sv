module fixedPointAdder#(parameter N_BITS=32)
							(input logic[N_BITS-1:0] a_i,
							input logic[N_BITS-1:0] b_i,
							output logic[N_BITS-1:0] c_o,
							output logic overflow_o);
					
assign c_o = a_i+b_i;
assign overflow_o = 1'b0;
endmodule