module Displayer( state, row_cnt, count_down, time_disp, dot_row, dot_col );

input [1:0] state;
input [2:0] row_cnt;
input [3:0] count_down;
output reg [6:0] time_disp;
output reg [7:0] dot_row, dot_col;

// display count down f~0
always@( count_down ) begin
	case( count_down )
		4'b 0000 : time_disp = 7'b1000000;
		4'b 0001 : time_disp = 7'b1111001;
		4'b 0010 : time_disp = 7'b0100100;
		4'b 0011 : time_disp = 7'b0110000;
		4'b 0100 : time_disp = 7'b0011001;
		4'b 0101 : time_disp = 7'b0010010;
		4'b 0110 : time_disp = 7'b0000010;
		4'b 0111 : time_disp = 7'b1011000;
		4'b 1000 : time_disp = 7'b0000000;
		4'b 1001 : time_disp = 7'b0010000;
		4'b 1010 : time_disp = 7'b0001000;
		4'b 1011 : time_disp = 7'b0000011;
		4'b 1100 : time_disp = 7'b1000110;
		4'b 1101 : time_disp = 7'b0100001;
		4'b 1110 : time_disp = 7'b0000110;
		4'b 1111 : time_disp = 7'b0001110;
		default  : time_disp = 7'b1000000;
	endcase
end

// show traffic light
always@( row_cnt ) begin
	// set row
	case( row_cnt )
		3'd0  : dot_row = 8'b01111111;
		3'd1  : dot_row = 8'b10111111;
		3'd2  : dot_row = 8'b11011111;
		3'd3  : dot_row = 8'b11101111;
		3'd4  : dot_row = 8'b11110111;
		3'd5  : dot_row = 8'b11111011;
		3'd6  : dot_row = 8'b11111101;
		3'd7  : dot_row = 8'b11111110;
		default  : dot_row = 8'b01111111;
	endcase
	// set col
	case( row_cnt )
		3'd0  : dot_col = state==2'd0 ? 8'b00001100 		 : state==2'd1 ? 8'b00000000	 : 8'b00011000 ;
		3'd1  : dot_col = state==2'd0 ? 8'b00001100		 : state==2'd1 ? 8'b00100100	 : 8'b00011000 ;
		3'd2  : dot_col = state==2'd0 ? 8'b00011001		 : state==2'd1 ? 8'b00111100	 : 8'b00111100 ;
		3'd3  : dot_col = state==2'd0 ? 8'b01111110		 : state==2'd1 ? 8'b10111101	 : 8'b00111100 ;
		3'd4  : dot_col = state==2'd0 ? 8'b10011000		 : state==2'd1 ? 8'b11111111	 : 8'b01011010 ;
		3'd5  : dot_col = state==2'd0 ? 8'b00011000		 : state==2'd1 ? 8'b00111100	 : 8'b00011000 ;
		3'd6  : dot_col = state==2'd0 ? 8'b00101000		 : state==2'd1 ? 8'b00111100	 : 8'b00011000 ;
		3'd7  : dot_col = state==2'd0 ? 8'b01001000		 : state==2'd1 ? 8'b00000000	 : 8'b00100100 ;
		default  : dot_col = state==2'd0 ? 8'b00001100   : state==2'd1 ? 8'b00000000	 : 8'b00011000 ;
	endcase
	
end
endmodule		