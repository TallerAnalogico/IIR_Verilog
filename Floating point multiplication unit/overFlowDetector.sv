module overFlowDetector( input logic [15:0] OpA ,
				output logic result);
				
				assign result = (OpA>1'b0 );
				
endmodule 