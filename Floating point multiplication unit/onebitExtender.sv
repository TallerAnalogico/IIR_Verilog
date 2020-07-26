module onebitExtender(input logic [14:0] num, input logic sign ,output logic [15:0] out);
always_comb
begin
case(sign)
1'b0:out = {1'b0,num};
1'b1:out = {1'b1,num};
endcase
end
endmodule 