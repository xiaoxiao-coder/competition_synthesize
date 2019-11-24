`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/12 20:33:46
// Design Name: 
// Module Name: cam_ov7670_ov7725_0
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

(* X_CORE_INFO = "cam_ov7670_ov7725,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "cam_ov7670_ov7725_0,cam_ov7670_ov7725,{}" *)
(* CORE_GENERATION_INFO = "cam_ov7670_ov7725_0,cam_ov7670_ov7725,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=XUP,x_ipName=cam_ov7670_ov7725,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module cam_ov7670_ov7725_0 (
  pclk,
  vsync,
  href,
  d,
  H_cnt,
  V_cnt,
  addr,
  dout,
  we,
  wclk
);

input wire pclk;
input wire vsync;
input wire href;
input wire [7 : 0] d;
output wire [11 : 0] H_cnt;
output wire [10 : 0] V_cnt;
output wire [16 : 0] addr;
output wire [15 : 0] dout;
output wire we;
output wire wclk;

  cam_ov7670_ov7725 inst (
    .pclk(pclk),
    .vsync(vsync),
    .href(href),
    .d(d),
    .H_cnt(H_cnt),
    .V_cnt(V_cnt),
    .addr(addr),
    .dout(dout),
    .we(we),
    .wclk(wclk)
  );
endmodule

