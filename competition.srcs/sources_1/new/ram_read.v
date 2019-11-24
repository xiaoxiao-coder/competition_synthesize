`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/14 17:03:07
// Design Name: 
// Module Name: ram_read
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


module ram_read #(
        parameter   SHOW_H_START = 160,     //行信号开始位置
                    SHOW_V_START = 120,     //场信号开始位置
                    SHOW_WIDTH = 320,       //行信号宽度
                    SHOW_HEIGHT = 240       //场信号高度
    )
    (
        input clk,         
        input valid,        //有效信号，由vga模块输入
        input [15:0] din,   //从RAM读取的数据
        output reg [16:0] address,  //RAM地址
        input [9:0] vga_h_cnt,     //行计数信号，由vga模块输入
        input [9:0] vga_v_cnt,     //场计数信号，由vga模块输入
        output [15:0] ov7725_data,//RGB565数据
        output reg show_flag//有效数据显示使能
    );
    always@(posedge clk)begin//0为第一个地址，所以在该范围之前便有一个数据，写的还是有问题的
        if(vga_h_cnt >=SHOW_H_START && vga_h_cnt<SHOW_H_START+SHOW_WIDTH && vga_v_cnt>=SHOW_V_START && vga_v_cnt<SHOW_V_START+SHOW_HEIGHT)
            address <= address+1;
        else if(vga_v_cnt >=SHOW_V_START+SHOW_HEIGHT)
            address <= 17'b0;
    end

assign ov7725_data = din;

always @(posedge clk)begin
    if(vga_h_cnt >=SHOW_H_START+2 && vga_h_cnt<SHOW_H_START+SHOW_WIDTH+2 && vga_v_cnt>=SHOW_V_START && vga_v_cnt<SHOW_V_START+SHOW_HEIGHT)
        show_flag<=1;
    else 
        show_flag<=0;
end
endmodule

