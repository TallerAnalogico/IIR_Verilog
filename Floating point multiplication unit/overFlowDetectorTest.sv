module overFlowDetectorTest;
logic [15:0] number;
logic overflow;
overFlowDetector UNT(number,overflow);
initial begin
number = 1;
#10;
number =0;
#10;
number = 23;
#10;
number = 199;
#10;

end
endmodule 