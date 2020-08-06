module outSelector(input logic  [63:0] result,input logic [15:0] signedResult ,input logic   overflowHigh ,overflowShift,sign ,
output logic [31:0] out);

logic [31:0] out_aux;
assign out_aux={1'b0,result[46:16]};


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
out = -out_aux;
else
out = out_aux;
end
////////////////
end




endmodule 