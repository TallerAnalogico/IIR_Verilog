module fixPointMult(input logic [31:0] a_i,input logic [31:0] b_i,output logic [31:0] c_o);



logic [31:0] a,b,c;


assign a = a_i[31]? -a_i:a_i;
assign b = b_i[31]? -b_i:b_i;

assign c_o = (a_i[31]^b_i[31])? -c:c;



 floatingpPointMult mult1(	.A(a[30:16]),
									.B(a[15:0]),
									.C(b[30:16]),
									.D(b[15:0]) ,

									.signA(a[31]),
									.signC(b[31]),
									.out(c));


endmodule