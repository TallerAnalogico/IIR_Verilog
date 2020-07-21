module midTest;
logic [6:0] A,C;
logic [7:0] B,D;
logic signA,signC;
logic [31:0] out;
 mid UUT(A,C,B,D,signA,signC,out);
 initial
 begin
 A=1;
 C=3;
 B= 8'b10000000;
 D= 8'b01000000;
 signA=0;
 signC=0;
 #10;
  A=-1;
 C=-3;
 B= 8'b10000000;
 D= 8'b01000000;
 signA=1;
 signC=1;
 #10;
  A=-1;
 C=3;
 B= 8'b10000000;
 D= 8'b01000000;
 signA=1;
 signC=0;
 #10;
 A=1;
 C=-3;
 B= 8'b10000000;
 D= 8'b01000000;
 signA=0;
 signC=1;
 end
 
 endmodule 