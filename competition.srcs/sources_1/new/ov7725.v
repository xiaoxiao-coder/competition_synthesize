`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/12 20:22:27
// Design Name: 
// Module Name: ov7725
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


module ov7725(
    OV7725_D,
    OV7725_HREF,
    OV7725_PCLK,
    OV7725_SIOC,
    OV7725_SIOD,
    OV7725_VSYNC,
    OV7725_XCLK,
    clk_in1,
    rst,

    ov7725_data,//返回数据
//    show_flag,//数据使能时钟
    vga_rom_addr
);
    input [7:0]OV7725_D;
    input OV7725_HREF;
    input OV7725_PCLK;
    output OV7725_SIOC;
    inout OV7725_SIOD;
    input OV7725_VSYNC;
    output OV7725_XCLK;
    input clk_in1;
    input rst;
    output [15:0]ov7725_data;
//    output show_flag;
    input [20:0]vga_rom_addr;

    wire IICctrl_0_I2C_SCLK;
    wire [7:0]IICctrl_0_LUT_INDEX;
    wire Net;
    wire [15:0]blk_mem_gen_0_doutb;
    wire [16:0]cam_ov7670_ov7725_0_addr;
    wire [15:0]cam_ov7670_ov7725_0_dout;
    wire cam_ov7670_ov7725_0_wclk;
    wire cam_ov7670_ov7725_0_we;
    wire clk_in1_1;
    wire [7:0]d_1;
    wire href_1;
    wire [15:0]ov7725_regData_0_LUT_DATA;
    wire [7:0]ov7725_regData_0_Slave_Addr;
    wire pclk_1;
    wire [16:0]ram_read_0_address;
    wire [9:0]vga_0_h_cnt;
    wire vga_0_hsync;
    wire [9:0]vga_0_v_cnt;
    wire vga_0_valid;
    wire vga_0_vsync;
    wire vga_rst_1;
    wire vsync_1;

    assign OV7725_SIOC = IICctrl_0_I2C_SCLK;
    assign OV7725_XCLK = clk_in1;
    assign clk_in1_1 = clk_in1;
    assign d_1 = OV7725_D[7:0];
    assign href_1 = OV7725_HREF;
    assign pclk_1 = OV7725_PCLK;
    assign vga_hsync = vga_0_hsync;
    assign vga_rst_1 = rst;
    assign vga_vsync = vga_0_vsync;
    assign vsync_1 = OV7725_VSYNC;
    
    IICctrl_0 design_1_IICctrl_0_0(//iic时序
        .I2C_SCLK(IICctrl_0_I2C_SCLK),
        .I2C_SDAT(OV7725_SIOD),
        .LUT_DATA(ov7725_regData_0_LUT_DATA),
        .LUT_INDEX(IICctrl_0_LUT_INDEX),
        .Slave_Addr(ov7725_regData_0_Slave_Addr),
        .iCLK(clk_in1),
        .rst(vga_rst_1)
    );
    ov7725_regData_0 design_1_ov7725_regData_0_0(
        .LUT_DATA(ov7725_regData_0_LUT_DATA),
        .LUT_INDEX(IICctrl_0_LUT_INDEX),
        .Slave_Addr(ov7725_regData_0_Slave_Addr)
    );       
    blk_mem_gen_0 design_1_blk_mem_gen_0_0 (
        .addra(cam_ov7670_ov7725_0_addr),
        .addrb(vga_rom_addr),
        .clka(cam_ov7670_ov7725_0_wclk),
        .clkb(clk_in1),
        .dina(cam_ov7670_ov7725_0_dout),
        .doutb(ov7725_data),
        .wea(cam_ov7670_ov7725_0_we)//(cam_ov7670_ov7725_0_we)
    );
    cam_ov7670_ov7725_0 design_1_cam_ov7670_ov7725_0_0 (
        .addr(cam_ov7670_ov7725_0_addr),
        .d(d_1),
        .dout(cam_ov7670_ov7725_0_dout),
        .href(href_1),
        .pclk(pclk_1),
        .vsync(vsync_1),
        .wclk(cam_ov7670_ov7725_0_wclk),
        .we(cam_ov7670_ov7725_0_we)
    );
 /*   ram_read_0 design_1_ram_read_0_0 (
        .address(ram_read_0_address),
        .clk(clk_in1),
        .din(blk_mem_gen_0_doutb),
        .valid(vga_0_valid),
        .ov7725_data(ov7725_data),//需要显示的数据
        .show_flag(show_flag),//显示数据使能信号
//        .vga_blue(ram_read_0_vga_blue),
//        .vga_green(ram_read_0_vga_green),
        .vga_h_cnt(vga_0_h_cnt),
//        .vga_red(ram_read_0_vga_red),
        .vga_v_cnt(vga_0_v_cnt)
    );
    vga_0 design_1_vga_0_1 (
        .h_cnt(vga_0_h_cnt),
        .hsync(vga_0_hsync),
        .pclk(clk_in1),
        .reset(vga_rst_1),
        .v_cnt(vga_0_v_cnt),
        .valid(vga_0_valid),
        .vsync(vga_0_vsync)
    );*/
endmodule
