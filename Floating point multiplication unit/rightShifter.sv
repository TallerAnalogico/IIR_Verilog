module rightShifter(input logic  [31:0] num,output logic [31:0] out);
assign out = num >> 8;
endmodule  