module full_adder(a,b,c_in,sum,c_out);

input a,b,c_in;
output sum,c_out;

assign sum = !c_in&(a^b)|c_in&!(a^b);
assign c_out = a&b|b&c_in|a&c_in;

endmodule 