module signInverter(input logic [7:0] number,input logic sign,output logic [7:0] out);
logic [7:0] negNumber;
assign negNumber = -number;

always_comb
begin
case(sign)
1'b0: out = number;
1'b1: out = negNumber;
endcase
end

endmodule 