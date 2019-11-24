`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/29 00:23:01
// Design Name: 
// Module Name: hhh_tb
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


module hhh_tb;
reg clk;
wire [4:0]data;

initial begin
clk=1;
end

always #10 clk=~clk;
hhh u_hhh(.clk(clk),
           .data(data));
endmodule
