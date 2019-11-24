`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/03 21:25:54
// Design Name: 
// Module Name: Shift_RAM_3x3_1bit
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


module Shift_RAM_3x3_1bit(
	//global signals
	input 					clk,						
	input 					rst_n,							
	//Image data prepred to be processd
	input 					per_clken,//Prepared Image data output/capture enable clock
	input 					per_img_bit,//Prepared Image brightness input
	//Image data has been processd
	output					matrix_clken,	//Prepared Image data output/capture enable clock	
	output 	reg 			matrix_p11,						
	output 	reg				matrix_p12,						
	output 	reg				matrix_p13,	//3X3 Matrix output
	output 	reg				matrix_p21,						
	output 	reg				matrix_p22,						
	output 	reg				matrix_p23,						
	output 	reg				matrix_p31,						
	output 	reg				matrix_p32,						
	output 	reg				matrix_p33					
    );
	
//----------------------------------------------
//consume 1clk
wire 	row1_data;//frame data of the 1th row
wire	row2_data;//frame data of the 2th row
reg 	row3_data;//frame data of the 3th row

always @(posedge clk or negedge rst_n)begin
	if(!rst_n)
		row3_data <= 1'b0;
	else begin
		if(per_clken)
			row3_data <= per_img_bit;
		else
			row3_data <= row3_data;
		end
end

//----------------------------------------------------------
//module of shift ram for row data
wire	shift_clk_en = per_clken;
//Shift_RAM_3X3_bit1
Shift_RAM_3x3_bit u1_Shift_RAM_3x3_bit (
  .D(per_img_bit),        // input wire [7 : 0] D
  .CLK(clk),    // input wire CLK
  .SCLR(~rst_n),  // input wire SCLR
  .CE(per_clken),
  .Q(row2_data)        // output wire [7 : 0] Q
);
//Shift_RAM_3X3_8bit2
Shift_RAM_3x3_bit u2_Shift_RAM_3x3_bit (
  .D(row2_data),        // input wire [7 : 0] D
  .CLK(clk),    // input wire CLK
  .CE(per_clken),//???¨¨???????¡¤
  .SCLR(~rst_n),  // input wire SCLR
  .Q(row1_data)        // output wire [7 : 0] Q
);

//-------------------------------------------
//per_clken delay 3clk	
reg 	[1:0]	per_clken_r;
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)
		per_clken_r <= 2'b0;
	else 
		per_clken_r <= {per_clken_r[0], per_clken};	 
end

wire 	read_clken = per_clken_r[0];
	 
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
		{matrix_p11, matrix_p12, matrix_p13} <= 1'b0;
        {matrix_p21, matrix_p22, matrix_p23} <= 1'b0;
        {matrix_p31, matrix_p32, matrix_p33} <= 1'b0;
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
	
assign 	matrix_clken = per_clken_r[1];

endmodule

