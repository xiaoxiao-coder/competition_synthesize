`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/08 14:27:05
// Design Name: 
// Module Name: ov7725_configure
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

//配置寄存器，配置摄像头的一些参数，方法类似iic。一次传三个字节，一个代表写，一个代表寄存器地址，一个为数据，特定数据代表特定操作
module ov7725_configure(
input clk,//100k的iic时钟，由ppl产生
input rst,
input config_done,//配置一个寄存器完成信号
output	reg	[15:0]	LUT_DATA,//代表寄存器地址+数据共16位
output [7:0] Slave_Addr,//代表第一个字节写，24个位之所以不放一起，是因为ov7725的写命令是固定0x42
output reg config_trigger,//配置触发信号
output reg init_done//配置完成信号
);
assign Slave_Addr = 8'h42;//代表写

reg [3:0]reg_config_cnt=0;//寄存器已经配置好的个数，此处我们只配置了四个（共七十个，见数据手册）
parameter all_count=4;

reg [7:0]delay_1ms;//100时达到1ms
parameter delay_top=99;
always@(posedge clk,negedge rst)begin//上电延时及其配置完第一个寄存器延时1ms
    if(!rst)
        delay_1ms<=0;
    else if(reg_config_cnt==1 && config_done==1)//配置完第一个寄存器，第一个寄存器后，该寄存器配置为复位功能，也需要延时至少1ms等待稳定
        delay_1ms<=0;
    else if(delay_1ms<delay_top)
        delay_1ms<=delay_1ms+1;//达到99后就不变了，此时说明复位完成
end

//配置好寄存器递加
always@(posedge clk,negedge rst)begin
    if(!rst)
        reg_config_cnt<=0;
    else if(config_trigger)  //配置触发时开始自加，配置触发信号是为了防止重复配置
        reg_config_cnt<=reg_config_cnt+1; 
end

//配置触发信号
always@(posedge clk,negedge rst)begin
    if(!rst)
        config_trigger<=0;
    else if(delay_1ms==(delay_top-1))//注意是98，不是99，数电可知。
        config_trigger<=1;//触发传送
    else if(config_done==1 && (reg_config_cnt !=1) && (reg_config_cnt<all_count))//在除了第一个寄存器需要延时1ms，其他的可直接接着配置。配置完第四个后就不需要配置了
        config_trigger<=1;//config_down肯定是只维持一个时钟。
    else 
        config_trigger<=0;//其他时刻都是不触发   
end

//配置完成信号
always@(posedge clk,negedge rst)begin
    if(!rst)begin
         init_done<=0;
       end  
    else if(reg_config_cnt==all_count-1) //等于3时表明配置完四个了 
        init_done<=1;//配置完成。
end
		
//数据配置
always@(posedge clk,negedge rst)
begin
    if(!rst)begin
          LUT_DATA<=0;
        end
    else begin
        case(reg_config_cnt)
            //先软复位，要求延时1ms后才可以继续配置
            0 :LUT_DATA <= 16'h1280; //地址0x12，数据0x80，代表复位所有寄存器
            1 :LUT_DATA <= 16'h0cd0; //设置图像输出格式   
            2 :LUT_DATA <= 16'h1100; //设置内部时钟
            3 :LUT_DATA <= 16'h1246; //设置qvga模式
            default :	LUT_DATA<=0;
            endcase
         end
end

endmodule    
    
