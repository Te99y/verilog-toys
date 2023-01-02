module dot_display(row,out,out2);
	input [9:0] row;
	output reg [6:0] out,out2;
	always@(row)
	begin//消行分數增加
		case(row[4:0])
			5'b00000: out = 7'b1000000;
			5'b00001: out = 7'b1111001;
			5'b00010: out = 7'b0100100;
			5'b00011: out = 7'b0110000;
			5'b00100: out = 7'b0011001;
			5'b00101: out = 7'b0010010;
			5'b00110: out = 7'b0000010;
			5'b00111: out = 7'b1111000;
			5'b01000: out = 7'b0000000;
			5'b01001: out = 7'b0010000;
			5'b01010: out = 7'b0001000;
			//5'b01011: out = 7'b0000011;
			//5'b01100: out = 7'b1000110;
			//5'b01101: out = 7'b0100001;
			//5'b01110: out = 7'b0000110;
			//5'b01111: out = 7'b0001110;
		default
			out = 7'b1000000;
		endcase
		case(row[9:5])
			5'b00000: out2 = 7'b1000000;
			5'b00001: out2 = 7'b1111001;
			5'b00010: out2 = 7'b0100100;
			5'b00011: out2 = 7'b0110000;
			5'b00100: out2 = 7'b0011001;
			5'b00101: out2 = 7'b0010010;
			5'b00110: out2 = 7'b0000010;
			5'b00111: out2 = 7'b1111000;
			5'b01000: out2 = 7'b0000000;
			5'b01001: out2 = 7'b0010000;
			5'b01010: out2 = 7'b0001000;
			//5'b01011: out = 7'b0000011;
			//5'b01100: out = 7'b1000110;
			//5'b01101: out = 7'b0100001;
			//5'b01110: out = 7'b0000110;
			//5'b01111: out = 7'b0001110;
		default
			out2 = 7'b1000000;
		endcase
	end 
endmodule
