module Counter( clk1, clk2, reset, state, row_cnt, count_down );

input  clk1, clk2, reset;
output reg [1:0] state;
output reg [2:0] row_cnt;
output reg [3:0] count_down;
	
// count down 15~0
always@( posedge clk1 or negedge reset )  begin
	if( !reset ) begin
		state <= 2'd0;
		count_down <= 4'd15;
	end
	else begin
		if( count_down == 4'd0 ) begin
			case( state )
				2'd0 : begin
					      state   <=  2'd1;
						   count_down <=  4'd5;
						 end
				2'd1 : begin
						   state   <=  2'd2;
						   count_down <=  4'd10;
						 end
				2'd2 : begin
						   state   <=  2'd0;
						   count_down <=  4'd15;
						 end
				default : begin
					      state   <=  2'd1;
						   count_down <=  4'd5;
						 end
			endcase
		end
		else
			count_down <= count_down - 4'd1;
	end
end

// dot matrix row iterating
always@( posedge clk2 )  begin
	if( row_cnt == 3'd7 )
		row_cnt <= 3'd0;
	else row_cnt <= row_cnt + 3'd1;
end
endmodule 		

