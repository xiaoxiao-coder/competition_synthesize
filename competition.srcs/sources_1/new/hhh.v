`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/29 00:19:49
// Design Name: 
// Module Name: hhh
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

module hhh(clk,data);
    input clk;
    //input rst;测试文件
    output reg [4:0]data=0;
    always @(posedge clk)begin
       // if(!rst)
       //     data<=0;
       // if(1)
          data<=data+1; 
    end
endmodule
