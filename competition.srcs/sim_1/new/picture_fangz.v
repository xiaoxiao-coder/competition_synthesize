`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/08 19:32:37
// Design Name: 
// Module Name: picture_fangz
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


module picture_fangz;

reg clk;
reg rst;
wire [11:0]data;
wire h;
wire v;
wire [6:0]dx;
wire [6:0]dx2;
wire [7:0]wx;
reg up;
reg down;
reg cr_up;
reg cr_down;
reg cb_up;
reg cb_down;
initial begin
   clk=1; 
   up=0;
   down=0;
   cr_up=0;
   cr_down=0;
   cb_up=0;
   cb_down=0;
end  
always #1 clk=~clk;
picture_show  u_picture_show(.clock(clk), 
                             .rst(rst),
                             .disp_RGB(data),
                             .hsync(h),
                             .vsync(v),
                             .wx(wx),
                             .dx(dx),
                             .dx2(dx2),
                             .up(up),
                             .down(down),
                             .cb_up(cb_up),
                             .cb_down(cb_down),
                             .cr_up(cr_up),
                             .cr_down(cr_down)
                             );
initial begin
    rst=1;
    #2;
    rst=0;
    #2;
    rst=1;
    #100000;
    up=1;

    
end
endmodule
