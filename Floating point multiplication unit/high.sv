module high( input logic [14:0] wholeA,wholeB,input logic signA,signB,output logic [63:0] out,output logic sign,overflow);
logic [15:0] operA;
logic [15:0] operB;
logic [31:0] nonExtendedOut;
onebitExtender extendA(wholeA,signA,operA); //Expande un bit el A con signo
onebitExtender extendB(wholeB,signB,operB); //Expande un bit el B con signo
mulUnit multiplicationUnit( operA,operB,signA,signB,nonExtendedOut,overflow,sign);//Realiza la multiplicacion
to32extender resultExtender(nonExtendedOut,out); //extiende la multiplicacion


endmodule