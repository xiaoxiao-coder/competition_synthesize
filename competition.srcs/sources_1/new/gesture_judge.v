`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/03 19:22:24
// Design Name: 
// Module Name: gesture_judge
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

//手势判断
module gesture_judge(input             clk,
                     input             rst_n,
                     input             judge_start,//该拨码开关为1是才进行检测
                     input [16:0]      count,//此刻检测到的手势
                     input [16:0]      count1_low, 
                     input [16:0]      count1_up,  
                     input [16:0]      count2_low, 
                     input [16:0]      count2_up,  
                     input [16:0]      count3_low, 
                     input [16:0]      count3_up,  
                     input [16:0]      count4_low, 
                     input [16:0]      count4_up,    
                     input [16:0]      count5_low, 
                     input [16:0]      count5_up, 
                     output reg [4:0]  judge//输出判断结果                                
                                );
//是否取十个点，然后去掉最大和最小点

always @(posedge clk,negedge rst_n) begin
    if (!rst_n) begin
        judge<=0;    
    end
    else if (judge_start) begin//开始手势检测
        if (count>count1_low && count<=count1_up ) begin
            judge<=5'b00001;
        end
        else if (count>count2_low && count<=count2_up ) begin
            judge<=5'b00010;
        end
        else if (count>count3_low && count<=count3_up) begin
            judge<=5'b00100;
        end
        else if (count>count4_low && count<=count4_up) begin
            judge<=5'b01000;
        end
        else if (count>count5_low && count<=count5_up) begin
            judge<=5'b10000;
        end
        else
            judge<=5'b11111;//全亮
    end
end

//防止judge在不同手势之间过度时误报，必须保证0.5s内为变化才认为是正确的

endmodule
