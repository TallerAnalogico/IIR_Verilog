module signInverter(input logic [15:0] number,input logic sign,output logic [15:0] out);
logic [15:0] negNumber;
assign negNumber = -number;

always_comb
begin
case(sign)
1'b0: out = number;
1'b1: out = negNumber;
endcase
end

endmodule 