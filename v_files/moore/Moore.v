module Moore( FPGA_clock, reset, in, out );

input  FPGA_clock, reset, in;
output [6:0] out;


wire clk_1Hz;
wire [3:0] binary_out;

Freq_divider u_FreqDiv(.clk_50MHz(FPGA_clock), .reset(reset), .clk_1Hz(clk_1Hz));
In_counter u_counter(.clk(clk_1Hz), .in(in), .reset(reset), .num_out(binary_out));
Seven_displayer u_dispayer(.binary_out(binary_out), .hex_out(out));

endmodule 
