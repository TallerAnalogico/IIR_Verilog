module low(input logic [15:0] B,D,output logic [63:0] out);
logic overflow,sign;
logic positive = 1'b0;
logic [31:0] nonExtendedOut;
mulUnit multiplicationUnit( B,D,positive,positive,nonExtendedOut,overflow,sign);//Realiza la multiplicacion
to32extender resultExtender(nonExtendedOut,out); //extiende la multiplicacion


endmodule