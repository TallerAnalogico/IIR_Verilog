module extender(input logic [7:0] oper, output logic [14:0] out);
assign out = {7'b0000000,oper};
endmodule
