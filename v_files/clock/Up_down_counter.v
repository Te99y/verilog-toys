module Up_down_counter( clk, up_down, reset, num_out );

input  clk, up_down, reset;
output reg [3:0] num_out;

always@( posedge clk or negedge reset )  begin
	if( !reset )
		num_out <= 4'd0;
	else
		begin
		if( up_down )
			begin
			if( num_out == 4'd15)
				num_out <= 4'd0;
			else
				num_out <= num_out + 4'd1;
			end
		else
			begin
			if( num_out == 4'd0)
				num_out <= 4'd15;
			else 
				num_out <= num_out - 4'd1;
			end
		end
end
endmodule 		