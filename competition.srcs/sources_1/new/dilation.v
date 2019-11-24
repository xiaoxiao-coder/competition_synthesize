`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/03 21:17:54
// Design Name: 
// Module Name: dilation
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

//膨胀算法，或运算，扩大1，可以有效的去除杂波
module dilation(
            input 	    clk,
            input 		rst_n,
            input 		per_clken,
            input 		per_img_bit,
            output 		post_clken,
            output		post_img_bit
                );
//---------------------------------------------------------------------------
//产生单bit的3x3阵列
wire 		 	matrix_p11, matrix_p12, matrix_p13;//3x3 materix output 
wire 			matrix_p21, matrix_p22, matrix_p23;
wire 			matrix_p31, matrix_p32, matrix_p33;
wire 			matrix_clken;

Shift_RAM_3x3_1bit u_Shift_RAM_3x3_1bit(
	//global signals
	.clk								(clk),
	.rst_n								(rst_n),
	//Image data prepred to be processd
	.per_clken							(per_clken),	//Prepared Image data output/capture enable clock
	.per_img_bit						(per_img_bit),	//Prepared Image brightness input

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
	
//Add you arithmetic here
//Eronsion Parameter
//      Original         Dilation			  Pixel
// [   0  0   0  ]   [   1	1   1 ]     [   P1  P2   P3 ]
// [   0  1   0  ]   [   1  1   1 ]     [   P4  P5   P6 ]
// [   0  0   0  ]   [   1  1	1 ]     [   P7  P8   P9 ]
//P = P1 | P2 | P3 | P4 | P5 | P6 | P7 | 8 | 9;
//---------------------------------------
//Eonsion with or operation
//Step1
reg	post_img_Bit1,	post_img_Bit2,	post_img_Bit3;
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		begin
		post_img_Bit1 <= 1'b0;
		post_img_Bit2 <= 1'b0;
		post_img_Bit3 <= 1'b0;
		end
	else
		begin
		post_img_Bit1 <= matrix_p11 | matrix_p12 | matrix_p13;
		post_img_Bit2 <= matrix_p21 | matrix_p22 | matrix_p23;
		post_img_Bit3 <= matrix_p21 | matrix_p32 | matrix_p33;
		end
end

//Step 2
reg	post_img_Bit4;
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		post_img_Bit4 <= 1'b0;
	else
		post_img_Bit4 <= post_img_Bit1 | post_img_Bit2 | post_img_Bit3;
end	
	
//-------------------------------------------
//per_clken delay 2clk	
reg 	[1:0]	per_clken_r;
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)
		per_clken_r <= 2'b0;
	else 
		per_clken_r <= {per_clken_r[0], matrix_clken};
end

assign	post_clken 		= 	per_clken_r[1];	
assign	post_img_bit	=	post_img_Bit4;	
	
	
endmodule
