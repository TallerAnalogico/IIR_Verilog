module mulUnit(input logic  [7:0] operA,operB,input logic signA,signB,output logic [15:0] out,output logic overflow,sign);

logic [7:0] unsignedA;
logic [7:0] unsignedB;
logic [15:0] multiplierOut;
logic [14:0] opA ;
logic [14:0] opB ;


signInverter invertA(operA,signA,unsignedA);

signInverter invertB(operB,signB,unsignedB);

extender extenderA(unsignedA,opA);

extender extenderB(unsignedB,opB);

mul multiplier(opA,opB,out);

overFlowDetector over(out[15:8],overflow);

xorgate xorg(signA,signB,sign);
 
endmodule 