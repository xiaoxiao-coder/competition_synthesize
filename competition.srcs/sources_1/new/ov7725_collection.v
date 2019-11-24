`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/08 14:50:32
// Design Name: 
// Module Name: ov7725_collection
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

module ov7725_collection(
input rst,
input pclk,//时钟，相当于vga的时钟。像素时钟，一个时钟传输一个数据，由于rgb16位，需要两个像素时钟才能传输一个像素
input vsync,//帧同步信号
input href,//行同步信号
input[7:0] d,//采集的图片数据
output H_out,//输出图像场同步信号
output V_out,//行同步信号
output [15:0] dout,//输出图像数据
output dout_en//数据有效使能信号
    );

//在寄存器等都都配置后，要等十帧图像后再采集，等待其稳定
reg [3:0]vsync_cnt;//用于计数十帧
//捕捉帧同步信号
reg vsync_d0;
reg vsync_d1;//采集的vsync两个信号
reg href_d0;
reg href_d1;//采集的href两个信号
always@(posedge pclk,posedge rst)begin
    if(!rst)begin
        vsync_d0<=0;
        vsync_d1<=0;
        href_d0<=0;
        href_d1<=0;       
        end
    else begin
        vsync_d0<=vsync;
        vsync_d1<=vsync_d0;
        href_d0<=href;
        href_d1<=href_d0;//非阻塞赋值   
        end
end

wire vsync_start_flag;
assign vsync_start_flag=(~vsync_d1)&(vsync_d0);//看时序图，当为1时表开始

always@(posedge pclk,posedge rst)begin
    if(!rst)begin
        vsync_cnt<=0;
        end
    else if(vsync_start_flag==1 && vsync_cnt<10)
        vsync_cnt<=vsync_cnt+1;//达到十就不用变了
end
//到此处便得到十帧标志，只要在十帧之前使得时序不触发即可。（即第十一帧开始）
reg real_start_flag;
always@(posedge pclk,posedge rst)begin
    if(!rst)begin
        real_start_flag<=0;
        end
    else if(vsync_start_flag==1 && vsync_cnt==10)
        real_start_flag<=1;//此时标志真正开始采集收集数据了。
end

//数据采集，两个八位数据组成rgb565；
reg byte_flag=0;//rgb565标志
reg [7:0]data_indirect;
reg [15:0]rgb_data;
always@(posedge pclk,posedge rst)begin
    if(!rst)begin
        rgb_data<=0;
        data_indirect<=0;
        byte_flag<=0;
        end
    else if(href) begin//看时序图可知
        data_indirect<=d;//暂时存储
        byte_flag<=~byte_flag;      
        if(byte_flag)//拼接字//非阻塞赋值，所以与c语言不一样，第一次byte_flag还是认为0；
            rgb_data<={data_indirect,d};//注意非阻塞赋值，所以此处的data_indirect还未被覆盖。    
        end
    else begin
        rgb_data<=0;//？？？
        data_indirect<=0;
        byte_flag<=0;  //此时数据非有效字  
        end       
end

//真正开始
assign H_out=real_start_flag ? vsync_d1:0;//之所以行场信号用慢两个时钟的，因为合成的字有效时也迟了，见笔记分析。
assign V_out=real_start_flag ? href_d1:0;
assign dout=real_start_flag ? rgb_data:0;
assign dout_en=real_start_flag? byte_flag:0;

endmodule
