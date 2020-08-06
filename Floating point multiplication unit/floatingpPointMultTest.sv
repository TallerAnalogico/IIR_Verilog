module  floatingpPointMultTest;

 logic [14:0] A,C;
 logic [15:0] B,D;
 logic  signA,signC;
 logic [31:0] out;
 floatingpPointMult float(A,C,B,D ,signA,signC,out);

initial begin
A=-1;
C=0;
B=-16'b1000000000000000;
D=16'b0000000000000000;
signA=1;
signC=0;
#10;
A=1;
C=-3;
B=16'b1000000000000000;
D=-16'b0100000000000000;
signA=0;
signC=1;
#10;
A=-1;
C=3;
B=-16'b1000000000000000;
D=16'b0100000000000000;
signA=1;
signC=0;
#10;
A=-1;
C=-3;
B=-16'b1000000000000000;
D=-16'b0100000000000000;
signA=1;
signC=1;
#10;
A=100;
C=100;
B=16'b1000000000000000;
D=16'b0100000000000000;
signA=0;
signC=0;
#10;
end
endmodule