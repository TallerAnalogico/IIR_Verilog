module rightShifter(input logic  [63:0] num,output logic [63:0] out);
assign out = num >> 16;
endmodule  