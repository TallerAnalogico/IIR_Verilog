module IIR_tb();
	parameter N_BITS=32;
 logic clk;
 logic [N_BITS-1:0]	x_i;
 logic [N_BITS-1:0] 	b1;
 logic [N_BITS-1:0] 	b0;
 logic [N_BITS-1:0] 	a;
 logic [N_BITS-1:0] 	y_o;
 logic[N_BITS-1:0]num1=16'b1111111111101011;
 logic[N_BITS-1:0]num2=16'b1111111111101011;
 logic[N_BITS-1:0]num3=16'b1111111111101011;

IIR DUT(.*);


initial 
	begin
	clk=0;
	#1;
	clk=1;
	
	num3=num1+num2;
	$display("num3: %b", num3);
	end

endmodule