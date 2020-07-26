module extender(input logic [15:0] oper, output logic [31:0] out);
assign out = {16'b0000000000000000,oper};
endmodule
