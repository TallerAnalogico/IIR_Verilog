module mulUnit(input logic  [15:0] operA,operB,input logic signA,signB,output logic [31:0] out,output logic overflow,sign);

logic [15:0] unsignedA;
logic [15:0] unsignedB;
logic [31:0] multiplierOut;
logic [31:0] opA ;
logic [31:0] opB ;


signInverter invertA(operA,signA,unsignedA);

signInverter invertB(operB,signB,unsignedB);

extender extenderA(unsignedA,opA);

extender extenderB(unsignedB,opB);

mul multiplier(opA,opB,out);

overFlowDetector over(out[31:16],overflow);

xorgate xorg(signA,signB,sign);
 
endmodule 