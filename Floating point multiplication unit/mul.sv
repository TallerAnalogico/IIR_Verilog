  
module mul(input logic [14:0] OpA, OpB,
				output logic [15:0] result);
				
				assign result = OpA[14:0]*OpB[14:0];
				
endmodule 