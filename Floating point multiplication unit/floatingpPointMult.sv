module floatingpPointMult(input logic [14:0] A,C, input logic [15:0] B,D ,input  logic  signA,signC,
output logic [31:0] out);

logic [63:0] lowOut,midOut,highOut;

logic [63:0] shiftedHigh,shiftedLow;

logic [15:0] signedSecondSumOut,B2,D2;

logic [63:0] fistSumOut,secondSumOut;

logic sign,highoverflow,overflow;

signInverter invert2(B,signA,B2);

signInverter invert3(D,signC,D2);

low lowUnit(B2,D2,lowOut);

mid midUnit( A,C, B2,D2, signA,signC, midOut);

high highUnit(  A,C,signA,signC,highOut,sign,highoverflow);

leftShifter highshifter(highOut, shiftedHigh);

rightShifter lowShifter(lowOut,shiftedLow);

bit32Adder firstAdd(shiftedHigh,midOut,fistSumOut);

bit32Adder secondAdd(fistSumOut,shiftedLow,secondSumOut);

signInverter invert(secondSumOut[47:32],sign,signedSecondSumOut);

bit32OverflowDetector detector(secondSumOut,overflow);

outSelector outGen(secondSumOut,signedSecondSumOut , overflow ,highoverflow,sign,out);

endmodule
