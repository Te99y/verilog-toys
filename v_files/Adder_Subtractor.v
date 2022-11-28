module Adder_Subtractor(a, b, select, out, overflow);

input  [3:0] a, b;
input        select;
output [3:0] out;
output       overflow;

assign {overflow, out} = select ? a+b : (a - b);



endmodule 