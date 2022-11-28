module In_counter( clk, in, reset, num_out );

input  clk, in, reset;
output reg [3:0] num_out;

always@( posedge clk or negedge reset )  begin
	if( !reset )
		num_out <= 4'd0;
	else
		begin
		if( in )  // 0 3 1 5 4 2
			begin
			case( num_out )
				4'd3 : num_out <= 4'd1;
				4'd1 : num_out <= 4'd5;
				4'd5 : num_out <= 4'd4;
				4'd4 : num_out <= 4'd2;
				4'd2 : num_out <= 4'd0;
				default : num_out <= 4'd3;
			endcase
			end
		else      // 0 1 2 3 4 5
			begin
			if( num_out == 4'd5)
				num_out <= 4'd0;
			else 
				num_out <= num_out + 4'd1;
			end
		end
end
endmodule 	

	
