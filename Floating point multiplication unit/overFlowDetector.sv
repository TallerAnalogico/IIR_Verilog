module overFlowDetector( input logic [6:0] OpA ,
				output logic result);
				
				assign result = (OpA>1'b0 );
				
endmodule 