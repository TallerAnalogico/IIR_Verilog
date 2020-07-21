module bit32OverflowDetector(input logic [31:0] number,output logic out);

assign out = (number[31:23]>0);
endmodule 