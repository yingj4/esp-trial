module top2 (inst_0_in1, inst_0_out1, inst_1_in1, inst_1_out1, inst_2_in1, inst_2_out1, inst_3_in1, inst_3_out1, inst_4_in1, inst_4_out1, clk);

input [3:0] inst_0_in1;
wire [3:0] inst_0_in1_w;
reg [3:0] inst_0_in1_r;
output [3:0] inst_0_out1;
wire [3:0] inst_0_out1_w;
reg [3:0] inst_0_out1_r;
input [1:0] inst_1_in1;
wire [1:0] inst_1_in1_w;
reg [1:0] inst_1_in1_r;
output [1:0] inst_1_out1;
wire [1:0] inst_1_out1_w;
reg [1:0] inst_1_out1_r;
input [11:0] inst_2_in1;
wire [11:0] inst_2_in1_w;
reg [11:0] inst_2_in1_r;
output [4095:0] inst_2_out1;
wire [4095:0] inst_2_out1_w;
reg [4095:0] inst_2_out1_r;
input [3:0] inst_3_in1;
wire [3:0] inst_3_in1_w;
reg [3:0] inst_3_in1_r;
output [15:0] inst_3_out1;
wire [15:0] inst_3_out1_w;
reg [15:0] inst_3_out1_r;
input [1:0] inst_4_in1;
wire [1:0] inst_4_in1_w;
reg [1:0] inst_4_in1_r;
output [3:0] inst_4_out1;
wire [3:0] inst_4_out1_w;
reg [3:0] inst_4_out1_r;
input clk;

assign inst_0_in1_w = inst_0_in1_r;
assign inst_0_out1 = inst_0_out1_r;
assign inst_1_in1_w = inst_1_in1_r;
assign inst_1_out1 = inst_1_out1_r;
assign inst_2_in1_w = inst_2_in1_r;
assign inst_2_out1 = inst_2_out1_r;
assign inst_3_in1_w = inst_3_in1_r;
assign inst_3_out1 = inst_3_out1_r;
assign inst_4_in1_w = inst_4_in1_r;
assign inst_4_out1 = inst_4_out1_r;

mac_Add_4U_12_4 inst_0 (inst_0_in1_w, inst_0_out1_w);
mac_Add_2U_9_4 inst_1 (inst_1_in1_w, inst_1_out1_w);
mac_DECODE_4096U_8_4 inst_2 (inst_2_in1_w, inst_2_out1_w);
mac_DECODE_16U_6_4 inst_3 (inst_3_in1_w, inst_3_out1_w);
mac_DECODE_4U_5_4 inst_4 (inst_4_in1_w, inst_4_out1_w);

	always @ (posedge clk ) begin
		inst_0_in1_r <= inst_0_in1;
		inst_0_out1_r <= inst_0_out1_w;
		inst_1_in1_r <= inst_1_in1;
		inst_1_out1_r <= inst_1_out1_w;
		inst_2_in1_r <= inst_2_in1;
		inst_2_out1_r <= inst_2_out1_w;
		inst_3_in1_r <= inst_3_in1;
		inst_3_out1_r <= inst_3_out1_w;
		inst_4_in1_r <= inst_4_in1;
		inst_4_out1_r <= inst_4_out1_w;
	end
endmodule