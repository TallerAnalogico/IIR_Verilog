module signedmult(input logic [7:0] operA,operB,input logic signA,signB,
						output logic [14:0] out,output logic overflow,sign);
						
logic [14:0] interOut;

						
 mulUnit multiplication(operA,operB,signA,signB,interOut,overflow,sign);
signInverter inverter(interOut,sign,out);			
endmodule 