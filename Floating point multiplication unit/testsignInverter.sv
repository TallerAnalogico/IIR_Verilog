module testsignInverter;
logic sign;
logic [7:0] number;
logic [7:0] out;
signInverter TU(number,sign,out);
 initial begin 
 number = -2;
 sign =1;
 #10;
 number = 2;
 sign = 0;
 #10;
  number = 10;
 sign = 0;
 #10;
  number = 1;
 sign = 1;
 #10;
 end 
 endmodule 