module special_multiplier(a,b);

input  [3:0] a;
output [6:0] b;
reg    [6:0] b;

always @(a)
begin
	case(a)
//	4'b0000:b = 7'b0000001;
	4'b0001:b = 7'b1001111;
	4'b0010:b = 7'b0010010;
	4'b0011:b = 7'b0001101;
	4'b0100:b = 7'b0000100;
	4'b0101:b = 7'b1100000;
	4'b0110:b = 7'b1100000;
	4'b0111:b = 7'b1000010;
	4'b1000:b = 7'b0111000;
	default
	b = 7'b0000001;
	endcase
end
endmodule 	