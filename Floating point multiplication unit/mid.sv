module mid(input logic [6:0] A,C,input logic [7:0] B,D,
input logic signA,signC, output logic [31:0] out);

logic [7:0] interA,interC;
logic [15:0] nonextendedAXD,nonextendedBXC;
logic [31:0] atimesd,ctimesb;
logic positive = 1'b0 ;
logic ignore,ignore2,ignore3,ignore4; // señales no importantes
onebitExtender extendA(A,signA,interA); //Expande un bit el A con signo
onebitExtender extendB(C ,signC,interC); //Expande un bit el B con signo
mulUnit multiplicationUnit1( interA,D,signA, positive ,nonextendedAXD ,ignore,ignore2);//Realiza la multiplicacion AXD
mulUnit multiplicationUnit2( interC,B,signC, positive ,nonextendedBXC ,ignore3,ignore4);//Realiza la multiplicacion BXC
to32extender extendedAXD(nonextendedAXD,atimesd);//extiende para la suma
to32extender extendedBXC(nonextendedBXC,ctimesb); //extiende para la suma
bit32Adder add(atimesd,ctimesb,out);
endmodule 