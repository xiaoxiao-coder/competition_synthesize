`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/16 19:21:30
// Design Name: 
// Module Name: RGB_YCBCR_GRAY
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


module RGB_YCBCR(
	input 			 	clk,
	input 			 	rst_n,
	input 				per_clken,
	//others		
	input 		[7:0]	cmos_R,//data_byte[7:5]
	input		[7:0]	cmos_G,//data_byte[4:2]
	input 		[7:0]	cmos_B,//data_byte[1:0]
	output				post_clken,
	output		[7:0]	gray_data,//Y作为灰度图像素，cb，cr正常输出作为肤色提取
	output      [7:0]   cb,
	output      [7:0]   cr
    );

//--------------------------------------------
//RGB565 to RGB 888 高位补低位
wire 	[7:0]	cmos_R0;
wire 	[7:0]	cmos_G0;
wire 	[7:0]	cmos_B0;

assign cmos_R0	= 	cmos_R;
assign cmos_G0	= 	cmos_G;
assign cmos_B0	= 	cmos_B;


//--------------------------------------------//RGB变YBcBr公式
/*	Y 	=	(77 *R 	+ 	150*G 	+ 	29 *B)>>8
	Cb 	=	(-43*R	- 	85 *G	+ 	128*B)>>8 + 128
	Cr 	=	(128*R 	-	107*G  	-	21 *B)>>8 + 128
--->
	Y 	=	(77 *R 	+ 	150*G 	+ 	29 *B)>>8
	Cb 	=	(-43*R	- 	85 *G	+ 	128*B + 32768)>>8
	Cr 	=	(128*R 	-	107*G  	-	21 *B + 32768)>>8*/
//--------------------------------------------
//RGB888 to YCrCb，三级流水线操作
//step1 conmuse 1clk，第一个时钟，求出乘法的
reg 	[15:0]	cmos_R1, cmos_R2, cmos_R3;
reg 	[15:0]	cmos_G1, cmos_G2, cmos_G3;
reg 	[15:0]	cmos_B1, cmos_B2, cmos_B3;
always @(posedge clk or negedge rst_n)
begin
	if(!rst_n)begin
		cmos_R1 <= 16'd0;
        cmos_G1 <= 16'd0;
        cmos_B1 <= 16'd0;
		cmos_R2 <= 16'd0;
        cmos_G2 <= 16'd0;
        cmos_B2 <= 16'd0;
		cmos_R3 <= 16'd0;
        cmos_G3 <= 16'd0;
        cmos_B3 <= 16'd0;
	end
	else begin
		cmos_R1 <= cmos_R0 * 8'd77;
		cmos_G1 <= cmos_G0 * 8'd150;
		cmos_B1 <= cmos_B0 * 8'd29; 
		cmos_R2 <= cmos_R0 * 8'd43; 
		cmos_G2 <= cmos_G0 * 8'd85; 
		cmos_B2 <= cmos_B0 * 8'd128; 
        cmos_R3 <= cmos_R0 * 8'd128;
        cmos_G3 <= cmos_G0 * 8'd107;
        cmos_B3 <= cmos_B0 * 8'd21;
	end
end

//-----------------------------------------------
//step2 consume 1clk，第二步，求和
reg		[15:0]	img_Y0;
reg 	[15:0]	img_Cb0;
reg 	[15:0]	img_Cr0;

always @(posedge clk or negedge rst_n)
begin
	if(!rst_n)begin
		img_Y0 <= 16'd0;
		img_Cb0 <= 16'd0;
		img_Cr0 <= 16'd0;
	end
	else begin
		img_Y0  <= cmos_R1 + cmos_G1 + cmos_B1;
		img_Cb0 <= cmos_B2 - cmos_R2 - cmos_G2 + 16'd32768;
		img_Cr0 <= cmos_R3 - cmos_G3 - cmos_B3 + 16'd32768;
	end
	
end
//-------------------------------------------
//step3 consume 1clk，第三步，缩小256倍（因为求的时候放大了256倍）。
reg	[7:0]	img_Y;
reg	[7:0]	img_Cb;
reg	[7:0]	img_Cr;
always @(posedge clk or negedge rst_n)
begin
	if(!rst_n)begin
		img_Y  <= 8'd0;
		img_Cb <= 8'd0;
		img_Cr <= 8'd0;
	end
	else begin
		img_Y  <= img_Y0  [15:8];//右移8位恢复处理得到真正的YCBCR
		img_Cb <= img_Cb0 [15:8];
		img_Cr <= img_Cr0 [15:8];
	end
	
end
	
	
//-------------------------------------------
//per_clken delay 3clk，为了延迟三个时钟，因为之前的img_Y是不对的。	per_clken作为输入，只有1的时候，三个时钟后post_clken 才可以为1
reg 	[2:0]	per_clken_r;
always @(posedge clk or negedge rst_n)begin//前面该怎么处理怎么处理，此处使能信号才决定处理的信号有没有用
	if(!rst_n)
		per_clken_r <= 3'b0;
	else 
		per_clken_r <= {per_clken_r[1:0], per_clken};//001，011，111，111......
end

assign	post_clken 	= 	per_clken_r[2];//为1时表明数据都是可取的，此时已经转化好了

assign 	gray_data = img_Y;
assign  cb=img_Cb;
assign  cr=img_Cr;

endmodule

