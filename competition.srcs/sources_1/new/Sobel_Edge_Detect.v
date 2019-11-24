`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/26 15:57:02
// Design Name: 
// Module Name: Sobel_Edge_Detect
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


module Sobel_Edge_Detect(
	input 				clk,
	input 				rst_n,
	input 		[7:0]	per_img_Y,
	input				per_clken,
	//sobel_threshold
	input		[10:0]	sobel_threshold,
	
	output				post_img_bit,
	output				post_clken
	//output	reg	[15:0]	ram_addr,

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
	
//---------------------------------------------
//Sobel operation
//Gx
//step 1.1 consume 2clk
reg 	[9:0] 	Gx_temp1;//postive result
reg 	[9:0] 	Gx_temp2;//negetive result
reg 	[9:0] 	Gx_data;//Horizontal grade data

always @(posedge clk or negedge rst_n)
begin
	if(!rst_n)begin
		Gx_temp1 <= 10'd0;
         Gx_temp2 <= 10'd0;
         Gx_data	 <= 10'd0;
	end 
	else begin
		Gx_temp1 <= matrix_p13 + (matrix_p23 << 1) + matrix_p33;//postive result
		Gx_temp2 <= matrix_p11 + (matrix_p21 << 1) + matrix_p31;//negetive result
		Gx_data  <= (Gx_temp1 >= Gx_temp2)? Gx_temp1 - Gx_temp2 : Gx_temp2 - Gx_temp1;//这个要比上面两个迟一个时钟生效
	end
end

//---------------------------------------------------------------------------------------
//Gy
//step 1.2
reg 	[9:0] 	Gy_temp1;//postive result
reg 	[9:0] 	Gy_temp2;//negetive result
reg 	[9:0] 	Gy_data;//Vertical grade data

always @(posedge clk or negedge rst_n)
begin
	if(!rst_n)begin
		Gy_temp1 <= 10'd0;
        Gy_temp2 <= 10'd0;
        Gy_data	 <= 10'd0;
	end 
	else begin
		Gy_temp1 <= matrix_p11 + (matrix_p12 << 1) + matrix_p13;//postive result
		Gy_temp2 <= matrix_p31 + (matrix_p32 << 1) + matrix_p33;//negetive result
		Gy_data  <= (Gy_temp1 >= Gy_temp2)? Gy_temp1 - Gy_temp2 : Gy_temp2 - Gy_temp1;
	end
end

/*//--------------------------------------------------------------------------------------
//caculate the square of distance = (Gx^2 + Gy^2)
//step3 consume 2clk
reg 	[20:0] 	Gxy_square;
always @(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		Gxy_square <= 21'd0;
	else
		Gxy_square <= Gx_data * Gx_data + Gy_data * Gy_data;
	end

//----------------------------------------------------------------------
//求Gx^2与Gy^2的平方根
wire 	[10:0] 	dim;
Sobel u_Sobel(
	.radical			(Gxy_square),//input 
	.q					(dim),	
	.remainder			()
	); */	
//----------------------------------------------------------------------
//求Gx^2与Gy^2的平方根
wire 	[10:0] 	dim;
assign dim = Gx_data + Gy_data;


//-----------------------------------------------------------------------
//consume 1clk
reg 	post_img_bit_r;
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)
		post_img_bit_r <= 1'b0;
	else if(dim >= sobel_threshold)
		post_img_bit_r <= 1'b1;
	else 
		post_img_bit_r <= 1'b0;
	end	

//-------------------------------------------
//per_clken delay 3clk	
reg 	[2:0]	per_clken_r;
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)
		per_clken_r <= 3'b0;
	else 
		per_clken_r <= {per_clken_r[1:0], matrix_clken};
end

assign	post_clken 		= 	per_clken_r[2];
assign	post_img_bit 	= 	post_img_bit_r;
	
/* //-------------------------------------------------------
//ram_addr
always @(posedge clk or negedge rst_n)begin	
	if(!rst_n)
		ram_addr <= 'd0;
	else if(post_clken == 1'b1)
		ram_addr <= ram_addr + 1'b1;
	else
		ram_addr <= ram_addr;
end	 */
	
	
endmodule
