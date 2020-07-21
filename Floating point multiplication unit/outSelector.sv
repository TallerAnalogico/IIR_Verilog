module outSelector(input logic  [31:0] result,input logic [7:0] signedResult ,input logic   overflowHigh ,overflowShift,sign ,
output logic [15:0] out);

always_comb
begin
////////////////////////////
if(overflowHigh==1||overflowShift==1)
begin
if(sign==1)
out=16'b1111111111111111;
else
out=16'b0111111111111111;
end

/////////////////
else

begin

if(sign==1)

out = {sign,signedResult[6:0],result[15:8]};

else
out = {sign,result[22:8]};


end



////////////////
end



endmodule 