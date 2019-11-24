`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/12 20:25:07
// Design Name: 
// Module Name: IICctrl_0
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

(* X_CORE_INFO = "IICctrl,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "IICctrl_0,IICctrl,{}" *)
(* CORE_GENERATION_INFO = "IICctrl_0,IICctrl,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=XUP,x_ipName=IICctrl,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,LUT_SIZE=170,CLK_Freq=25000000,I2C_Freq=10000}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module IICctrl_0 (
  iCLK,
  rst,
  I2C_SCLK,
  I2C_SDAT,
  LUT_INDEX,
  LUT_DATA,
  Slave_Addr
);

input wire iCLK;
input wire rst;
output wire I2C_SCLK;
inout wire I2C_SDAT;
output wire [7 : 0] LUT_INDEX;
input wire [15 : 0] LUT_DATA;
input wire [7 : 0] Slave_Addr;

  IICctrl #(
    .LUT_SIZE(170),
    .CLK_Freq(25000000),
    .I2C_Freq(10000)
  ) inst (
    .iCLK(iCLK),
    .rst(rst),
    .I2C_SCLK(I2C_SCLK),
    .I2C_SDAT(I2C_SDAT),
    .LUT_INDEX(LUT_INDEX),
    .LUT_DATA(LUT_DATA),
    .Slave_Addr(Slave_Addr)
  );
endmodule
