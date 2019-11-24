`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/08/21 10:18:48
// Design Name: 
// Module Name: Mean_Filer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Mean_Filter(
	input 				clk,
	input 				rst_n,
	input 		[7:0]	per_img_Y,//灰度图数据
	input				per_clken,//灰度图转换流水线就绪使能信号
	//output
	output		[7:0]	post_img_Y,
	output				post_clken
    );
	
//---------------------------------------------------------------------------
//产生3x3阵列
wire 	[7:0] 	matrix_p11, matrix_p12, matrix_p13;//3x3 materix output 
wire 	[7:0]	matrix_p21, matrix_p22, matrix_p23;
wire 	[7:0]	matrix_p31, matrix_p32, matrix_p33;
wire 			matrix_clken;

Shift_RAM_3X3 u_Shift_RAM_3X3(
	//global signals
	.clk								(clk),
	.rst_n								(rst_n),
	//Image data prepred to be processd
	.per_clken							(per_clken),	//Prepared Image data output/capture enable clock
	.per_img_Y							(per_img_Y),	//Prepared Image brightness input

	//Image data has been processd
	.matrix_clken						(matrix_clken),	//Prepared Image data output/capture enable clock	
	.matrix_p11							(matrix_p11),
	.matrix_p12							(matrix_p12),
	.matrix_p13							(matrix_p13),	//3X3 Matrix output
	.matrix_p21							(matrix_p21),
	.matrix_p22							(matrix_p22),
	.matrix_p23							(matrix_p23),
	.matrix_p31							(matrix_p31),
	.matrix_p32							(matrix_p32),
	.matrix_p33							(matrix_p33)
);		
	
//Mean Filter of 3X3 datas, need 2 clock，2个时钟的流水线
//Step 1
reg	[10:0]	mean_value1, mean_value2, mean_value3;
reg [8:0] a;//测试
reg [7:0] b;
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		begin
		mean_value1 <= 0;
		mean_value2 <= 0;
		mean_value3 <= 0;
		end
	else
		begin
		mean_value1 <= matrix_p11 + matrix_p12 + matrix_p13;
		mean_value2 <= matrix_p21 + 11'd0	   + matrix_p23;
		mean_value3 <= matrix_p31 + matrix_p32 + matrix_p33;
		a<=matrix_p33+2;
		end
end

//Step2
reg	[10:0]	mean_value4;
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		mean_value4 <= 0;
	else
		mean_value4 <= mean_value1 + mean_value2 + mean_value3;
		b<=a-2;
end	
	
//-------------------------------------------
//per_clken delay 2clk，求均值花费了两个流水线，所以两位并左移	
reg 	[1:0]	per_clken_r;
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)
		per_clken_r <= 2'b0;
	else 
		per_clken_r <= {per_clken_r[0], matrix_clken};
end

assign	post_clken 	= 	per_clken_r[1];
	
//求八个数的均值，左移3位，取高八位	
assign 	post_img_Y = mean_value4[10:3];		

	
	
endmodule
