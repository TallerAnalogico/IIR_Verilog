module lowtest;
logic [7:0] B,D;
logic [31:0] out;
low UUT(B,D,out);
initial begin
B=8'b10000000;
D=8'b10000000;
#10;
B=8'b00000001;
D=8'b10000000;
#10;
B=8'b10000000;
D=8'b00000001;
#10;
B=8'b10000000;
D=8'b10000000;
#10;
end
endmodule 