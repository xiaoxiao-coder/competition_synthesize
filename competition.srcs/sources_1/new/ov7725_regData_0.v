`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/12 20:32:43
// Design Name: 
// Module Name: ov7725_regData_0
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

(* X_CORE_INFO = "ov7725_regData,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "ov7725_regData_0,ov7725_regData,{}" *)
(* CORE_GENERATION_INFO = "ov7725_regData_0,ov7725_regData,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=XUP,x_ipName=ov7725_regData,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,Read_DATA=0,SET_OV7725=2}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ov7725_regData_0 (
  LUT_INDEX,
  LUT_DATA,
  Slave_Addr
);

input wire [7 : 0] LUT_INDEX;
output wire [15 : 0] LUT_DATA;
output wire [7 : 0] Slave_Addr;

  ov7725_regData #(
    .Read_DATA(0),
    .SET_OV7725(2)
  ) inst (
    .LUT_INDEX(LUT_INDEX),
    .LUT_DATA(LUT_DATA),
    .Slave_Addr(Slave_Addr)
  );
endmodule

