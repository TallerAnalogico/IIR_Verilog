module to32extender(input logic  [31:0] number,output logic  [63:0] out);
assign out = {16'b0000000000000000,number,16'b0000000000000000};
endmodule 