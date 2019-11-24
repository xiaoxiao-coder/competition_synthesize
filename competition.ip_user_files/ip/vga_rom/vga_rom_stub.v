// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Nov 10 22:21:51 2019
// Host        : DESKTOP-P038UOU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/study/competition_fuse_pzfs/competition.srcs/sources_1/ip/vga_rom/vga_rom_stub.v
// Design      : vga_rom
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *)
module vga_rom(clka, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,addra[15:0],douta[15:0]" */;
  input clka;
  input [15:0]addra;
  output [15:0]douta;
endmodule
