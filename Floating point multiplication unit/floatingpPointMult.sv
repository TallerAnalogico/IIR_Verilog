module floatingpPointMult(input logic [14:0] A,C, input logic [15:0] B,D ,input  logic  signA,signC,
output logic [31:0] out);

logic [63:0] lowOut,midOut,highOut;

logic [63:0] shiftedHigh,shiftedLow;

logic [15:0] signedSecondSumOut;

logic [63:0] fistSumOut,secondSumOut;

logic sign,highoverflow,overflow;

low lowUnit(B,D,lowOut);

mid midUnit( A,C, B,D, signA,signC, midOut);

high highUnit(  A,C,signA,signC,highOut,sign,highoverflow);

leftShifter highshifter(highOut, shiftedHigh);

rightShifter lowShifter(lowOut,shiftedLow);

bit32Adder firstAdd(shiftedHigh,midOut,fistSumOut);

bit32Adder secondAdd(fistSumOut,shiftedLow,secondSumOut);

signInverter invert(secondSumOut[47:32],sign,signedSecondSumOut);

bit32OverflowDetector detector(secondSumOut,overflow);

outSelector outGen(secondSumOut,signedSecondSumOut , overflow ,highoverflow,sign,out);

endmodule
