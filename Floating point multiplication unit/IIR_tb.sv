module IIR_tb();
parameter N_BITS=	32;
 logic clk=0;
 logic [N_BITS-1:0]	x_i;
 logic [N_BITS-1:0] 	b1_i;
 logic [N_BITS-1:0] 	b0_i;
 logic [N_BITS-1:0] 	a_i;
 logic [N_BITS-1:0] 	y_o;
 logic [N_BITS-1:0] 	offset_i;
 
 
 logic [N_BITS-1:0] counter_check = 0;
 
 logic[N_BITS-1:0]num1=16'b1111111111101011;
 logic[N_BITS-1:0]num2=16'b1111111111101011;
 logic[N_BITS-1:0]num	=16'b1111111111101011;
 
 
 reg [N_BITS-1:0] in_ram [0:10000];
 integer f;

IIR DUT(.*);


always #2 clk = ~clk;


always@(negedge clk)
begin
x_i = in_ram[counter_check];
counter_check=counter_check+1;
$fwrite(f,"%b\n",   y_o);

end


initial begin
		offset_i=	32'b00000000000000000000000000000000;
		b1_i=		32'b00000000000000010000000000000000;
		b0_i=		32'b00000000000000010000000000000000;
		a_i=		32'b00000000000000000000000000000000;
		
		$readmemb("/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Tools/in_ram.txt", in_ram);
		f = $fopen("output.txt","w");
      $fwrite(f,"INICIO:\n");
		#10000;
		$fclose(f);  
		$finish;
  end
	
	
	
	

endmodule