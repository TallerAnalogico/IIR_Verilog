module testMult;
logic [14:0] numberA;
logic [14:0] numberB;
logic [14:0] out;
mul TU(numberA,numberB,out);
 initial begin 
 numberA =2;
 numberB =2;
 #10;
 numberA = 2;
 numberB = 3;
 #10;
  numberA = 10;
 numberB = 10;
 #10;
  numberA = 1;
 numberB = 1;
 #10;
 end 
 endmodule 