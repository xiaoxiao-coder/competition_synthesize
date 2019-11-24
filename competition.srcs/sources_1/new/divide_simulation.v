`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/04 16:39:02
// Design Name: 
// Module Name: divide_simulation
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


module divide_simulation;
    reg clk;
    reg s_axis_divisor_tvalid;
    reg [31:0] s_axis_divisor_tdata;
    reg s_axis_dividend_tvalid;
    reg [31:0] s_axis_dividend_tdata;
    wire m_axis_dout_tvalid;
    wire [63:0] m_axis_dout_tdata;
    
    always #5 clk = ~clk;
    
    reg [5:0]  test;
    reg [20:0] test2;

    initial
        begin
            clk = 0;
            s_axis_divisor_tvalid = 0;
            s_axis_dividend_tvalid = 0;
            s_axis_divisor_tdata = 0;
            s_axis_dividend_tdata = 0;
            #1000 s_axis_divisor_tvalid = 1;
            #0    s_axis_dividend_tvalid = 1;
            #0    s_axis_divisor_tdata = 13;
            #0    s_axis_dividend_tdata = 96;
            #10   s_axis_divisor_tvalid=0;
                  s_axis_dividend_tvalid=0;
            #100  s_axis_divisor_tvalid=1;
                  s_axis_dividend_tvalid=1;
                  s_axis_divisor_tdata = 10000;
            #0    s_axis_dividend_tdata = 960000;
            #10   s_axis_divisor_tvalid = 0;
            #0    s_axis_dividend_tvalid = 0;
            #10   test=50;
            #10   test2=test<<15;

        end
    

    div_gen_0 u_div_gen_0(
     .aclk                    (clk),
     .s_axis_divisor_tvalid   (s_axis_divisor_tvalid),
     .s_axis_divisor_tdata    (s_axis_divisor_tdata),
     .s_axis_dividend_tvalid  (s_axis_dividend_tvalid),
     .s_axis_dividend_tdata   (s_axis_dividend_tdata),
     .m_axis_dout_tvalid      (m_axis_dout_tvalid),
     .m_axis_dout_tdata       (m_axis_dout_tdata)
    );
         
endmodule
