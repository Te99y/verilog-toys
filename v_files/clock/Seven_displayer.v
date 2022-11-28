module Seven_displayer( binary_out, hex_out );

input      [3:0] binary_out;
output reg [6:0] hex_out;

always@( * ) begin
	case( binary_out )
		4'b 0000 : hex_out = 7'b1000000;
		4'b 0001 : hex_out = 7'b1111001;
		4'b 0010 : hex_out = 7'b0100100;
		4'b 0011 : hex_out = 7'b0110000;
		4'b 0100 : hex_out = 7'b0011001;
		4'b 0101 : hex_out = 7'b0010010;
		4'b 0110 : hex_out = 7'b0000010;
		4'b 0111 : hex_out = 7'b1011000;
		4'b 1000 : hex_out = 7'b0000000;
		4'b 1001 : hex_out = 7'b0010000;
		4'b 1010 : hex_out = 7'b0001000;
		4'b 1011 : hex_out = 7'b0000011;
		4'b 1100 : hex_out = 7'b1000110;
		4'b 1101 : hex_out = 7'b0100001;
		4'b 1110 : hex_out = 7'b0000110;
		4'b 1111 : hex_out = 7'b0001110;
		default  : hex_out = 7'b1000000;
	endcase
end
endmodule		