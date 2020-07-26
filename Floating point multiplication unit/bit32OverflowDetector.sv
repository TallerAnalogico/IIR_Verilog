module bit32OverflowDetector(input logic [63:0] number,output logic out);

assign out = (number[63:48]>0);
endmodule 
