module Freq_divider(clk_50MHz, reset, clk_1Hz, clk_10000Hz);

input  clk_50MHz, reset;
output reg  clk_1Hz, clk_10000Hz; 
reg [31:0] cnt;
reg [31:0] cnt2;

// clk_1Hz starts here
always@( posedge clk_50MHz or negedge reset ) begin
	if(!reset) begin 
		cnt <= 32'd0;
		clk_1Hz <= 1'b0;
	end
	else begin
		if(cnt == 32'd25000000) begin
			cnt <= 32'd0;
			clk_1Hz <= ~clk_1Hz;
		end
		else begin
			cnt <= cnt + 32'd1;
		end
	end
end


// clk_10000Hz starts here
always@( posedge clk_50MHz ) begin
	if(cnt2 == 32'd2500) begin
			cnt2 <= 32'd0;
			clk_10000Hz <= ~clk_10000Hz;
		end
		else begin
			cnt2 <= cnt2 + 32'd1;
		end
end

endmodule 