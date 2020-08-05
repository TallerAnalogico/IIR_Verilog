module IIR 
				(input logic clk, 
				input logic [32:0] x_i,
				input logic [32:0] b1_i,
				input logic [32:0] b0_i, 
				input logic [32:0] a_i,
				
				output logic [63:0] y_o );

				
parameter N_BITS=32;
logic [N_BITS:0] offset, x, w1_a, w1_b1, w0_b0, w0,w1;

simpleRegister#(.N_BITS(N_BITS)) sRegister(
								.clk(clk),
								.data_i(w0)
								.data_o(w1)
								);


 floatingpPointMult mult1(	.A(w0[31:16]),
									.B(w0[15:0]),
									.C(b0[31:16]),
									.D(b0[15:0]) ,

									.signA(w0[32]),
									.signC(b0[32]),
									.out(w0_b0));
									
 floatingpPointMult mult2(	.A(w1[31:16]),
									.B(w1[15:0]),
									.C(a[31:16]),
									.D(a[15:0]) ,

									.signA(w1[32]),
									.signC(a1[32]),
									.out(w1_a));
									
									
 floatingpPointMult mult3(	.A(w1[31:16]),
									.B(w1[15:0]),
									.C(b1[31:16]),
									.D(b1[15:0]) ,

									.signA(w1[32]),
									.signC(b1[32]),
									.out(w1_b1));
									
									
									

fixedPointAdder #(.N_BITS(N_BITS) adder1(	
								.a_i(x_i),
								.b_i(offset), 
								.c_o(x), 
								.overflow_o())
									
fixedPointAdder #(.N_BITS(N_BITS) adder2(	
								.a_i(x),
								.b_i(w1_a), 
								.c_o(w0), 
								.overflow_o())
									

fixedPointAdder #(.N_BITS(N_BITS) adder3(	
								.a_i(w0_b0),
								.b_i(w1_b1), 
								.c_o(y_o), 
								.overflow_o())
									
									
endmodule