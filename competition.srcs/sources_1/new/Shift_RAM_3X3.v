`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: NingHeChuan
// 
// Create Date: 2017/07/27 18:51:17
// Design Name: 
// Module Name: Shift_RAM_3X3
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


module Shift_RAM_3X3(
	//global signals
	input 					clk,						
	input 					rst_n,							
	//Image data prepred to be processd
	input 					per_clken,//Prepared Image data output/capture enable clock
	input 			[7:0]	per_img_Y,//Prepared Image brightness input
	//Image data has been processd
	output					matrix_clken,	//Prepared Image data output/capture enable clock	
	output 	reg 	[7:0]	matrix_p11,						
	output 	reg		[7:0]	matrix_p12,						
	output 	reg		[7:0]	matrix_p13,	//3X3 Matrix output
	output 	reg		[7:0]	matrix_p21,						
	output 	reg		[7:0]	matrix_p22,						
	output 	reg		[7:0]	matrix_p23,						
	output 	reg		[7:0]	matrix_p31,						
	output 	reg		[7:0]	matrix_p32,						
	output 	reg		[7:0]	matrix_p33					
    );

//----------------------------------------------
//consume 1clk
wire 	[7:0] 	row1_data;//frame data of the 1th row
wire 	[7:0]	row2_data;//frame data of the 2th row
reg 	[7:0] 	row3_data;//frame data of the 3th row

always @(posedge clk or negedge rst_n)begin
	if(!rst_n)
		row3_data <= 8'b0;
	else begin
		if(per_clken)
			row3_data <= per_img_Y;//需要一个时钟,使能也要随之改变
		else
			row3_data <= row3_data;
		end
end

/*reg shift_clk_en;//对应时钟也要延迟1
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		shift_clk_en <= 0;
    end
	else begin
	    shift_clk_en<=per_clken;	
	end
end*/
//----------------------------------------------------------
//module of shift ram for row data
//Shift_RAM_3X3_8bit1
Shift_RAM_3X3_8bit u1_Shift_RAM_3X3_8bit (
  .D(per_img_Y),        // input D
  .CLK(clk),    // input wire CLK
  .SCLR(~rst_n),  // input wire SCLR
  .CE(per_clken),
  .Q(row2_data)        // output wire  Q
);
//Shift_RAM_3X3_8bit2
Shift_RAM_3X3_8bit u2_Shift_RAM_3X3_8bit (
  .D(row2_data),        // input  D
  .CLK(clk),    // input wire CLK
  .CE(per_clken),//使能信号
  .SCLR(~rst_n),  // input wire SCLR
  .Q(row1_data)        // output wire  Q
);

//-------------------------------------------
//per_clken delay 3clk	
reg 	[1:0]	per_clken_r;
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)
		per_clken_r <= 2'b0;
	else 
		per_clken_r <= {per_clken_r[0], per_clken};	//在灰度化流水线未完成之前：00，完成后01，11也就是延迟两个时钟，不是三个
end

wire 	read_clken = per_clken_r[0];//作为进入矩阵，与row3的使能信号一致

assign 	matrix_clken = per_clken_r[1];//给一个row3，产生一个新矩阵需要一个时钟，所以这个代表矩阵形成
	 
//---------------------------------------------------------------------
/****************************************
(1)read data from shift_RAM
(2)caulate the sobel
(3)steady data after sobel generate
******************************************/
//wire 	[23:0] 	matrix_row1 = {matrix_p11, matrix_p12,matrix_p13};//just for test
//wire 	[23:0]	matrix_row2 = {matrix_p21, matrix_p22,matrix_p23};
//wire 	[23:0]	matrix_row3 = {matrix_p31, matrix_p32,matrix_p33};
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		{matrix_p11, matrix_p12, matrix_p13} <= 24'h0;
        {matrix_p21, matrix_p22, matrix_p23} <= 24'h0;
        {matrix_p31, matrix_p32, matrix_p33} <= 24'h0;
	end
//	else if(read_frame_href)begin
	else if(read_clken)begin//shift_RAM data read clock enbale 
			{matrix_p11, matrix_p12, matrix_p13} <= {matrix_p12, matrix_p13, row1_data};//1th shift input
			{matrix_p21, matrix_p22, matrix_p23} <= {matrix_p22, matrix_p23, row2_data};//2th shift input 
			{matrix_p31, matrix_p32, matrix_p33} <= {matrix_p32, matrix_p33, row3_data};//3th shift input 
		end
	else begin
		{matrix_p11, matrix_p12, matrix_p13} <= {matrix_p11, matrix_p12, matrix_p13};
		{matrix_p21, matrix_p22, matrix_p23} <= {matrix_p21, matrix_p22, matrix_p23};
		{matrix_p31, matrix_p32, matrix_p33} <= {matrix_p31, matrix_p32, matrix_p33};
			end
//	end
/* 	else begin
		{matrix_p11, matrix_p12, matrix_p13} <= 24'h0;
        {matrix_p21, matrix_p22, matrix_p23} <= 24'h0;
        {matrix_p31, matrix_p32, matrix_p33} <= 24'h0;
		end */
end	
	
endmodule
