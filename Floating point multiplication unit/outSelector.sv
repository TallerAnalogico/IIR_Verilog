module outSelector(input logic  [63:0] result,input logic [15:0] signedResult ,input logic   overflowHigh ,overflowShift,sign ,
output logic [31:0] out);

always_comb
begin
////////////////////////////
if(overflowHigh==1||overflowShift==1)
begin
if(sign==1)
out=32'b11111111111111111111111111111111;
else
out=32'b01111111111111111111111111111111;
end

/////////////////
else

begin

if(sign==1)

if(signedResult!=0)

out = {sign,signedResult[14:0],result[31:16]};
else
out = {16'b0000000000000000,result[31:16]};
else
out = {sign,result[46:16]};
end
////////////////
end




endmodule 