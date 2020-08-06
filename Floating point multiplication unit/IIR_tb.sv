module IIR_tb();
parameter N_BITS=	32;
parameter N_SAMPLES=1000;

 logic clk=0;
 logic reset;
 
 logic [N_BITS-1:0]	x_i;
 logic [N_BITS-1:0] 	b1_i;
 logic [N_BITS-1:0] 	b0_i;
 logic [N_BITS-1:0] 	a_i;
 logic [N_BITS-1:0] 	y_o;
 logic [N_BITS-1:0] 	offset_i;
 
 
 logic [N_BITS-1:0] counter_check = 0;
 

 
 reg [N_BITS-1:0] in_ram [0:N_SAMPLES];
 integer f;

IIR DUT(.*);


always #2 clk = ~clk;


always@(negedge clk)
begin
x_i = in_ram[counter_check];
counter_check=counter_check+1;
$fwrite(f,"32b%b\n",   y_o);

if (counter_check>=N_SAMPLES)
begin
$fclose(f);  
$finish;
end
end


initial begin
offset_i=32'b00000000000000000000000000000000;
b1_i=32'b00000000000000000100101011111010;
b0_i=32'b00000000000000000100101011111010;
a_i=32'b11111111111111111001010111110111;

		reset=1;
		#3;
		reset=0;
		#3;

		$readmemb("/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Tools/input/MS10KTavo.txt", in_ram);
		f = $fopen("/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Tools/output/MS10KTavo.txt","w");
      $fwrite(f,"INICIO:\n");
		#10;
		
  end
	
	
	
	

endmodule