module onebitExtender(input logic [6:0] num, input logic sign ,output logic [7:0] out);
always_comb
begin
case(sign)
1'b0:out = {1'b0,num};
1'b1:out = {1'b1,num};
endcase
end
endmodule 