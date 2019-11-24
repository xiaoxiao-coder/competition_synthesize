`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/12 20:35:23
// Design Name: 
// Module Name: ram_read_0
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

(* X_CORE_INFO = "ram_read,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "ram_read_0,ram_read,{}" *)
(* CORE_GENERATION_INFO = "ram_read_0,ram_read,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=XUP,x_ipName=ram_read,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,SHOW_H_START=160,SHOW_V_START=120,SHOW_WIDTH=320,SHOW_HEIGHT=240}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ram_read_0 (
  clk,
  valid,
  din,
  address,
  vga_h_cnt,
  vga_v_cnt,
  ov7725_data,
  show_flag
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME signal_clock, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 signal_clock CLK" *)
input wire clk;
input wire valid;
input wire [15 : 0] din;
output wire [16 : 0] address;
input wire [9 : 0] vga_h_cnt;
input wire [9 : 0] vga_v_cnt;
output wire [15 : 0] ov7725_data;
output show_flag;

  ram_read #(
    .SHOW_H_START(160),
    .SHOW_V_START(120),
    .SHOW_WIDTH(320),
    .SHOW_HEIGHT(240)
  ) inst (
    .clk(clk),
    .valid(valid),
    .din(din),
    .address(address),
    .vga_h_cnt(vga_h_cnt),
    .vga_v_cnt(vga_v_cnt),
    .ov7725_data(ov7725_data),
    .show_flag(show_flag)//有效数据显示使能
  );
endmodule
