module mulUnitTest;
 logic  [7:0] operA,operB;
 logic signA,signB;
 logic [15:0] out;
 logic overflow,sign;
 mulUnit UUT(operA,operB,signA,signB,out,overflow,sign);
 
 initial
 begin
 operA = 8'b11111111;
 operB = 8'b11111111;
 signA = 0;
 signB = 0;
 #10;
  operA = 2;
 operB = 5;
 signA = 0;
 signB = 0;
 #10;
  operA =-2;
 operB = 2;
 signA = 1;
 signB = 0;
 #10;
  operA =-2;
 operB =-2;
 signA = 1;
 signB = 1;
 #10;
 operA = - 234;
 operB =-2;
 signA = 1;
 signB = 1;
 #10;
 end
endmodule 