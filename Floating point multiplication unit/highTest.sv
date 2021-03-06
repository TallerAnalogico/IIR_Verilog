module highTest;
logic [6:0] wholeA,wholeB;
logic signA,signB;
logic [31:0] out;
logic sign,overflow;
high UUT(wholeA,wholeB,signA,signB,out,sign,overflow);
initial begin
	wholeA = 7'b1111111;
	wholeB = 7'b1111111;
	signA=1;
	signB=1;
	#10;
	wholeA = 7'b1111111;
	wholeB = 7'b1111111;
	signA=1;
	signB=0;
	#10;
	wholeA = 7'b1111111;
	wholeB = 7'b1111111;
	signA=0;
	signB=1;
	#10;
	wholeA = 7'b1111111;
	wholeB = 7'b1111111;
	signA=0;
	signB=0;
	#10;

end
endmodule
