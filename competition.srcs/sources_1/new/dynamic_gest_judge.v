`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/17 14:40:28
// Design Name: 
// Module Name: dynamic_gest_judge
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


module dynamic_gest_judge(  input               clk,
                            input               rst_n,
                            input   [23:0]      focus_x,
                            input   [23:0]      focus_y,
                            input               dynamic_judge_start,//动态判别开始拨码开关
                            output reg [3:0]    dynamic_judge
                           );

//0.5s检测一次
reg [23:0]count_5;
reg count_5_flag;//0.5s达到标志
always@(posedge clk,negedge rst_n)begin
    if(!rst_n)begin
        count_5<=24'b0;
        count_5_flag<=1'b0;
    end
    else if(count_5<24'hbebc20)begin
            count_5<=count_5+1;
            count_5_flag<=1'b0;
    end
    else begin
        count_5<=24'b0;
        count_5_flag<=1'b1;//0.5达到
        end
end

reg [23:0]x0;//存储作为下一次比较
reg [23:0]y0;
always @(posedge clk,negedge rst_n) begin
    if(!rst_n)begin
        x0<=0;
        y0<=0;
    end
    else if (count_5_flag) begin
        x0<=focus_x;
        y0<=focus_y;
    end
end

always @(posedge clk,negedge rst_n) begin
    if (!rst_n) begin
        dynamic_judge<=4'b0000;
    end
    else if(dynamic_judge_start && count_5_flag)begin
        if (focus_y>=y0+80) begin//向上
            dynamic_judge<=4'b0001;
        end   
        else if (y0>=focus_y+80) begin//向下
            dynamic_judge<=4'b0010;
        end         
        if (x0>=focus_x+80) begin//向左
            dynamic_judge<=4'b0100;
        end
        else if (focus_x>=x0+80) begin//向右
            dynamic_judge<=4'b1000;
        end
        else
            dynamic_judge<=4'b0000;
    end
end

endmodule
