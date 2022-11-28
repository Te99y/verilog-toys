module Traffic_light( FPGA_clock, reset, dot_row, dot_col, out );

input  FPGA_clock, reset;
output [7:0] dot_row, dot_col;
output [6:0] out;

wire clk_1Hz;
wire clk_10000Hz;
wire [1:0] state;
wire [2:0] row_cnt;
wire [3:0] binary_count_down;

Freq_divider u_FreqDiv(.clk_50MHz(FPGA_clock), .reset(reset), 			.clk_1Hz(clk_1Hz), .clk_10000Hz(clk_10000Hz));
Counter u_counter(.clk1(clk_1Hz), .clk2(clk_10000Hz), .reset(reset),	 	.state(state), .row_cnt(row_cnt), .count_down(binary_count_down));
Displayer u_dispayer(.state(state), .row_cnt(row_cnt), .count_down(binary_count_down), 		.time_disp(out), .dot_row(dot_row), .dot_col(dot_col));

endmodule 