module to32extender(input logic  [15:0] number,output logic  [31:0] out);
assign out = {8'b00000000,number,8'b00000000};
endmodule 