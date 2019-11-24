`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/12 20:37:15
// Design Name: 
// Module Name: vga_0
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

(* X_CORE_INFO = "vga,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "vga_0,vga,{}" *)
(* CORE_GENERATION_INFO = "vga_0,vga,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=XUP,x_ipName=vga,x_ipVersion=1.0,x_ipCoreRevision=16,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,TYPE=0}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module vga_0 (
  pclk,
  reset,
  hsync,
  vsync,
  valid,
  h_cnt,
  v_cnt
);

input wire pclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME signal_reset, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 signal_reset RST" *)
input wire reset;
output wire hsync;
output wire vsync;
output wire valid;
output wire [9 : 0] h_cnt;
output wire [9 : 0] v_cnt;

  vga #(
    .TYPE(0)
  ) inst (
    .pclk(pclk),
    .reset(reset),
    .hsync(hsync),
    .vsync(vsync),
    .valid(valid),
    .h_cnt(h_cnt),
    .v_cnt(v_cnt)
  );
endmodule

