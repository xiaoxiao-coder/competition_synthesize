// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Oct 26 14:10:40 2019
// Host        : DESKTOP-P038UOU running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/competition/competition.sim/sim_1/synth/func/xsim/picture_fangz_func_synth.v
// Design      : picture_show
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Img_Processor
   (\per_clken_r_reg[1] ,
    \vcount_reg[6] ,
    \mean_value4_reg[10] ,
    vga_clk_BUFG,
    Q,
    \vga_rom_addr[0]_i_8 ,
    douta);
  output \per_clken_r_reg[1] ;
  output \vcount_reg[6] ;
  output [3:0]\mean_value4_reg[10] ;
  input vga_clk_BUFG;
  input [6:0]Q;
  input [6:0]\vga_rom_addr[0]_i_8 ;
  input [15:0]douta;

  wire [6:0]Q;
  wire [15:0]douta;
  wire [7:0]img_Y;
  wire [3:0]\mean_value4_reg[10] ;
  wire \per_clken_r_reg[1] ;
  wire post_clken_Gray;
  wire \vcount_reg[6] ;
  wire vga_clk_BUFG;
  wire [6:0]\vga_rom_addr[0]_i_8 ;

  Mean_Filter u_Mean_Filer
       (.E(post_clken_Gray),
        .Q(img_Y),
        .\mean_value4_reg[10]_0 (\mean_value4_reg[10] ),
        .\per_clken_r_reg[1]_0 (\per_clken_r_reg[1] ),
        .vga_clk_BUFG(vga_clk_BUFG));
  RGB_YCBCR u_RGB_YCBCR
       (.E(post_clken_Gray),
        .Q(Q),
        .douta(douta),
        .\img_Y_reg[7]_0 (img_Y),
        .\vcount_reg[6] (\vcount_reg[6] ),
        .vga_clk_BUFG(vga_clk_BUFG),
        .\vga_rom_addr[0]_i_8_0 (\vga_rom_addr[0]_i_8 ));
endmodule

module Mean_Filter
   (\per_clken_r_reg[1]_0 ,
    \mean_value4_reg[10]_0 ,
    E,
    vga_clk_BUFG,
    Q);
  output \per_clken_r_reg[1]_0 ;
  output [3:0]\mean_value4_reg[10]_0 ;
  input [0:0]E;
  input vga_clk_BUFG;
  input [7:0]Q;

  wire [0:0]E;
  wire [7:0]Q;
  wire data_en;
  wire [7:0]matrix_p11;
  wire [7:0]matrix_p12;
  wire [7:0]matrix_p13;
  wire [7:0]matrix_p21;
  wire [7:0]matrix_p23;
  wire [7:0]matrix_p31;
  wire [7:0]matrix_p32;
  wire [7:0]matrix_p33;
  wire [9:0]mean_value1;
  wire [9:0]mean_value10;
  wire \mean_value1[3]_i_2_n_0 ;
  wire \mean_value1[3]_i_3_n_0 ;
  wire \mean_value1[3]_i_4_n_0 ;
  wire \mean_value1[3]_i_5_n_0 ;
  wire \mean_value1[3]_i_6_n_0 ;
  wire \mean_value1[3]_i_7_n_0 ;
  wire \mean_value1[3]_i_8_n_0 ;
  wire \mean_value1[7]_i_2_n_0 ;
  wire \mean_value1[7]_i_3_n_0 ;
  wire \mean_value1[7]_i_4_n_0 ;
  wire \mean_value1[7]_i_5_n_0 ;
  wire \mean_value1[7]_i_6_n_0 ;
  wire \mean_value1[7]_i_7_n_0 ;
  wire \mean_value1[7]_i_8_n_0 ;
  wire \mean_value1[7]_i_9_n_0 ;
  wire \mean_value1[9]_i_2_n_0 ;
  wire \mean_value1_reg[3]_i_1_n_0 ;
  wire \mean_value1_reg[3]_i_1_n_1 ;
  wire \mean_value1_reg[3]_i_1_n_2 ;
  wire \mean_value1_reg[3]_i_1_n_3 ;
  wire \mean_value1_reg[7]_i_1_n_0 ;
  wire \mean_value1_reg[7]_i_1_n_1 ;
  wire \mean_value1_reg[7]_i_1_n_2 ;
  wire \mean_value1_reg[7]_i_1_n_3 ;
  wire [8:0]mean_value2;
  wire [8:0]mean_value20;
  wire \mean_value2[3]_i_2_n_0 ;
  wire \mean_value2[3]_i_3_n_0 ;
  wire \mean_value2[3]_i_4_n_0 ;
  wire \mean_value2[3]_i_5_n_0 ;
  wire \mean_value2[7]_i_2_n_0 ;
  wire \mean_value2[7]_i_3_n_0 ;
  wire \mean_value2[7]_i_4_n_0 ;
  wire \mean_value2[7]_i_5_n_0 ;
  wire \mean_value2_reg[3]_i_1_n_0 ;
  wire \mean_value2_reg[3]_i_1_n_1 ;
  wire \mean_value2_reg[3]_i_1_n_2 ;
  wire \mean_value2_reg[3]_i_1_n_3 ;
  wire \mean_value2_reg[7]_i_1_n_0 ;
  wire \mean_value2_reg[7]_i_1_n_1 ;
  wire \mean_value2_reg[7]_i_1_n_2 ;
  wire \mean_value2_reg[7]_i_1_n_3 ;
  wire [9:0]mean_value3;
  wire [9:0]mean_value30;
  wire \mean_value3[3]_i_2_n_0 ;
  wire \mean_value3[3]_i_3_n_0 ;
  wire \mean_value3[3]_i_4_n_0 ;
  wire \mean_value3[3]_i_5_n_0 ;
  wire \mean_value3[3]_i_6_n_0 ;
  wire \mean_value3[3]_i_7_n_0 ;
  wire \mean_value3[3]_i_8_n_0 ;
  wire \mean_value3[7]_i_2_n_0 ;
  wire \mean_value3[7]_i_3_n_0 ;
  wire \mean_value3[7]_i_4_n_0 ;
  wire \mean_value3[7]_i_5_n_0 ;
  wire \mean_value3[7]_i_6_n_0 ;
  wire \mean_value3[7]_i_7_n_0 ;
  wire \mean_value3[7]_i_8_n_0 ;
  wire \mean_value3[7]_i_9_n_0 ;
  wire \mean_value3[9]_i_2_n_0 ;
  wire \mean_value3_reg[3]_i_1_n_0 ;
  wire \mean_value3_reg[3]_i_1_n_1 ;
  wire \mean_value3_reg[3]_i_1_n_2 ;
  wire \mean_value3_reg[3]_i_1_n_3 ;
  wire \mean_value3_reg[7]_i_1_n_0 ;
  wire \mean_value3_reg[7]_i_1_n_1 ;
  wire \mean_value3_reg[7]_i_1_n_2 ;
  wire \mean_value3_reg[7]_i_1_n_3 ;
  wire \mean_value4[10]_i_2_n_0 ;
  wire \mean_value4[10]_i_3_n_0 ;
  wire \mean_value4[10]_i_4_n_0 ;
  wire \mean_value4[10]_i_5_n_0 ;
  wire \mean_value4[10]_i_6_n_0 ;
  wire \mean_value4[7]_i_10_n_0 ;
  wire \mean_value4[7]_i_11_n_0 ;
  wire \mean_value4[7]_i_12_n_0 ;
  wire \mean_value4[7]_i_13_n_0 ;
  wire \mean_value4[7]_i_14_n_0 ;
  wire \mean_value4[7]_i_15_n_0 ;
  wire \mean_value4[7]_i_16_n_0 ;
  wire \mean_value4[7]_i_17_n_0 ;
  wire \mean_value4[7]_i_3_n_0 ;
  wire \mean_value4[7]_i_4_n_0 ;
  wire \mean_value4[7]_i_5_n_0 ;
  wire \mean_value4[7]_i_6_n_0 ;
  wire \mean_value4[7]_i_7_n_0 ;
  wire \mean_value4[7]_i_8_n_0 ;
  wire \mean_value4[7]_i_9_n_0 ;
  wire [3:0]\mean_value4_reg[10]_0 ;
  wire \mean_value4_reg[10]_i_1_n_2 ;
  wire \mean_value4_reg[10]_i_1_n_3 ;
  wire \mean_value4_reg[10]_i_1_n_5 ;
  wire \mean_value4_reg[10]_i_1_n_6 ;
  wire \mean_value4_reg[10]_i_1_n_7 ;
  wire \mean_value4_reg[7]_i_1_n_0 ;
  wire \mean_value4_reg[7]_i_1_n_1 ;
  wire \mean_value4_reg[7]_i_1_n_2 ;
  wire \mean_value4_reg[7]_i_1_n_3 ;
  wire \mean_value4_reg[7]_i_1_n_4 ;
  wire \mean_value4_reg[7]_i_2_n_0 ;
  wire \mean_value4_reg[7]_i_2_n_1 ;
  wire \mean_value4_reg[7]_i_2_n_2 ;
  wire \mean_value4_reg[7]_i_2_n_3 ;
  wire \per_clken_r_reg[0]_srl2_n_0 ;
  wire \per_clken_r_reg[1]_0 ;
  wire read_clken;
  wire vga_clk_BUFG;
  wire [3:0]\NLW_mean_value1_reg[9]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_mean_value1_reg[9]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_mean_value2_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_mean_value2_reg[8]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_mean_value3_reg[9]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_mean_value3_reg[9]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_mean_value4_reg[10]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_mean_value4_reg[10]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_mean_value4_reg[7]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_mean_value4_reg[7]_i_2_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \gray_data_filter[11]_i_1 
       (.I0(data_en),
        .O(\per_clken_r_reg[1]_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \mean_value1[3]_i_2 
       (.I0(matrix_p12[2]),
        .I1(matrix_p13[2]),
        .I2(matrix_p11[2]),
        .O(\mean_value1[3]_i_2_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \mean_value1[3]_i_3 
       (.I0(matrix_p12[1]),
        .I1(matrix_p13[1]),
        .I2(matrix_p11[1]),
        .O(\mean_value1[3]_i_3_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \mean_value1[3]_i_4 
       (.I0(matrix_p12[0]),
        .I1(matrix_p13[0]),
        .I2(matrix_p11[0]),
        .O(\mean_value1[3]_i_4_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \mean_value1[3]_i_5 
       (.I0(matrix_p12[3]),
        .I1(matrix_p13[3]),
        .I2(matrix_p11[3]),
        .I3(\mean_value1[3]_i_2_n_0 ),
        .O(\mean_value1[3]_i_5_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \mean_value1[3]_i_6 
       (.I0(matrix_p12[2]),
        .I1(matrix_p13[2]),
        .I2(matrix_p11[2]),
        .I3(\mean_value1[3]_i_3_n_0 ),
        .O(\mean_value1[3]_i_6_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \mean_value1[3]_i_7 
       (.I0(matrix_p12[1]),
        .I1(matrix_p13[1]),
        .I2(matrix_p11[1]),
        .I3(\mean_value1[3]_i_4_n_0 ),
        .O(\mean_value1[3]_i_7_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \mean_value1[3]_i_8 
       (.I0(matrix_p12[0]),
        .I1(matrix_p13[0]),
        .I2(matrix_p11[0]),
        .O(\mean_value1[3]_i_8_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \mean_value1[7]_i_2 
       (.I0(matrix_p12[6]),
        .I1(matrix_p13[6]),
        .I2(matrix_p11[6]),
        .O(\mean_value1[7]_i_2_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \mean_value1[7]_i_3 
       (.I0(matrix_p12[5]),
        .I1(matrix_p13[5]),
        .I2(matrix_p11[5]),
        .O(\mean_value1[7]_i_3_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \mean_value1[7]_i_4 
       (.I0(matrix_p12[4]),
        .I1(matrix_p13[4]),
        .I2(matrix_p11[4]),
        .O(\mean_value1[7]_i_4_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \mean_value1[7]_i_5 
       (.I0(matrix_p12[3]),
        .I1(matrix_p13[3]),
        .I2(matrix_p11[3]),
        .O(\mean_value1[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \mean_value1[7]_i_6 
       (.I0(\mean_value1[7]_i_2_n_0 ),
        .I1(matrix_p13[7]),
        .I2(matrix_p12[7]),
        .I3(matrix_p11[7]),
        .O(\mean_value1[7]_i_6_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \mean_value1[7]_i_7 
       (.I0(matrix_p12[6]),
        .I1(matrix_p13[6]),
        .I2(matrix_p11[6]),
        .I3(\mean_value1[7]_i_3_n_0 ),
        .O(\mean_value1[7]_i_7_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \mean_value1[7]_i_8 
       (.I0(matrix_p12[5]),
        .I1(matrix_p13[5]),
        .I2(matrix_p11[5]),
        .I3(\mean_value1[7]_i_4_n_0 ),
        .O(\mean_value1[7]_i_8_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \mean_value1[7]_i_9 
       (.I0(matrix_p12[4]),
        .I1(matrix_p13[4]),
        .I2(matrix_p11[4]),
        .I3(\mean_value1[7]_i_5_n_0 ),
        .O(\mean_value1[7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \mean_value1[9]_i_2 
       (.I0(matrix_p12[7]),
        .I1(matrix_p13[7]),
        .I2(matrix_p11[7]),
        .O(\mean_value1[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value1_reg[0] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value10[0]),
        .Q(mean_value1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value1_reg[1] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value10[1]),
        .Q(mean_value1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value1_reg[2] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value10[2]),
        .Q(mean_value1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value1_reg[3] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value10[3]),
        .Q(mean_value1[3]),
        .R(1'b0));
  CARRY4 \mean_value1_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\mean_value1_reg[3]_i_1_n_0 ,\mean_value1_reg[3]_i_1_n_1 ,\mean_value1_reg[3]_i_1_n_2 ,\mean_value1_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mean_value1[3]_i_2_n_0 ,\mean_value1[3]_i_3_n_0 ,\mean_value1[3]_i_4_n_0 ,1'b0}),
        .O(mean_value10[3:0]),
        .S({\mean_value1[3]_i_5_n_0 ,\mean_value1[3]_i_6_n_0 ,\mean_value1[3]_i_7_n_0 ,\mean_value1[3]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value1_reg[4] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value10[4]),
        .Q(mean_value1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value1_reg[5] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value10[5]),
        .Q(mean_value1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value1_reg[6] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value10[6]),
        .Q(mean_value1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value1_reg[7] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value10[7]),
        .Q(mean_value1[7]),
        .R(1'b0));
  CARRY4 \mean_value1_reg[7]_i_1 
       (.CI(\mean_value1_reg[3]_i_1_n_0 ),
        .CO({\mean_value1_reg[7]_i_1_n_0 ,\mean_value1_reg[7]_i_1_n_1 ,\mean_value1_reg[7]_i_1_n_2 ,\mean_value1_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mean_value1[7]_i_2_n_0 ,\mean_value1[7]_i_3_n_0 ,\mean_value1[7]_i_4_n_0 ,\mean_value1[7]_i_5_n_0 }),
        .O(mean_value10[7:4]),
        .S({\mean_value1[7]_i_6_n_0 ,\mean_value1[7]_i_7_n_0 ,\mean_value1[7]_i_8_n_0 ,\mean_value1[7]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value1_reg[8] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value10[8]),
        .Q(mean_value1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value1_reg[9] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value10[9]),
        .Q(mean_value1[9]),
        .R(1'b0));
  CARRY4 \mean_value1_reg[9]_i_1 
       (.CI(\mean_value1_reg[7]_i_1_n_0 ),
        .CO({\NLW_mean_value1_reg[9]_i_1_CO_UNCONNECTED [3:2],mean_value10[9],\NLW_mean_value1_reg[9]_i_1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_mean_value1_reg[9]_i_1_O_UNCONNECTED [3:1],mean_value10[8]}),
        .S({1'b0,1'b0,1'b1,\mean_value1[9]_i_2_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \mean_value2[3]_i_2 
       (.I0(matrix_p21[3]),
        .I1(matrix_p23[3]),
        .O(\mean_value2[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mean_value2[3]_i_3 
       (.I0(matrix_p21[2]),
        .I1(matrix_p23[2]),
        .O(\mean_value2[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mean_value2[3]_i_4 
       (.I0(matrix_p21[1]),
        .I1(matrix_p23[1]),
        .O(\mean_value2[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mean_value2[3]_i_5 
       (.I0(matrix_p21[0]),
        .I1(matrix_p23[0]),
        .O(\mean_value2[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mean_value2[7]_i_2 
       (.I0(matrix_p21[7]),
        .I1(matrix_p23[7]),
        .O(\mean_value2[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mean_value2[7]_i_3 
       (.I0(matrix_p21[6]),
        .I1(matrix_p23[6]),
        .O(\mean_value2[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mean_value2[7]_i_4 
       (.I0(matrix_p21[5]),
        .I1(matrix_p23[5]),
        .O(\mean_value2[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mean_value2[7]_i_5 
       (.I0(matrix_p21[4]),
        .I1(matrix_p23[4]),
        .O(\mean_value2[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value2_reg[0] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value20[0]),
        .Q(mean_value2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value2_reg[1] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value20[1]),
        .Q(mean_value2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value2_reg[2] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value20[2]),
        .Q(mean_value2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value2_reg[3] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value20[3]),
        .Q(mean_value2[3]),
        .R(1'b0));
  CARRY4 \mean_value2_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\mean_value2_reg[3]_i_1_n_0 ,\mean_value2_reg[3]_i_1_n_1 ,\mean_value2_reg[3]_i_1_n_2 ,\mean_value2_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(matrix_p21[3:0]),
        .O(mean_value20[3:0]),
        .S({\mean_value2[3]_i_2_n_0 ,\mean_value2[3]_i_3_n_0 ,\mean_value2[3]_i_4_n_0 ,\mean_value2[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value2_reg[4] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value20[4]),
        .Q(mean_value2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value2_reg[5] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value20[5]),
        .Q(mean_value2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value2_reg[6] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value20[6]),
        .Q(mean_value2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value2_reg[7] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value20[7]),
        .Q(mean_value2[7]),
        .R(1'b0));
  CARRY4 \mean_value2_reg[7]_i_1 
       (.CI(\mean_value2_reg[3]_i_1_n_0 ),
        .CO({\mean_value2_reg[7]_i_1_n_0 ,\mean_value2_reg[7]_i_1_n_1 ,\mean_value2_reg[7]_i_1_n_2 ,\mean_value2_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(matrix_p21[7:4]),
        .O(mean_value20[7:4]),
        .S({\mean_value2[7]_i_2_n_0 ,\mean_value2[7]_i_3_n_0 ,\mean_value2[7]_i_4_n_0 ,\mean_value2[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value2_reg[8] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value20[8]),
        .Q(mean_value2[8]),
        .R(1'b0));
  CARRY4 \mean_value2_reg[8]_i_1 
       (.CI(\mean_value2_reg[7]_i_1_n_0 ),
        .CO({\NLW_mean_value2_reg[8]_i_1_CO_UNCONNECTED [3:1],mean_value20[8]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_mean_value2_reg[8]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \mean_value3[3]_i_2 
       (.I0(matrix_p32[2]),
        .I1(matrix_p33[2]),
        .I2(matrix_p31[2]),
        .O(\mean_value3[3]_i_2_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \mean_value3[3]_i_3 
       (.I0(matrix_p32[1]),
        .I1(matrix_p33[1]),
        .I2(matrix_p31[1]),
        .O(\mean_value3[3]_i_3_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \mean_value3[3]_i_4 
       (.I0(matrix_p32[0]),
        .I1(matrix_p33[0]),
        .I2(matrix_p31[0]),
        .O(\mean_value3[3]_i_4_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \mean_value3[3]_i_5 
       (.I0(matrix_p32[3]),
        .I1(matrix_p33[3]),
        .I2(matrix_p31[3]),
        .I3(\mean_value3[3]_i_2_n_0 ),
        .O(\mean_value3[3]_i_5_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \mean_value3[3]_i_6 
       (.I0(matrix_p32[2]),
        .I1(matrix_p33[2]),
        .I2(matrix_p31[2]),
        .I3(\mean_value3[3]_i_3_n_0 ),
        .O(\mean_value3[3]_i_6_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \mean_value3[3]_i_7 
       (.I0(matrix_p32[1]),
        .I1(matrix_p33[1]),
        .I2(matrix_p31[1]),
        .I3(\mean_value3[3]_i_4_n_0 ),
        .O(\mean_value3[3]_i_7_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \mean_value3[3]_i_8 
       (.I0(matrix_p32[0]),
        .I1(matrix_p33[0]),
        .I2(matrix_p31[0]),
        .O(\mean_value3[3]_i_8_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \mean_value3[7]_i_2 
       (.I0(matrix_p32[6]),
        .I1(matrix_p33[6]),
        .I2(matrix_p31[6]),
        .O(\mean_value3[7]_i_2_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \mean_value3[7]_i_3 
       (.I0(matrix_p32[5]),
        .I1(matrix_p33[5]),
        .I2(matrix_p31[5]),
        .O(\mean_value3[7]_i_3_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \mean_value3[7]_i_4 
       (.I0(matrix_p32[4]),
        .I1(matrix_p33[4]),
        .I2(matrix_p31[4]),
        .O(\mean_value3[7]_i_4_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \mean_value3[7]_i_5 
       (.I0(matrix_p32[3]),
        .I1(matrix_p33[3]),
        .I2(matrix_p31[3]),
        .O(\mean_value3[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \mean_value3[7]_i_6 
       (.I0(\mean_value3[7]_i_2_n_0 ),
        .I1(matrix_p33[7]),
        .I2(matrix_p32[7]),
        .I3(matrix_p31[7]),
        .O(\mean_value3[7]_i_6_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \mean_value3[7]_i_7 
       (.I0(matrix_p32[6]),
        .I1(matrix_p33[6]),
        .I2(matrix_p31[6]),
        .I3(\mean_value3[7]_i_3_n_0 ),
        .O(\mean_value3[7]_i_7_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \mean_value3[7]_i_8 
       (.I0(matrix_p32[5]),
        .I1(matrix_p33[5]),
        .I2(matrix_p31[5]),
        .I3(\mean_value3[7]_i_4_n_0 ),
        .O(\mean_value3[7]_i_8_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \mean_value3[7]_i_9 
       (.I0(matrix_p32[4]),
        .I1(matrix_p33[4]),
        .I2(matrix_p31[4]),
        .I3(\mean_value3[7]_i_5_n_0 ),
        .O(\mean_value3[7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \mean_value3[9]_i_2 
       (.I0(matrix_p32[7]),
        .I1(matrix_p33[7]),
        .I2(matrix_p31[7]),
        .O(\mean_value3[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value3_reg[0] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value30[0]),
        .Q(mean_value3[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value3_reg[1] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value30[1]),
        .Q(mean_value3[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value3_reg[2] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value30[2]),
        .Q(mean_value3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value3_reg[3] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value30[3]),
        .Q(mean_value3[3]),
        .R(1'b0));
  CARRY4 \mean_value3_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\mean_value3_reg[3]_i_1_n_0 ,\mean_value3_reg[3]_i_1_n_1 ,\mean_value3_reg[3]_i_1_n_2 ,\mean_value3_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mean_value3[3]_i_2_n_0 ,\mean_value3[3]_i_3_n_0 ,\mean_value3[3]_i_4_n_0 ,1'b0}),
        .O(mean_value30[3:0]),
        .S({\mean_value3[3]_i_5_n_0 ,\mean_value3[3]_i_6_n_0 ,\mean_value3[3]_i_7_n_0 ,\mean_value3[3]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value3_reg[4] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value30[4]),
        .Q(mean_value3[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value3_reg[5] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value30[5]),
        .Q(mean_value3[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value3_reg[6] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value30[6]),
        .Q(mean_value3[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value3_reg[7] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value30[7]),
        .Q(mean_value3[7]),
        .R(1'b0));
  CARRY4 \mean_value3_reg[7]_i_1 
       (.CI(\mean_value3_reg[3]_i_1_n_0 ),
        .CO({\mean_value3_reg[7]_i_1_n_0 ,\mean_value3_reg[7]_i_1_n_1 ,\mean_value3_reg[7]_i_1_n_2 ,\mean_value3_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mean_value3[7]_i_2_n_0 ,\mean_value3[7]_i_3_n_0 ,\mean_value3[7]_i_4_n_0 ,\mean_value3[7]_i_5_n_0 }),
        .O(mean_value30[7:4]),
        .S({\mean_value3[7]_i_6_n_0 ,\mean_value3[7]_i_7_n_0 ,\mean_value3[7]_i_8_n_0 ,\mean_value3[7]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value3_reg[8] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value30[8]),
        .Q(mean_value3[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value3_reg[9] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(mean_value30[9]),
        .Q(mean_value3[9]),
        .R(1'b0));
  CARRY4 \mean_value3_reg[9]_i_1 
       (.CI(\mean_value3_reg[7]_i_1_n_0 ),
        .CO({\NLW_mean_value3_reg[9]_i_1_CO_UNCONNECTED [3:2],mean_value30[9],\NLW_mean_value3_reg[9]_i_1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_mean_value3_reg[9]_i_1_O_UNCONNECTED [3:1],mean_value30[8]}),
        .S({1'b0,1'b0,1'b1,\mean_value3[9]_i_2_n_0 }));
  LUT3 #(
    .INIT(8'hE8)) 
    \mean_value4[10]_i_2 
       (.I0(mean_value2[8]),
        .I1(mean_value3[8]),
        .I2(mean_value1[8]),
        .O(\mean_value4[10]_i_2_n_0 ));
  (* HLUTNM = "lutpair38" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \mean_value4[10]_i_3 
       (.I0(mean_value2[7]),
        .I1(mean_value3[7]),
        .I2(mean_value1[7]),
        .O(\mean_value4[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mean_value4[10]_i_4 
       (.I0(mean_value3[9]),
        .I1(mean_value1[9]),
        .O(\mean_value4[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \mean_value4[10]_i_5 
       (.I0(mean_value1[8]),
        .I1(mean_value3[8]),
        .I2(mean_value2[8]),
        .I3(mean_value3[9]),
        .I4(mean_value1[9]),
        .O(\mean_value4[10]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \mean_value4[10]_i_6 
       (.I0(\mean_value4[10]_i_3_n_0 ),
        .I1(mean_value3[8]),
        .I2(mean_value2[8]),
        .I3(mean_value1[8]),
        .O(\mean_value4[10]_i_6_n_0 ));
  (* HLUTNM = "lutpair35" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \mean_value4[7]_i_10 
       (.I0(mean_value2[4]),
        .I1(mean_value3[4]),
        .I2(mean_value1[4]),
        .I3(\mean_value4[7]_i_6_n_0 ),
        .O(\mean_value4[7]_i_10_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \mean_value4[7]_i_11 
       (.I0(mean_value2[2]),
        .I1(mean_value3[2]),
        .I2(mean_value1[2]),
        .O(\mean_value4[7]_i_11_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \mean_value4[7]_i_12 
       (.I0(mean_value2[1]),
        .I1(mean_value3[1]),
        .I2(mean_value1[1]),
        .O(\mean_value4[7]_i_12_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \mean_value4[7]_i_13 
       (.I0(mean_value2[0]),
        .I1(mean_value3[0]),
        .I2(mean_value1[0]),
        .O(\mean_value4[7]_i_13_n_0 ));
  (* HLUTNM = "lutpair34" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \mean_value4[7]_i_14 
       (.I0(mean_value2[3]),
        .I1(mean_value3[3]),
        .I2(mean_value1[3]),
        .I3(\mean_value4[7]_i_11_n_0 ),
        .O(\mean_value4[7]_i_14_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \mean_value4[7]_i_15 
       (.I0(mean_value2[2]),
        .I1(mean_value3[2]),
        .I2(mean_value1[2]),
        .I3(\mean_value4[7]_i_12_n_0 ),
        .O(\mean_value4[7]_i_15_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \mean_value4[7]_i_16 
       (.I0(mean_value2[1]),
        .I1(mean_value3[1]),
        .I2(mean_value1[1]),
        .I3(\mean_value4[7]_i_13_n_0 ),
        .O(\mean_value4[7]_i_16_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \mean_value4[7]_i_17 
       (.I0(mean_value2[0]),
        .I1(mean_value3[0]),
        .I2(mean_value1[0]),
        .O(\mean_value4[7]_i_17_n_0 ));
  (* HLUTNM = "lutpair37" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \mean_value4[7]_i_3 
       (.I0(mean_value2[6]),
        .I1(mean_value3[6]),
        .I2(mean_value1[6]),
        .O(\mean_value4[7]_i_3_n_0 ));
  (* HLUTNM = "lutpair36" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \mean_value4[7]_i_4 
       (.I0(mean_value2[5]),
        .I1(mean_value3[5]),
        .I2(mean_value1[5]),
        .O(\mean_value4[7]_i_4_n_0 ));
  (* HLUTNM = "lutpair35" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \mean_value4[7]_i_5 
       (.I0(mean_value2[4]),
        .I1(mean_value3[4]),
        .I2(mean_value1[4]),
        .O(\mean_value4[7]_i_5_n_0 ));
  (* HLUTNM = "lutpair34" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \mean_value4[7]_i_6 
       (.I0(mean_value2[3]),
        .I1(mean_value3[3]),
        .I2(mean_value1[3]),
        .O(\mean_value4[7]_i_6_n_0 ));
  (* HLUTNM = "lutpair38" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \mean_value4[7]_i_7 
       (.I0(mean_value2[7]),
        .I1(mean_value3[7]),
        .I2(mean_value1[7]),
        .I3(\mean_value4[7]_i_3_n_0 ),
        .O(\mean_value4[7]_i_7_n_0 ));
  (* HLUTNM = "lutpair37" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \mean_value4[7]_i_8 
       (.I0(mean_value2[6]),
        .I1(mean_value3[6]),
        .I2(mean_value1[6]),
        .I3(\mean_value4[7]_i_4_n_0 ),
        .O(\mean_value4[7]_i_8_n_0 ));
  (* HLUTNM = "lutpair36" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \mean_value4[7]_i_9 
       (.I0(mean_value2[5]),
        .I1(mean_value3[5]),
        .I2(mean_value1[5]),
        .I3(\mean_value4[7]_i_5_n_0 ),
        .O(\mean_value4[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value4_reg[10] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(\mean_value4_reg[10]_i_1_n_5 ),
        .Q(\mean_value4_reg[10]_0 [3]),
        .R(1'b0));
  CARRY4 \mean_value4_reg[10]_i_1 
       (.CI(\mean_value4_reg[7]_i_1_n_0 ),
        .CO({\NLW_mean_value4_reg[10]_i_1_CO_UNCONNECTED [3:2],\mean_value4_reg[10]_i_1_n_2 ,\mean_value4_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\mean_value4[10]_i_2_n_0 ,\mean_value4[10]_i_3_n_0 }),
        .O({\NLW_mean_value4_reg[10]_i_1_O_UNCONNECTED [3],\mean_value4_reg[10]_i_1_n_5 ,\mean_value4_reg[10]_i_1_n_6 ,\mean_value4_reg[10]_i_1_n_7 }),
        .S({1'b0,\mean_value4[10]_i_4_n_0 ,\mean_value4[10]_i_5_n_0 ,\mean_value4[10]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value4_reg[7] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(\mean_value4_reg[7]_i_1_n_4 ),
        .Q(\mean_value4_reg[10]_0 [0]),
        .R(1'b0));
  CARRY4 \mean_value4_reg[7]_i_1 
       (.CI(\mean_value4_reg[7]_i_2_n_0 ),
        .CO({\mean_value4_reg[7]_i_1_n_0 ,\mean_value4_reg[7]_i_1_n_1 ,\mean_value4_reg[7]_i_1_n_2 ,\mean_value4_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mean_value4[7]_i_3_n_0 ,\mean_value4[7]_i_4_n_0 ,\mean_value4[7]_i_5_n_0 ,\mean_value4[7]_i_6_n_0 }),
        .O({\mean_value4_reg[7]_i_1_n_4 ,\NLW_mean_value4_reg[7]_i_1_O_UNCONNECTED [2:0]}),
        .S({\mean_value4[7]_i_7_n_0 ,\mean_value4[7]_i_8_n_0 ,\mean_value4[7]_i_9_n_0 ,\mean_value4[7]_i_10_n_0 }));
  CARRY4 \mean_value4_reg[7]_i_2 
       (.CI(1'b0),
        .CO({\mean_value4_reg[7]_i_2_n_0 ,\mean_value4_reg[7]_i_2_n_1 ,\mean_value4_reg[7]_i_2_n_2 ,\mean_value4_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\mean_value4[7]_i_11_n_0 ,\mean_value4[7]_i_12_n_0 ,\mean_value4[7]_i_13_n_0 ,1'b0}),
        .O(\NLW_mean_value4_reg[7]_i_2_O_UNCONNECTED [3:0]),
        .S({\mean_value4[7]_i_14_n_0 ,\mean_value4[7]_i_15_n_0 ,\mean_value4[7]_i_16_n_0 ,\mean_value4[7]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value4_reg[8] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(\mean_value4_reg[10]_i_1_n_7 ),
        .Q(\mean_value4_reg[10]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mean_value4_reg[9] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(\mean_value4_reg[10]_i_1_n_6 ),
        .Q(\mean_value4_reg[10]_0 [2]),
        .R(1'b0));
  (* srl_bus_name = "\u_Img_Processor/u_Mean_Filer/per_clken_r_reg " *) 
  (* srl_name = "\u_Img_Processor/u_Mean_Filer/per_clken_r_reg[0]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \per_clken_r_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(vga_clk_BUFG),
        .D(read_clken),
        .Q(\per_clken_r_reg[0]_srl2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \per_clken_r_reg[1] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(\per_clken_r_reg[0]_srl2_n_0 ),
        .Q(data_en),
        .R(1'b0));
  Shift_RAM_3X3 u_Shift_RAM_3X3
       (.E(E),
        .Q(Q),
        .\matrix_p11_reg[7]_0 (matrix_p11),
        .\matrix_p12_reg[7]_0 (matrix_p12),
        .\matrix_p13_reg[7]_0 (matrix_p13),
        .\matrix_p21_reg[7]_0 (matrix_p21),
        .\matrix_p23_reg[7]_0 (matrix_p23),
        .\matrix_p31_reg[7]_0 (matrix_p31),
        .\matrix_p32_reg[7]_0 (matrix_p32),
        .\matrix_p33_reg[7]_0 (matrix_p33),
        .\per_clken_r_reg[0]_0 (read_clken),
        .vga_clk_BUFG(vga_clk_BUFG));
endmodule

module RGB_YCBCR
   (E,
    \vcount_reg[6] ,
    \img_Y_reg[7]_0 ,
    vga_clk_BUFG,
    Q,
    \vga_rom_addr[0]_i_8_0 ,
    douta);
  output [0:0]E;
  output \vcount_reg[6] ;
  output [7:0]\img_Y_reg[7]_0 ;
  input vga_clk_BUFG;
  input [6:0]Q;
  input [6:0]\vga_rom_addr[0]_i_8_0 ;
  input [15:0]douta;

  wire [0:0]E;
  wire [6:0]Q;
  wire [12:0]cmos_B1;
  wire [12:1]cmos_B10;
  wire \cmos_B1[10]_i_11_n_0 ;
  wire \cmos_B1[10]_i_12_n_0 ;
  wire \cmos_B1[10]_i_13_n_0 ;
  wire \cmos_B1[10]_i_2_n_0 ;
  wire \cmos_B1[10]_i_3_n_0 ;
  wire \cmos_B1[10]_i_4_n_0 ;
  wire \cmos_B1[10]_i_5_n_0 ;
  wire \cmos_B1[10]_i_6_n_0 ;
  wire \cmos_B1[10]_i_7_n_0 ;
  wire \cmos_B1[10]_i_8_n_0 ;
  wire \cmos_B1[10]_i_9_n_0 ;
  wire \cmos_B1[12]_i_2_n_0 ;
  wire \cmos_B1[12]_i_3_n_0 ;
  wire \cmos_B1[12]_i_4_n_0 ;
  wire \cmos_B1[2]_i_2_n_0 ;
  wire \cmos_B1[2]_i_3_n_0 ;
  wire \cmos_B1[2]_i_4_n_0 ;
  wire \cmos_B1[6]_i_2_n_0 ;
  wire \cmos_B1[6]_i_3_n_0 ;
  wire \cmos_B1[6]_i_4_n_0 ;
  wire \cmos_B1[6]_i_5_n_0 ;
  wire \cmos_B1[6]_i_6_n_0 ;
  wire \cmos_B1[6]_i_7_n_0 ;
  wire \cmos_B1[6]_i_8_n_0 ;
  wire \cmos_B1_reg[10]_i_10_n_0 ;
  wire \cmos_B1_reg[10]_i_10_n_1 ;
  wire \cmos_B1_reg[10]_i_10_n_2 ;
  wire \cmos_B1_reg[10]_i_10_n_3 ;
  wire \cmos_B1_reg[10]_i_10_n_4 ;
  wire \cmos_B1_reg[10]_i_10_n_5 ;
  wire \cmos_B1_reg[10]_i_10_n_6 ;
  wire \cmos_B1_reg[10]_i_10_n_7 ;
  wire \cmos_B1_reg[10]_i_1_n_0 ;
  wire \cmos_B1_reg[10]_i_1_n_1 ;
  wire \cmos_B1_reg[10]_i_1_n_2 ;
  wire \cmos_B1_reg[10]_i_1_n_3 ;
  wire \cmos_B1_reg[12]_i_1_n_3 ;
  wire \cmos_B1_reg[12]_i_5_n_2 ;
  wire \cmos_B1_reg[12]_i_5_n_7 ;
  wire \cmos_B1_reg[2]_i_1_n_0 ;
  wire \cmos_B1_reg[2]_i_1_n_1 ;
  wire \cmos_B1_reg[2]_i_1_n_2 ;
  wire \cmos_B1_reg[2]_i_1_n_3 ;
  wire \cmos_B1_reg[2]_i_1_n_4 ;
  wire \cmos_B1_reg[2]_i_1_n_5 ;
  wire \cmos_B1_reg[6]_i_1_n_0 ;
  wire \cmos_B1_reg[6]_i_1_n_1 ;
  wire \cmos_B1_reg[6]_i_1_n_2 ;
  wire \cmos_B1_reg[6]_i_1_n_3 ;
  wire [15:1]cmos_G1;
  wire [15:1]cmos_G10;
  wire \cmos_G1[10]_i_2_n_0 ;
  wire \cmos_G1[10]_i_3_n_0 ;
  wire \cmos_G1[10]_i_4_n_0 ;
  wire \cmos_G1[10]_i_5_n_0 ;
  wire \cmos_G1[10]_i_6_n_0 ;
  wire \cmos_G1[10]_i_7_n_0 ;
  wire \cmos_G1[10]_i_8_n_0 ;
  wire \cmos_G1[14]_i_2_n_0 ;
  wire \cmos_G1[14]_i_3_n_0 ;
  wire \cmos_G1[14]_i_4_n_0 ;
  wire \cmos_G1[14]_i_5_n_0 ;
  wire \cmos_G1[14]_i_6_n_0 ;
  wire \cmos_G1[14]_i_7_n_0 ;
  wire \cmos_G1[14]_i_8_n_0 ;
  wire \cmos_G1[14]_i_9_n_0 ;
  wire \cmos_G1[15]_i_2_n_0 ;
  wire \cmos_G1[15]_i_4_n_0 ;
  wire \cmos_G1[15]_i_5_n_0 ;
  wire \cmos_G1[2]_i_2_n_0 ;
  wire \cmos_G1[2]_i_3_n_0 ;
  wire \cmos_G1[2]_i_4_n_0 ;
  wire \cmos_G1[6]_i_3_n_0 ;
  wire \cmos_G1[6]_i_4_n_0 ;
  wire \cmos_G1[6]_i_5_n_0 ;
  wire \cmos_G1[6]_i_6_n_0 ;
  wire \cmos_G1[6]_i_7_n_0 ;
  wire \cmos_G1[6]_i_8_n_0 ;
  wire \cmos_G1[6]_i_9_n_0 ;
  wire \cmos_G1_reg[10]_i_1_n_0 ;
  wire \cmos_G1_reg[10]_i_1_n_1 ;
  wire \cmos_G1_reg[10]_i_1_n_2 ;
  wire \cmos_G1_reg[10]_i_1_n_3 ;
  wire \cmos_G1_reg[14]_i_1_n_0 ;
  wire \cmos_G1_reg[14]_i_1_n_1 ;
  wire \cmos_G1_reg[14]_i_1_n_2 ;
  wire \cmos_G1_reg[14]_i_1_n_3 ;
  wire \cmos_G1_reg[15]_i_3_n_1 ;
  wire \cmos_G1_reg[15]_i_3_n_3 ;
  wire \cmos_G1_reg[15]_i_3_n_6 ;
  wire \cmos_G1_reg[15]_i_3_n_7 ;
  wire \cmos_G1_reg[2]_i_1_n_0 ;
  wire \cmos_G1_reg[2]_i_1_n_1 ;
  wire \cmos_G1_reg[2]_i_1_n_2 ;
  wire \cmos_G1_reg[2]_i_1_n_3 ;
  wire \cmos_G1_reg[2]_i_1_n_4 ;
  wire \cmos_G1_reg[2]_i_1_n_5 ;
  wire \cmos_G1_reg[6]_i_1_n_0 ;
  wire \cmos_G1_reg[6]_i_1_n_1 ;
  wire \cmos_G1_reg[6]_i_1_n_2 ;
  wire \cmos_G1_reg[6]_i_1_n_3 ;
  wire \cmos_G1_reg[6]_i_2_n_0 ;
  wire \cmos_G1_reg[6]_i_2_n_1 ;
  wire \cmos_G1_reg[6]_i_2_n_2 ;
  wire \cmos_G1_reg[6]_i_2_n_3 ;
  wire \cmos_G1_reg[6]_i_2_n_4 ;
  wire \cmos_G1_reg[6]_i_2_n_5 ;
  wire \cmos_G1_reg[6]_i_2_n_6 ;
  wire \cmos_G1_reg[6]_i_2_n_7 ;
  wire [14:0]cmos_R1;
  wire [14:1]cmos_R10;
  wire \cmos_R1[13]_i_2_n_0 ;
  wire \cmos_R1[13]_i_3_n_0 ;
  wire \cmos_R1[13]_i_4_n_0 ;
  wire \cmos_R1[1]_i_2_n_0 ;
  wire \cmos_R1[1]_i_3_n_0 ;
  wire \cmos_R1[1]_i_4_n_0 ;
  wire \cmos_R1[5]_i_3_n_0 ;
  wire \cmos_R1[5]_i_4_n_0 ;
  wire \cmos_R1[5]_i_5_n_0 ;
  wire \cmos_R1[5]_i_6_n_0 ;
  wire \cmos_R1[5]_i_7_n_0 ;
  wire \cmos_R1[5]_i_8_n_0 ;
  wire \cmos_R1[9]_i_2_n_0 ;
  wire \cmos_R1[9]_i_3_n_0 ;
  wire \cmos_R1[9]_i_4_n_0 ;
  wire \cmos_R1[9]_i_5_n_0 ;
  wire \cmos_R1[9]_i_6_n_0 ;
  wire \cmos_R1[9]_i_7_n_0 ;
  wire \cmos_R1[9]_i_8_n_0 ;
  wire \cmos_R1_reg[13]_i_1_n_0 ;
  wire \cmos_R1_reg[13]_i_1_n_1 ;
  wire \cmos_R1_reg[13]_i_1_n_2 ;
  wire \cmos_R1_reg[13]_i_1_n_3 ;
  wire \cmos_R1_reg[13]_i_5_n_2 ;
  wire \cmos_R1_reg[13]_i_5_n_7 ;
  wire \cmos_R1_reg[1]_i_1_n_0 ;
  wire \cmos_R1_reg[1]_i_1_n_1 ;
  wire \cmos_R1_reg[1]_i_1_n_2 ;
  wire \cmos_R1_reg[1]_i_1_n_3 ;
  wire \cmos_R1_reg[1]_i_1_n_4 ;
  wire \cmos_R1_reg[1]_i_1_n_5 ;
  wire \cmos_R1_reg[1]_i_1_n_6 ;
  wire \cmos_R1_reg[5]_i_1_n_0 ;
  wire \cmos_R1_reg[5]_i_1_n_1 ;
  wire \cmos_R1_reg[5]_i_1_n_2 ;
  wire \cmos_R1_reg[5]_i_1_n_3 ;
  wire \cmos_R1_reg[5]_i_2_n_0 ;
  wire \cmos_R1_reg[5]_i_2_n_1 ;
  wire \cmos_R1_reg[5]_i_2_n_2 ;
  wire \cmos_R1_reg[5]_i_2_n_3 ;
  wire \cmos_R1_reg[5]_i_2_n_4 ;
  wire \cmos_R1_reg[5]_i_2_n_5 ;
  wire \cmos_R1_reg[5]_i_2_n_6 ;
  wire \cmos_R1_reg[5]_i_2_n_7 ;
  wire \cmos_R1_reg[9]_i_1_n_0 ;
  wire \cmos_R1_reg[9]_i_1_n_1 ;
  wire \cmos_R1_reg[9]_i_1_n_2 ;
  wire \cmos_R1_reg[9]_i_1_n_3 ;
  wire [15:0]douta;
  wire \img_Y0[11]_i_10_n_0 ;
  wire \img_Y0[11]_i_12_n_0 ;
  wire \img_Y0[11]_i_13_n_0 ;
  wire \img_Y0[11]_i_14_n_0 ;
  wire \img_Y0[11]_i_15_n_0 ;
  wire \img_Y0[11]_i_16_n_0 ;
  wire \img_Y0[11]_i_17_n_0 ;
  wire \img_Y0[11]_i_18_n_0 ;
  wire \img_Y0[11]_i_19_n_0 ;
  wire \img_Y0[11]_i_20_n_0 ;
  wire \img_Y0[11]_i_21_n_0 ;
  wire \img_Y0[11]_i_22_n_0 ;
  wire \img_Y0[11]_i_23_n_0 ;
  wire \img_Y0[11]_i_24_n_0 ;
  wire \img_Y0[11]_i_25_n_0 ;
  wire \img_Y0[11]_i_26_n_0 ;
  wire \img_Y0[11]_i_3_n_0 ;
  wire \img_Y0[11]_i_4_n_0 ;
  wire \img_Y0[11]_i_5_n_0 ;
  wire \img_Y0[11]_i_6_n_0 ;
  wire \img_Y0[11]_i_7_n_0 ;
  wire \img_Y0[11]_i_8_n_0 ;
  wire \img_Y0[11]_i_9_n_0 ;
  wire \img_Y0[15]_i_2_n_0 ;
  wire \img_Y0[15]_i_3_n_0 ;
  wire \img_Y0[15]_i_4_n_0 ;
  wire \img_Y0[15]_i_5_n_0 ;
  wire \img_Y0[15]_i_6_n_0 ;
  wire \img_Y0[15]_i_7_n_0 ;
  wire \img_Y0[15]_i_8_n_0 ;
  wire \img_Y0_reg[11]_i_11_n_0 ;
  wire \img_Y0_reg[11]_i_11_n_1 ;
  wire \img_Y0_reg[11]_i_11_n_2 ;
  wire \img_Y0_reg[11]_i_11_n_3 ;
  wire \img_Y0_reg[11]_i_1_n_0 ;
  wire \img_Y0_reg[11]_i_1_n_1 ;
  wire \img_Y0_reg[11]_i_1_n_2 ;
  wire \img_Y0_reg[11]_i_1_n_3 ;
  wire \img_Y0_reg[11]_i_1_n_4 ;
  wire \img_Y0_reg[11]_i_1_n_5 ;
  wire \img_Y0_reg[11]_i_1_n_6 ;
  wire \img_Y0_reg[11]_i_1_n_7 ;
  wire \img_Y0_reg[11]_i_2_n_0 ;
  wire \img_Y0_reg[11]_i_2_n_1 ;
  wire \img_Y0_reg[11]_i_2_n_2 ;
  wire \img_Y0_reg[11]_i_2_n_3 ;
  wire \img_Y0_reg[15]_i_1_n_1 ;
  wire \img_Y0_reg[15]_i_1_n_2 ;
  wire \img_Y0_reg[15]_i_1_n_3 ;
  wire \img_Y0_reg[15]_i_1_n_4 ;
  wire \img_Y0_reg[15]_i_1_n_5 ;
  wire \img_Y0_reg[15]_i_1_n_6 ;
  wire \img_Y0_reg[15]_i_1_n_7 ;
  wire [7:0]\img_Y_reg[7]_0 ;
  wire [7:0]p_0_in;
  wire \per_clken_r_reg[1]_srl2_n_0 ;
  wire picture_data_en;
  wire \vcount_reg[6] ;
  wire vga_clk_BUFG;
  wire \vga_rom_addr[0]_i_14_n_0 ;
  wire \vga_rom_addr[0]_i_15_n_0 ;
  wire [6:0]\vga_rom_addr[0]_i_8_0 ;
  wire [3:1]\NLW_cmos_B1_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_cmos_B1_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_cmos_B1_reg[12]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_cmos_B1_reg[12]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_cmos_G1_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_cmos_G1_reg[15]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_cmos_G1_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_cmos_G1_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_cmos_R1_reg[13]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_cmos_R1_reg[13]_i_5_O_UNCONNECTED ;
  wire [3:1]\NLW_cmos_R1_reg[14]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_cmos_R1_reg[14]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_img_Y0_reg[11]_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_img_Y0_reg[11]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_img_Y0_reg[15]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    \cmos_B1[10]_i_11 
       (.I0(douta[4]),
        .I1(douta[2]),
        .O(\cmos_B1[10]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cmos_B1[10]_i_12 
       (.I0(douta[3]),
        .I1(douta[1]),
        .O(\cmos_B1[10]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cmos_B1[10]_i_13 
       (.I0(douta[2]),
        .I1(douta[0]),
        .O(\cmos_B1[10]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \cmos_B1[10]_i_2 
       (.I0(douta[3]),
        .I1(\cmos_B1_reg[12]_i_5_n_7 ),
        .I2(douta[1]),
        .O(\cmos_B1[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \cmos_B1[10]_i_3 
       (.I0(douta[2]),
        .I1(\cmos_B1_reg[10]_i_10_n_4 ),
        .I2(douta[0]),
        .O(\cmos_B1[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \cmos_B1[10]_i_4 
       (.I0(douta[1]),
        .I1(\cmos_B1_reg[10]_i_10_n_5 ),
        .I2(douta[4]),
        .O(\cmos_B1[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \cmos_B1[10]_i_5 
       (.I0(douta[0]),
        .I1(\cmos_B1_reg[10]_i_10_n_6 ),
        .I2(douta[3]),
        .O(\cmos_B1[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \cmos_B1[10]_i_6 
       (.I0(douta[1]),
        .I1(\cmos_B1_reg[12]_i_5_n_7 ),
        .I2(douta[3]),
        .I3(douta[4]),
        .I4(\cmos_B1_reg[12]_i_5_n_2 ),
        .I5(douta[2]),
        .O(\cmos_B1[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \cmos_B1[10]_i_7 
       (.I0(douta[0]),
        .I1(\cmos_B1_reg[10]_i_10_n_4 ),
        .I2(douta[2]),
        .I3(douta[3]),
        .I4(\cmos_B1_reg[12]_i_5_n_7 ),
        .I5(douta[1]),
        .O(\cmos_B1[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \cmos_B1[10]_i_8 
       (.I0(douta[4]),
        .I1(\cmos_B1_reg[10]_i_10_n_5 ),
        .I2(douta[1]),
        .I3(douta[2]),
        .I4(\cmos_B1_reg[10]_i_10_n_4 ),
        .I5(douta[0]),
        .O(\cmos_B1[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \cmos_B1[10]_i_9 
       (.I0(douta[3]),
        .I1(\cmos_B1_reg[10]_i_10_n_6 ),
        .I2(douta[0]),
        .I3(douta[1]),
        .I4(\cmos_B1_reg[10]_i_10_n_5 ),
        .I5(douta[4]),
        .O(\cmos_B1[10]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \cmos_B1[12]_i_2 
       (.I0(douta[4]),
        .I1(\cmos_B1_reg[12]_i_5_n_2 ),
        .I2(douta[2]),
        .O(\cmos_B1[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cmos_B1[12]_i_3 
       (.I0(douta[3]),
        .I1(douta[4]),
        .O(\cmos_B1[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8E71)) 
    \cmos_B1[12]_i_4 
       (.I0(douta[2]),
        .I1(\cmos_B1_reg[12]_i_5_n_2 ),
        .I2(douta[4]),
        .I3(douta[3]),
        .O(\cmos_B1[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cmos_B1[2]_i_2 
       (.I0(douta[1]),
        .I1(douta[4]),
        .O(\cmos_B1[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cmos_B1[2]_i_3 
       (.I0(douta[0]),
        .I1(douta[3]),
        .O(\cmos_B1[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cmos_B1[2]_i_4 
       (.I0(douta[4]),
        .I1(douta[2]),
        .O(\cmos_B1[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \cmos_B1[6]_i_2 
       (.I0(douta[4]),
        .I1(\cmos_B1_reg[10]_i_10_n_7 ),
        .I2(douta[2]),
        .O(\cmos_B1[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \cmos_B1[6]_i_3 
       (.I0(douta[4]),
        .I1(\cmos_B1_reg[10]_i_10_n_7 ),
        .I2(douta[2]),
        .O(\cmos_B1[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \cmos_B1[6]_i_4 
       (.I0(\cmos_B1_reg[2]_i_1_n_5 ),
        .I1(douta[2]),
        .O(\cmos_B1[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \cmos_B1[6]_i_5 
       (.I0(douta[2]),
        .I1(\cmos_B1_reg[10]_i_10_n_7 ),
        .I2(douta[4]),
        .I3(douta[0]),
        .I4(\cmos_B1_reg[10]_i_10_n_6 ),
        .I5(douta[3]),
        .O(\cmos_B1[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \cmos_B1[6]_i_6 
       (.I0(douta[4]),
        .I1(\cmos_B1_reg[10]_i_10_n_7 ),
        .I2(douta[2]),
        .I3(douta[3]),
        .I4(\cmos_B1_reg[2]_i_1_n_4 ),
        .O(\cmos_B1[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \cmos_B1[6]_i_7 
       (.I0(douta[2]),
        .I1(\cmos_B1_reg[2]_i_1_n_5 ),
        .I2(\cmos_B1_reg[2]_i_1_n_4 ),
        .I3(douta[3]),
        .O(\cmos_B1[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cmos_B1[6]_i_8 
       (.I0(douta[2]),
        .I1(\cmos_B1_reg[2]_i_1_n_5 ),
        .O(\cmos_B1[6]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_B1_reg[0] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(douta[2]),
        .Q(cmos_B1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_B1_reg[10] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_B10[10]),
        .Q(cmos_B1[10]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \cmos_B1_reg[10]_i_1 
       (.CI(\cmos_B1_reg[6]_i_1_n_0 ),
        .CO({\cmos_B1_reg[10]_i_1_n_0 ,\cmos_B1_reg[10]_i_1_n_1 ,\cmos_B1_reg[10]_i_1_n_2 ,\cmos_B1_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\cmos_B1[10]_i_2_n_0 ,\cmos_B1[10]_i_3_n_0 ,\cmos_B1[10]_i_4_n_0 ,\cmos_B1[10]_i_5_n_0 }),
        .O(cmos_B10[10:7]),
        .S({\cmos_B1[10]_i_6_n_0 ,\cmos_B1[10]_i_7_n_0 ,\cmos_B1[10]_i_8_n_0 ,\cmos_B1[10]_i_9_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \cmos_B1_reg[10]_i_10 
       (.CI(\cmos_B1_reg[2]_i_1_n_0 ),
        .CO({\cmos_B1_reg[10]_i_10_n_0 ,\cmos_B1_reg[10]_i_10_n_1 ,\cmos_B1_reg[10]_i_10_n_2 ,\cmos_B1_reg[10]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,douta[4:2]}),
        .O({\cmos_B1_reg[10]_i_10_n_4 ,\cmos_B1_reg[10]_i_10_n_5 ,\cmos_B1_reg[10]_i_10_n_6 ,\cmos_B1_reg[10]_i_10_n_7 }),
        .S({douta[3],\cmos_B1[10]_i_11_n_0 ,\cmos_B1[10]_i_12_n_0 ,\cmos_B1[10]_i_13_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_B1_reg[11] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_B10[11]),
        .Q(cmos_B1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_B1_reg[12] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_B10[12]),
        .Q(cmos_B1[12]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \cmos_B1_reg[12]_i_1 
       (.CI(\cmos_B1_reg[10]_i_1_n_0 ),
        .CO({\NLW_cmos_B1_reg[12]_i_1_CO_UNCONNECTED [3:1],\cmos_B1_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\cmos_B1[12]_i_2_n_0 }),
        .O({\NLW_cmos_B1_reg[12]_i_1_O_UNCONNECTED [3:2],cmos_B10[12:11]}),
        .S({1'b0,1'b0,\cmos_B1[12]_i_3_n_0 ,\cmos_B1[12]_i_4_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \cmos_B1_reg[12]_i_5 
       (.CI(\cmos_B1_reg[10]_i_10_n_0 ),
        .CO({\NLW_cmos_B1_reg[12]_i_5_CO_UNCONNECTED [3:2],\cmos_B1_reg[12]_i_5_n_2 ,\NLW_cmos_B1_reg[12]_i_5_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cmos_B1_reg[12]_i_5_O_UNCONNECTED [3:1],\cmos_B1_reg[12]_i_5_n_7 }),
        .S({1'b0,1'b0,1'b1,douta[4]}));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_B1_reg[1] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_B10[1]),
        .Q(cmos_B1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_B1_reg[2] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_B10[2]),
        .Q(cmos_B1[2]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \cmos_B1_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\cmos_B1_reg[2]_i_1_n_0 ,\cmos_B1_reg[2]_i_1_n_1 ,\cmos_B1_reg[2]_i_1_n_2 ,\cmos_B1_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({douta[1:0],douta[4],1'b0}),
        .O({\cmos_B1_reg[2]_i_1_n_4 ,\cmos_B1_reg[2]_i_1_n_5 ,cmos_B10[2:1]}),
        .S({\cmos_B1[2]_i_2_n_0 ,\cmos_B1[2]_i_3_n_0 ,\cmos_B1[2]_i_4_n_0 ,douta[3]}));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_B1_reg[3] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_B10[3]),
        .Q(cmos_B1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_B1_reg[4] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_B10[4]),
        .Q(cmos_B1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_B1_reg[5] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_B10[5]),
        .Q(cmos_B1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_B1_reg[6] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_B10[6]),
        .Q(cmos_B1[6]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \cmos_B1_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\cmos_B1_reg[6]_i_1_n_0 ,\cmos_B1_reg[6]_i_1_n_1 ,\cmos_B1_reg[6]_i_1_n_2 ,\cmos_B1_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\cmos_B1[6]_i_2_n_0 ,\cmos_B1[6]_i_3_n_0 ,\cmos_B1[6]_i_4_n_0 ,1'b0}),
        .O(cmos_B10[6:3]),
        .S({\cmos_B1[6]_i_5_n_0 ,\cmos_B1[6]_i_6_n_0 ,\cmos_B1[6]_i_7_n_0 ,\cmos_B1[6]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_B1_reg[7] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_B10[7]),
        .Q(cmos_B1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_B1_reg[8] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_B10[8]),
        .Q(cmos_B1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_B1_reg[9] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_B10[9]),
        .Q(cmos_B1[9]),
        .R(1'b0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \cmos_G1[10]_i_2 
       (.I0(douta[8]),
        .I1(\cmos_G1_reg[15]_i_3_n_7 ),
        .I2(douta[5]),
        .O(\cmos_G1[10]_i_2_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \cmos_G1[10]_i_3 
       (.I0(douta[7]),
        .I1(\cmos_G1_reg[6]_i_2_n_4 ),
        .I2(douta[10]),
        .O(\cmos_G1[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cmos_G1[10]_i_4 
       (.I0(douta[10]),
        .I1(douta[7]),
        .I2(\cmos_G1_reg[6]_i_2_n_4 ),
        .O(\cmos_G1[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \cmos_G1[10]_i_5 
       (.I0(douta[9]),
        .I1(\cmos_G1_reg[15]_i_3_n_6 ),
        .I2(douta[6]),
        .I3(\cmos_G1[10]_i_2_n_0 ),
        .O(\cmos_G1[10]_i_5_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \cmos_G1[10]_i_6 
       (.I0(douta[8]),
        .I1(\cmos_G1_reg[15]_i_3_n_7 ),
        .I2(douta[5]),
        .I3(\cmos_G1[10]_i_3_n_0 ),
        .O(\cmos_G1[10]_i_6_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \cmos_G1[10]_i_7 
       (.I0(douta[7]),
        .I1(\cmos_G1_reg[6]_i_2_n_4 ),
        .I2(douta[10]),
        .I3(\cmos_G1_reg[6]_i_2_n_5 ),
        .I4(douta[6]),
        .O(\cmos_G1[10]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cmos_G1[10]_i_8 
       (.I0(douta[6]),
        .I1(\cmos_G1_reg[6]_i_2_n_5 ),
        .I2(douta[9]),
        .O(\cmos_G1[10]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cmos_G1[14]_i_2 
       (.I0(douta[9]),
        .I1(\cmos_G1_reg[15]_i_3_n_1 ),
        .O(\cmos_G1[14]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cmos_G1[14]_i_3 
       (.I0(douta[8]),
        .I1(\cmos_G1_reg[15]_i_3_n_1 ),
        .O(\cmos_G1[14]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \cmos_G1[14]_i_4 
       (.I0(douta[10]),
        .I1(\cmos_G1_reg[15]_i_3_n_1 ),
        .I2(douta[7]),
        .O(\cmos_G1[14]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \cmos_G1[14]_i_5 
       (.I0(douta[9]),
        .I1(\cmos_G1_reg[15]_i_3_n_6 ),
        .I2(douta[6]),
        .O(\cmos_G1[14]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \cmos_G1[14]_i_6 
       (.I0(douta[9]),
        .I1(\cmos_G1_reg[15]_i_3_n_1 ),
        .I2(douta[10]),
        .O(\cmos_G1[14]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \cmos_G1[14]_i_7 
       (.I0(douta[8]),
        .I1(\cmos_G1_reg[15]_i_3_n_1 ),
        .I2(douta[9]),
        .O(\cmos_G1[14]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7E81)) 
    \cmos_G1[14]_i_8 
       (.I0(douta[7]),
        .I1(douta[10]),
        .I2(\cmos_G1_reg[15]_i_3_n_1 ),
        .I3(douta[8]),
        .O(\cmos_G1[14]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \cmos_G1[14]_i_9 
       (.I0(\cmos_G1[14]_i_5_n_0 ),
        .I1(\cmos_G1_reg[15]_i_3_n_1 ),
        .I2(douta[10]),
        .I3(douta[7]),
        .O(\cmos_G1[14]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \cmos_G1[15]_i_2 
       (.I0(douta[10]),
        .I1(\cmos_G1_reg[15]_i_3_n_1 ),
        .O(\cmos_G1[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cmos_G1[15]_i_4 
       (.I0(douta[10]),
        .O(\cmos_G1[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cmos_G1[15]_i_5 
       (.I0(douta[9]),
        .O(\cmos_G1[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cmos_G1[2]_i_2 
       (.I0(douta[10]),
        .I1(douta[6]),
        .O(\cmos_G1[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cmos_G1[2]_i_3 
       (.I0(douta[9]),
        .I1(douta[5]),
        .O(\cmos_G1[2]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cmos_G1[2]_i_4 
       (.I0(douta[10]),
        .O(\cmos_G1[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cmos_G1[6]_i_3 
       (.I0(\cmos_G1_reg[6]_i_2_n_6 ),
        .I1(douta[5]),
        .O(\cmos_G1[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cmos_G1[6]_i_4 
       (.I0(\cmos_G1_reg[6]_i_2_n_7 ),
        .I1(douta[10]),
        .O(\cmos_G1[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cmos_G1[6]_i_5 
       (.I0(\cmos_G1_reg[2]_i_1_n_4 ),
        .I1(douta[9]),
        .O(\cmos_G1[6]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cmos_G1[6]_i_6 
       (.I0(douta[8]),
        .I1(douta[10]),
        .O(\cmos_G1[6]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cmos_G1[6]_i_7 
       (.I0(douta[7]),
        .I1(douta[9]),
        .O(\cmos_G1[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cmos_G1[6]_i_8 
       (.I0(douta[6]),
        .I1(douta[8]),
        .O(\cmos_G1[6]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cmos_G1[6]_i_9 
       (.I0(douta[5]),
        .I1(douta[7]),
        .O(\cmos_G1[6]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_G1_reg[10] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_G10[10]),
        .Q(cmos_G1[10]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \cmos_G1_reg[10]_i_1 
       (.CI(\cmos_G1_reg[6]_i_1_n_0 ),
        .CO({\cmos_G1_reg[10]_i_1_n_0 ,\cmos_G1_reg[10]_i_1_n_1 ,\cmos_G1_reg[10]_i_1_n_2 ,\cmos_G1_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\cmos_G1[10]_i_2_n_0 ,\cmos_G1[10]_i_3_n_0 ,\cmos_G1[10]_i_4_n_0 ,douta[9]}),
        .O(cmos_G10[10:7]),
        .S({\cmos_G1[10]_i_5_n_0 ,\cmos_G1[10]_i_6_n_0 ,\cmos_G1[10]_i_7_n_0 ,\cmos_G1[10]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_G1_reg[11] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_G10[11]),
        .Q(cmos_G1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_G1_reg[12] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_G10[12]),
        .Q(cmos_G1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_G1_reg[13] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_G10[13]),
        .Q(cmos_G1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_G1_reg[14] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_G10[14]),
        .Q(cmos_G1[14]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \cmos_G1_reg[14]_i_1 
       (.CI(\cmos_G1_reg[10]_i_1_n_0 ),
        .CO({\cmos_G1_reg[14]_i_1_n_0 ,\cmos_G1_reg[14]_i_1_n_1 ,\cmos_G1_reg[14]_i_1_n_2 ,\cmos_G1_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\cmos_G1[14]_i_2_n_0 ,\cmos_G1[14]_i_3_n_0 ,\cmos_G1[14]_i_4_n_0 ,\cmos_G1[14]_i_5_n_0 }),
        .O(cmos_G10[14:11]),
        .S({\cmos_G1[14]_i_6_n_0 ,\cmos_G1[14]_i_7_n_0 ,\cmos_G1[14]_i_8_n_0 ,\cmos_G1[14]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_G1_reg[15] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_G10[15]),
        .Q(cmos_G1[15]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \cmos_G1_reg[15]_i_1 
       (.CI(\cmos_G1_reg[14]_i_1_n_0 ),
        .CO(\NLW_cmos_G1_reg[15]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cmos_G1_reg[15]_i_1_O_UNCONNECTED [3:1],cmos_G10[15]}),
        .S({1'b0,1'b0,1'b0,\cmos_G1[15]_i_2_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \cmos_G1_reg[15]_i_3 
       (.CI(\cmos_G1_reg[6]_i_2_n_0 ),
        .CO({\NLW_cmos_G1_reg[15]_i_3_CO_UNCONNECTED [3],\cmos_G1_reg[15]_i_3_n_1 ,\NLW_cmos_G1_reg[15]_i_3_CO_UNCONNECTED [1],\cmos_G1_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,douta[10:9]}),
        .O({\NLW_cmos_G1_reg[15]_i_3_O_UNCONNECTED [3:2],\cmos_G1_reg[15]_i_3_n_6 ,\cmos_G1_reg[15]_i_3_n_7 }),
        .S({1'b0,1'b1,\cmos_G1[15]_i_4_n_0 ,\cmos_G1[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_G1_reg[1] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_G10[1]),
        .Q(cmos_G1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_G1_reg[2] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_G10[2]),
        .Q(cmos_G1[2]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \cmos_G1_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\cmos_G1_reg[2]_i_1_n_0 ,\cmos_G1_reg[2]_i_1_n_1 ,\cmos_G1_reg[2]_i_1_n_2 ,\cmos_G1_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({douta[10:9],1'b0,1'b1}),
        .O({\cmos_G1_reg[2]_i_1_n_4 ,\cmos_G1_reg[2]_i_1_n_5 ,cmos_G10[2:1]}),
        .S({\cmos_G1[2]_i_2_n_0 ,\cmos_G1[2]_i_3_n_0 ,\cmos_G1[2]_i_4_n_0 ,douta[9]}));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_G1_reg[3] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_G10[3]),
        .Q(cmos_G1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_G1_reg[4] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_G10[4]),
        .Q(cmos_G1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_G1_reg[5] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_G10[5]),
        .Q(cmos_G1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_G1_reg[6] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_G10[6]),
        .Q(cmos_G1[6]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \cmos_G1_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\cmos_G1_reg[6]_i_1_n_0 ,\cmos_G1_reg[6]_i_1_n_1 ,\cmos_G1_reg[6]_i_1_n_2 ,\cmos_G1_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\cmos_G1_reg[6]_i_2_n_6 ,\cmos_G1_reg[6]_i_2_n_7 ,\cmos_G1_reg[2]_i_1_n_4 ,1'b0}),
        .O(cmos_G10[6:3]),
        .S({\cmos_G1[6]_i_3_n_0 ,\cmos_G1[6]_i_4_n_0 ,\cmos_G1[6]_i_5_n_0 ,\cmos_G1_reg[2]_i_1_n_5 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \cmos_G1_reg[6]_i_2 
       (.CI(\cmos_G1_reg[2]_i_1_n_0 ),
        .CO({\cmos_G1_reg[6]_i_2_n_0 ,\cmos_G1_reg[6]_i_2_n_1 ,\cmos_G1_reg[6]_i_2_n_2 ,\cmos_G1_reg[6]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(douta[8:5]),
        .O({\cmos_G1_reg[6]_i_2_n_4 ,\cmos_G1_reg[6]_i_2_n_5 ,\cmos_G1_reg[6]_i_2_n_6 ,\cmos_G1_reg[6]_i_2_n_7 }),
        .S({\cmos_G1[6]_i_6_n_0 ,\cmos_G1[6]_i_7_n_0 ,\cmos_G1[6]_i_8_n_0 ,\cmos_G1[6]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_G1_reg[7] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_G10[7]),
        .Q(cmos_G1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_G1_reg[8] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_G10[8]),
        .Q(cmos_G1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_G1_reg[9] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_G10[9]),
        .Q(cmos_G1[9]),
        .R(1'b0));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \cmos_R1[13]_i_2 
       (.I0(douta[14]),
        .I1(\cmos_R1_reg[13]_i_5_n_7 ),
        .I2(douta[11]),
        .O(\cmos_R1[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h17E8)) 
    \cmos_R1[13]_i_3 
       (.I0(douta[12]),
        .I1(\cmos_R1_reg[13]_i_5_n_2 ),
        .I2(douta[15]),
        .I3(douta[13]),
        .O(\cmos_R1[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \cmos_R1[13]_i_4 
       (.I0(\cmos_R1[13]_i_2_n_0 ),
        .I1(\cmos_R1_reg[13]_i_5_n_2 ),
        .I2(douta[15]),
        .I3(douta[12]),
        .O(\cmos_R1[13]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cmos_R1[1]_i_2 
       (.I0(douta[12]),
        .I1(douta[15]),
        .O(\cmos_R1[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cmos_R1[1]_i_3 
       (.I0(douta[11]),
        .I1(douta[14]),
        .O(\cmos_R1[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cmos_R1[1]_i_4 
       (.I0(douta[15]),
        .I1(douta[13]),
        .O(\cmos_R1[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cmos_R1[5]_i_3 
       (.I0(\cmos_R1_reg[5]_i_2_n_7 ),
        .I1(douta[15]),
        .O(\cmos_R1[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cmos_R1[5]_i_4 
       (.I0(\cmos_R1_reg[1]_i_1_n_4 ),
        .I1(douta[14]),
        .O(\cmos_R1[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cmos_R1[5]_i_5 
       (.I0(\cmos_R1_reg[1]_i_1_n_5 ),
        .I1(douta[13]),
        .O(\cmos_R1[5]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cmos_R1[5]_i_6 
       (.I0(douta[15]),
        .I1(douta[13]),
        .O(\cmos_R1[5]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cmos_R1[5]_i_7 
       (.I0(douta[14]),
        .I1(douta[12]),
        .O(\cmos_R1[5]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cmos_R1[5]_i_8 
       (.I0(douta[13]),
        .I1(douta[11]),
        .O(\cmos_R1[5]_i_8_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \cmos_R1[9]_i_2 
       (.I0(douta[13]),
        .I1(\cmos_R1_reg[5]_i_2_n_4 ),
        .I2(douta[15]),
        .O(\cmos_R1[9]_i_2_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \cmos_R1[9]_i_3 
       (.I0(douta[12]),
        .I1(\cmos_R1_reg[5]_i_2_n_5 ),
        .I2(douta[14]),
        .O(\cmos_R1[9]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cmos_R1[9]_i_4 
       (.I0(douta[14]),
        .I1(douta[12]),
        .I2(\cmos_R1_reg[5]_i_2_n_5 ),
        .O(\cmos_R1[9]_i_4_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \cmos_R1[9]_i_5 
       (.I0(douta[14]),
        .I1(\cmos_R1_reg[13]_i_5_n_7 ),
        .I2(douta[11]),
        .I3(\cmos_R1[9]_i_2_n_0 ),
        .O(\cmos_R1[9]_i_5_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \cmos_R1[9]_i_6 
       (.I0(douta[13]),
        .I1(\cmos_R1_reg[5]_i_2_n_4 ),
        .I2(douta[15]),
        .I3(\cmos_R1[9]_i_3_n_0 ),
        .O(\cmos_R1[9]_i_6_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \cmos_R1[9]_i_7 
       (.I0(douta[12]),
        .I1(\cmos_R1_reg[5]_i_2_n_5 ),
        .I2(douta[14]),
        .I3(\cmos_R1_reg[5]_i_2_n_6 ),
        .I4(douta[11]),
        .O(\cmos_R1[9]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cmos_R1[9]_i_8 
       (.I0(douta[11]),
        .I1(\cmos_R1_reg[5]_i_2_n_6 ),
        .I2(douta[13]),
        .O(\cmos_R1[9]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_R1_reg[0] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(douta[13]),
        .Q(cmos_R1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_R1_reg[10] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_R10[10]),
        .Q(cmos_R1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_R1_reg[11] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_R10[11]),
        .Q(cmos_R1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_R1_reg[12] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_R10[12]),
        .Q(cmos_R1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_R1_reg[13] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_R10[13]),
        .Q(cmos_R1[13]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \cmos_R1_reg[13]_i_1 
       (.CI(\cmos_R1_reg[9]_i_1_n_0 ),
        .CO({\cmos_R1_reg[13]_i_1_n_0 ,\cmos_R1_reg[13]_i_1_n_1 ,\cmos_R1_reg[13]_i_1_n_2 ,\cmos_R1_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,douta[13],\cmos_R1[13]_i_2_n_0 }),
        .O(cmos_R10[13:10]),
        .S({douta[15:14],\cmos_R1[13]_i_3_n_0 ,\cmos_R1[13]_i_4_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \cmos_R1_reg[13]_i_5 
       (.CI(\cmos_R1_reg[5]_i_2_n_0 ),
        .CO({\NLW_cmos_R1_reg[13]_i_5_CO_UNCONNECTED [3:2],\cmos_R1_reg[13]_i_5_n_2 ,\NLW_cmos_R1_reg[13]_i_5_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cmos_R1_reg[13]_i_5_O_UNCONNECTED [3:1],\cmos_R1_reg[13]_i_5_n_7 }),
        .S({1'b0,1'b0,1'b1,douta[15]}));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_R1_reg[14] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_R10[14]),
        .Q(cmos_R1[14]),
        .R(1'b0));
  CARRY4 \cmos_R1_reg[14]_i_1 
       (.CI(\cmos_R1_reg[13]_i_1_n_0 ),
        .CO({\NLW_cmos_R1_reg[14]_i_1_CO_UNCONNECTED [3:1],cmos_R10[14]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cmos_R1_reg[14]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_R1_reg[1] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_R10[1]),
        .Q(cmos_R1[1]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \cmos_R1_reg[1]_i_1 
       (.CI(1'b0),
        .CO({\cmos_R1_reg[1]_i_1_n_0 ,\cmos_R1_reg[1]_i_1_n_1 ,\cmos_R1_reg[1]_i_1_n_2 ,\cmos_R1_reg[1]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({douta[12:11],douta[15],1'b0}),
        .O({\cmos_R1_reg[1]_i_1_n_4 ,\cmos_R1_reg[1]_i_1_n_5 ,\cmos_R1_reg[1]_i_1_n_6 ,cmos_R10[1]}),
        .S({\cmos_R1[1]_i_2_n_0 ,\cmos_R1[1]_i_3_n_0 ,\cmos_R1[1]_i_4_n_0 ,douta[14]}));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_R1_reg[2] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_R10[2]),
        .Q(cmos_R1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_R1_reg[3] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_R10[3]),
        .Q(cmos_R1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_R1_reg[4] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_R10[4]),
        .Q(cmos_R1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_R1_reg[5] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_R10[5]),
        .Q(cmos_R1[5]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \cmos_R1_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\cmos_R1_reg[5]_i_1_n_0 ,\cmos_R1_reg[5]_i_1_n_1 ,\cmos_R1_reg[5]_i_1_n_2 ,\cmos_R1_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\cmos_R1_reg[5]_i_2_n_7 ,\cmos_R1_reg[1]_i_1_n_4 ,\cmos_R1_reg[1]_i_1_n_5 ,1'b0}),
        .O(cmos_R10[5:2]),
        .S({\cmos_R1[5]_i_3_n_0 ,\cmos_R1[5]_i_4_n_0 ,\cmos_R1[5]_i_5_n_0 ,\cmos_R1_reg[1]_i_1_n_6 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \cmos_R1_reg[5]_i_2 
       (.CI(\cmos_R1_reg[1]_i_1_n_0 ),
        .CO({\cmos_R1_reg[5]_i_2_n_0 ,\cmos_R1_reg[5]_i_2_n_1 ,\cmos_R1_reg[5]_i_2_n_2 ,\cmos_R1_reg[5]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,douta[15:13]}),
        .O({\cmos_R1_reg[5]_i_2_n_4 ,\cmos_R1_reg[5]_i_2_n_5 ,\cmos_R1_reg[5]_i_2_n_6 ,\cmos_R1_reg[5]_i_2_n_7 }),
        .S({douta[14],\cmos_R1[5]_i_6_n_0 ,\cmos_R1[5]_i_7_n_0 ,\cmos_R1[5]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_R1_reg[6] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_R10[6]),
        .Q(cmos_R1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_R1_reg[7] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_R10[7]),
        .Q(cmos_R1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_R1_reg[8] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_R10[8]),
        .Q(cmos_R1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmos_R1_reg[9] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(cmos_R10[9]),
        .Q(cmos_R1[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \cmos_R1_reg[9]_i_1 
       (.CI(\cmos_R1_reg[5]_i_1_n_0 ),
        .CO({\cmos_R1_reg[9]_i_1_n_0 ,\cmos_R1_reg[9]_i_1_n_1 ,\cmos_R1_reg[9]_i_1_n_2 ,\cmos_R1_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\cmos_R1[9]_i_2_n_0 ,\cmos_R1[9]_i_3_n_0 ,\cmos_R1[9]_i_4_n_0 ,douta[13]}),
        .O(cmos_R10[9:6]),
        .S({\cmos_R1[9]_i_5_n_0 ,\cmos_R1[9]_i_6_n_0 ,\cmos_R1[9]_i_7_n_0 ,\cmos_R1[9]_i_8_n_0 }));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \img_Y0[11]_i_10 
       (.I0(cmos_G1[8]),
        .I1(cmos_B1[8]),
        .I2(cmos_R1[8]),
        .I3(\img_Y0[11]_i_6_n_0 ),
        .O(\img_Y0[11]_i_10_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \img_Y0[11]_i_12 
       (.I0(cmos_G1[6]),
        .I1(cmos_B1[6]),
        .I2(cmos_R1[6]),
        .O(\img_Y0[11]_i_12_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \img_Y0[11]_i_13 
       (.I0(cmos_G1[5]),
        .I1(cmos_B1[5]),
        .I2(cmos_R1[5]),
        .O(\img_Y0[11]_i_13_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \img_Y0[11]_i_14 
       (.I0(cmos_G1[4]),
        .I1(cmos_B1[4]),
        .I2(cmos_R1[4]),
        .O(\img_Y0[11]_i_14_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \img_Y0[11]_i_15 
       (.I0(cmos_G1[3]),
        .I1(cmos_B1[3]),
        .I2(cmos_R1[3]),
        .O(\img_Y0[11]_i_15_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \img_Y0[11]_i_16 
       (.I0(cmos_G1[7]),
        .I1(cmos_B1[7]),
        .I2(cmos_R1[7]),
        .I3(\img_Y0[11]_i_12_n_0 ),
        .O(\img_Y0[11]_i_16_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \img_Y0[11]_i_17 
       (.I0(cmos_G1[6]),
        .I1(cmos_B1[6]),
        .I2(cmos_R1[6]),
        .I3(\img_Y0[11]_i_13_n_0 ),
        .O(\img_Y0[11]_i_17_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \img_Y0[11]_i_18 
       (.I0(cmos_G1[5]),
        .I1(cmos_B1[5]),
        .I2(cmos_R1[5]),
        .I3(\img_Y0[11]_i_14_n_0 ),
        .O(\img_Y0[11]_i_18_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \img_Y0[11]_i_19 
       (.I0(cmos_G1[4]),
        .I1(cmos_B1[4]),
        .I2(cmos_R1[4]),
        .I3(\img_Y0[11]_i_15_n_0 ),
        .O(\img_Y0[11]_i_19_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \img_Y0[11]_i_20 
       (.I0(cmos_G1[2]),
        .I1(cmos_B1[2]),
        .I2(cmos_R1[2]),
        .O(\img_Y0[11]_i_20_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \img_Y0[11]_i_21 
       (.I0(cmos_G1[1]),
        .I1(cmos_B1[1]),
        .I2(cmos_R1[1]),
        .O(\img_Y0[11]_i_21_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \img_Y0[11]_i_22 
       (.I0(cmos_B1[0]),
        .I1(cmos_R1[0]),
        .O(\img_Y0[11]_i_22_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \img_Y0[11]_i_23 
       (.I0(cmos_G1[3]),
        .I1(cmos_B1[3]),
        .I2(cmos_R1[3]),
        .I3(\img_Y0[11]_i_20_n_0 ),
        .O(\img_Y0[11]_i_23_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \img_Y0[11]_i_24 
       (.I0(cmos_G1[2]),
        .I1(cmos_B1[2]),
        .I2(cmos_R1[2]),
        .I3(\img_Y0[11]_i_21_n_0 ),
        .O(\img_Y0[11]_i_24_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \img_Y0[11]_i_25 
       (.I0(cmos_G1[1]),
        .I1(cmos_B1[1]),
        .I2(cmos_R1[1]),
        .I3(\img_Y0[11]_i_22_n_0 ),
        .O(\img_Y0[11]_i_25_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \img_Y0[11]_i_26 
       (.I0(cmos_B1[0]),
        .I1(cmos_R1[0]),
        .O(\img_Y0[11]_i_26_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \img_Y0[11]_i_3 
       (.I0(cmos_G1[10]),
        .I1(cmos_B1[10]),
        .I2(cmos_R1[10]),
        .O(\img_Y0[11]_i_3_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \img_Y0[11]_i_4 
       (.I0(cmos_G1[9]),
        .I1(cmos_B1[9]),
        .I2(cmos_R1[9]),
        .O(\img_Y0[11]_i_4_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \img_Y0[11]_i_5 
       (.I0(cmos_G1[8]),
        .I1(cmos_B1[8]),
        .I2(cmos_R1[8]),
        .O(\img_Y0[11]_i_5_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \img_Y0[11]_i_6 
       (.I0(cmos_G1[7]),
        .I1(cmos_B1[7]),
        .I2(cmos_R1[7]),
        .O(\img_Y0[11]_i_6_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \img_Y0[11]_i_7 
       (.I0(cmos_G1[11]),
        .I1(cmos_B1[11]),
        .I2(cmos_R1[11]),
        .I3(\img_Y0[11]_i_3_n_0 ),
        .O(\img_Y0[11]_i_7_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \img_Y0[11]_i_8 
       (.I0(cmos_G1[10]),
        .I1(cmos_B1[10]),
        .I2(cmos_R1[10]),
        .I3(\img_Y0[11]_i_4_n_0 ),
        .O(\img_Y0[11]_i_8_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \img_Y0[11]_i_9 
       (.I0(cmos_G1[9]),
        .I1(cmos_B1[9]),
        .I2(cmos_R1[9]),
        .I3(\img_Y0[11]_i_5_n_0 ),
        .O(\img_Y0[11]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \img_Y0[15]_i_2 
       (.I0(cmos_G1[13]),
        .I1(cmos_R1[13]),
        .O(\img_Y0[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \img_Y0[15]_i_3 
       (.I0(cmos_G1[12]),
        .I1(cmos_B1[12]),
        .I2(cmos_R1[12]),
        .O(\img_Y0[15]_i_3_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \img_Y0[15]_i_4 
       (.I0(cmos_G1[11]),
        .I1(cmos_B1[11]),
        .I2(cmos_R1[11]),
        .O(\img_Y0[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \img_Y0[15]_i_5 
       (.I0(cmos_R1[14]),
        .I1(cmos_G1[14]),
        .I2(cmos_G1[15]),
        .O(\img_Y0[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \img_Y0[15]_i_6 
       (.I0(cmos_R1[13]),
        .I1(cmos_G1[13]),
        .I2(cmos_G1[14]),
        .I3(cmos_R1[14]),
        .O(\img_Y0[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \img_Y0[15]_i_7 
       (.I0(cmos_R1[12]),
        .I1(cmos_B1[12]),
        .I2(cmos_G1[12]),
        .I3(cmos_G1[13]),
        .I4(cmos_R1[13]),
        .O(\img_Y0[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \img_Y0[15]_i_8 
       (.I0(\img_Y0[15]_i_4_n_0 ),
        .I1(cmos_B1[12]),
        .I2(cmos_G1[12]),
        .I3(cmos_R1[12]),
        .O(\img_Y0[15]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \img_Y0_reg[10] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(\img_Y0_reg[11]_i_1_n_5 ),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \img_Y0_reg[11] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(\img_Y0_reg[11]_i_1_n_4 ),
        .Q(p_0_in[3]),
        .R(1'b0));
  CARRY4 \img_Y0_reg[11]_i_1 
       (.CI(\img_Y0_reg[11]_i_2_n_0 ),
        .CO({\img_Y0_reg[11]_i_1_n_0 ,\img_Y0_reg[11]_i_1_n_1 ,\img_Y0_reg[11]_i_1_n_2 ,\img_Y0_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\img_Y0[11]_i_3_n_0 ,\img_Y0[11]_i_4_n_0 ,\img_Y0[11]_i_5_n_0 ,\img_Y0[11]_i_6_n_0 }),
        .O({\img_Y0_reg[11]_i_1_n_4 ,\img_Y0_reg[11]_i_1_n_5 ,\img_Y0_reg[11]_i_1_n_6 ,\img_Y0_reg[11]_i_1_n_7 }),
        .S({\img_Y0[11]_i_7_n_0 ,\img_Y0[11]_i_8_n_0 ,\img_Y0[11]_i_9_n_0 ,\img_Y0[11]_i_10_n_0 }));
  CARRY4 \img_Y0_reg[11]_i_11 
       (.CI(1'b0),
        .CO({\img_Y0_reg[11]_i_11_n_0 ,\img_Y0_reg[11]_i_11_n_1 ,\img_Y0_reg[11]_i_11_n_2 ,\img_Y0_reg[11]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\img_Y0[11]_i_20_n_0 ,\img_Y0[11]_i_21_n_0 ,\img_Y0[11]_i_22_n_0 ,1'b0}),
        .O(\NLW_img_Y0_reg[11]_i_11_O_UNCONNECTED [3:0]),
        .S({\img_Y0[11]_i_23_n_0 ,\img_Y0[11]_i_24_n_0 ,\img_Y0[11]_i_25_n_0 ,\img_Y0[11]_i_26_n_0 }));
  CARRY4 \img_Y0_reg[11]_i_2 
       (.CI(\img_Y0_reg[11]_i_11_n_0 ),
        .CO({\img_Y0_reg[11]_i_2_n_0 ,\img_Y0_reg[11]_i_2_n_1 ,\img_Y0_reg[11]_i_2_n_2 ,\img_Y0_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\img_Y0[11]_i_12_n_0 ,\img_Y0[11]_i_13_n_0 ,\img_Y0[11]_i_14_n_0 ,\img_Y0[11]_i_15_n_0 }),
        .O(\NLW_img_Y0_reg[11]_i_2_O_UNCONNECTED [3:0]),
        .S({\img_Y0[11]_i_16_n_0 ,\img_Y0[11]_i_17_n_0 ,\img_Y0[11]_i_18_n_0 ,\img_Y0[11]_i_19_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \img_Y0_reg[12] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(\img_Y0_reg[15]_i_1_n_7 ),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \img_Y0_reg[13] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(\img_Y0_reg[15]_i_1_n_6 ),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \img_Y0_reg[14] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(\img_Y0_reg[15]_i_1_n_5 ),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \img_Y0_reg[15] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(\img_Y0_reg[15]_i_1_n_4 ),
        .Q(p_0_in[7]),
        .R(1'b0));
  CARRY4 \img_Y0_reg[15]_i_1 
       (.CI(\img_Y0_reg[11]_i_1_n_0 ),
        .CO({\NLW_img_Y0_reg[15]_i_1_CO_UNCONNECTED [3],\img_Y0_reg[15]_i_1_n_1 ,\img_Y0_reg[15]_i_1_n_2 ,\img_Y0_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\img_Y0[15]_i_2_n_0 ,\img_Y0[15]_i_3_n_0 ,\img_Y0[15]_i_4_n_0 }),
        .O({\img_Y0_reg[15]_i_1_n_4 ,\img_Y0_reg[15]_i_1_n_5 ,\img_Y0_reg[15]_i_1_n_6 ,\img_Y0_reg[15]_i_1_n_7 }),
        .S({\img_Y0[15]_i_5_n_0 ,\img_Y0[15]_i_6_n_0 ,\img_Y0[15]_i_7_n_0 ,\img_Y0[15]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \img_Y0_reg[8] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(\img_Y0_reg[11]_i_1_n_7 ),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \img_Y0_reg[9] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(\img_Y0_reg[11]_i_1_n_6 ),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \img_Y_reg[0] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\img_Y_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \img_Y_reg[1] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\img_Y_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \img_Y_reg[2] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(\img_Y_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \img_Y_reg[3] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(\img_Y_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \img_Y_reg[4] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(\img_Y_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \img_Y_reg[5] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(\img_Y_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \img_Y_reg[6] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(\img_Y_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \img_Y_reg[7] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(\img_Y_reg[7]_0 [7]),
        .R(1'b0));
  (* srl_bus_name = "\u_Img_Processor/u_RGB_YCBCR/per_clken_r_reg " *) 
  (* srl_name = "\u_Img_Processor/u_RGB_YCBCR/per_clken_r_reg[1]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \per_clken_r_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(vga_clk_BUFG),
        .D(picture_data_en),
        .Q(\per_clken_r_reg[1]_srl2_n_0 ));
  LUT6 #(
    .INIT(64'h22AAAAAAAAAAA800)) 
    \per_clken_r_reg[1]_srl2_i_1 
       (.I0(\vcount_reg[6] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(picture_data_en));
  FDRE #(
    .INIT(1'b0)) 
    \per_clken_r_reg[2] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(\per_clken_r_reg[1]_srl2_n_0 ),
        .Q(E),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \vga_rom_addr[0]_i_14 
       (.I0(\vga_rom_addr[0]_i_8_0 [1]),
        .I1(\vga_rom_addr[0]_i_8_0 [2]),
        .O(\vga_rom_addr[0]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \vga_rom_addr[0]_i_15 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(\vga_rom_addr[0]_i_8_0 [6]),
        .O(\vga_rom_addr[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000EA00FF000000)) 
    \vga_rom_addr[0]_i_8 
       (.I0(\vga_rom_addr[0]_i_8_0 [3]),
        .I1(\vga_rom_addr[0]_i_14_n_0 ),
        .I2(\vga_rom_addr[0]_i_8_0 [0]),
        .I3(\vga_rom_addr[0]_i_15_n_0 ),
        .I4(\vga_rom_addr[0]_i_8_0 [5]),
        .I5(\vga_rom_addr[0]_i_8_0 [4]),
        .O(\vcount_reg[6] ));
endmodule

module Shift_RAM_3X3
   (\per_clken_r_reg[0]_0 ,
    \matrix_p23_reg[7]_0 ,
    \matrix_p21_reg[7]_0 ,
    \matrix_p33_reg[7]_0 ,
    \matrix_p32_reg[7]_0 ,
    \matrix_p31_reg[7]_0 ,
    \matrix_p13_reg[7]_0 ,
    \matrix_p12_reg[7]_0 ,
    \matrix_p11_reg[7]_0 ,
    E,
    vga_clk_BUFG,
    Q);
  output [0:0]\per_clken_r_reg[0]_0 ;
  output [7:0]\matrix_p23_reg[7]_0 ;
  output [7:0]\matrix_p21_reg[7]_0 ;
  output [7:0]\matrix_p33_reg[7]_0 ;
  output [7:0]\matrix_p32_reg[7]_0 ;
  output [7:0]\matrix_p31_reg[7]_0 ;
  output [7:0]\matrix_p13_reg[7]_0 ;
  output [7:0]\matrix_p12_reg[7]_0 ;
  output [7:0]\matrix_p11_reg[7]_0 ;
  input [0:0]E;
  input vga_clk_BUFG;
  input [7:0]Q;

  wire [0:0]E;
  wire [7:0]Q;
  wire [7:0]\matrix_p11_reg[7]_0 ;
  wire [7:0]\matrix_p12_reg[7]_0 ;
  wire [7:0]\matrix_p13_reg[7]_0 ;
  wire [7:0]\matrix_p21_reg[7]_0 ;
  wire [7:0]matrix_p22;
  wire [7:0]\matrix_p23_reg[7]_0 ;
  wire [7:0]\matrix_p31_reg[7]_0 ;
  wire [7:0]\matrix_p32_reg[7]_0 ;
  wire [7:0]\matrix_p33_reg[7]_0 ;
  wire [0:0]\per_clken_r_reg[0]_0 ;
  wire [7:0]row1_data;
  wire [7:0]row2_data;
  wire [7:0]row3_data;
  wire vga_clk_BUFG;

  FDRE #(
    .INIT(1'b0)) 
    \matrix_p11_reg[0] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p12_reg[7]_0 [0]),
        .Q(\matrix_p11_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p11_reg[1] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p12_reg[7]_0 [1]),
        .Q(\matrix_p11_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p11_reg[2] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p12_reg[7]_0 [2]),
        .Q(\matrix_p11_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p11_reg[3] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p12_reg[7]_0 [3]),
        .Q(\matrix_p11_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p11_reg[4] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p12_reg[7]_0 [4]),
        .Q(\matrix_p11_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p11_reg[5] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p12_reg[7]_0 [5]),
        .Q(\matrix_p11_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p11_reg[6] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p12_reg[7]_0 [6]),
        .Q(\matrix_p11_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p11_reg[7] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p12_reg[7]_0 [7]),
        .Q(\matrix_p11_reg[7]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p12_reg[0] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p13_reg[7]_0 [0]),
        .Q(\matrix_p12_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p12_reg[1] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p13_reg[7]_0 [1]),
        .Q(\matrix_p12_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p12_reg[2] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p13_reg[7]_0 [2]),
        .Q(\matrix_p12_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p12_reg[3] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p13_reg[7]_0 [3]),
        .Q(\matrix_p12_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p12_reg[4] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p13_reg[7]_0 [4]),
        .Q(\matrix_p12_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p12_reg[5] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p13_reg[7]_0 [5]),
        .Q(\matrix_p12_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p12_reg[6] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p13_reg[7]_0 [6]),
        .Q(\matrix_p12_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p12_reg[7] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p13_reg[7]_0 [7]),
        .Q(\matrix_p12_reg[7]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p13_reg[0] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(row1_data[0]),
        .Q(\matrix_p13_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p13_reg[1] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(row1_data[1]),
        .Q(\matrix_p13_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p13_reg[2] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(row1_data[2]),
        .Q(\matrix_p13_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p13_reg[3] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(row1_data[3]),
        .Q(\matrix_p13_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p13_reg[4] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(row1_data[4]),
        .Q(\matrix_p13_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p13_reg[5] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(row1_data[5]),
        .Q(\matrix_p13_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p13_reg[6] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(row1_data[6]),
        .Q(\matrix_p13_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p13_reg[7] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(row1_data[7]),
        .Q(\matrix_p13_reg[7]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p21_reg[0] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(matrix_p22[0]),
        .Q(\matrix_p21_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p21_reg[1] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(matrix_p22[1]),
        .Q(\matrix_p21_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p21_reg[2] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(matrix_p22[2]),
        .Q(\matrix_p21_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p21_reg[3] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(matrix_p22[3]),
        .Q(\matrix_p21_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p21_reg[4] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(matrix_p22[4]),
        .Q(\matrix_p21_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p21_reg[5] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(matrix_p22[5]),
        .Q(\matrix_p21_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p21_reg[6] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(matrix_p22[6]),
        .Q(\matrix_p21_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p21_reg[7] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(matrix_p22[7]),
        .Q(\matrix_p21_reg[7]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p22_reg[0] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p23_reg[7]_0 [0]),
        .Q(matrix_p22[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p22_reg[1] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p23_reg[7]_0 [1]),
        .Q(matrix_p22[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p22_reg[2] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p23_reg[7]_0 [2]),
        .Q(matrix_p22[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p22_reg[3] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p23_reg[7]_0 [3]),
        .Q(matrix_p22[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p22_reg[4] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p23_reg[7]_0 [4]),
        .Q(matrix_p22[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p22_reg[5] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p23_reg[7]_0 [5]),
        .Q(matrix_p22[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p22_reg[6] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p23_reg[7]_0 [6]),
        .Q(matrix_p22[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p22_reg[7] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p23_reg[7]_0 [7]),
        .Q(matrix_p22[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p23_reg[0] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(row2_data[0]),
        .Q(\matrix_p23_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p23_reg[1] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(row2_data[1]),
        .Q(\matrix_p23_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p23_reg[2] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(row2_data[2]),
        .Q(\matrix_p23_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p23_reg[3] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(row2_data[3]),
        .Q(\matrix_p23_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p23_reg[4] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(row2_data[4]),
        .Q(\matrix_p23_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p23_reg[5] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(row2_data[5]),
        .Q(\matrix_p23_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p23_reg[6] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(row2_data[6]),
        .Q(\matrix_p23_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p23_reg[7] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(row2_data[7]),
        .Q(\matrix_p23_reg[7]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p31_reg[0] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p32_reg[7]_0 [0]),
        .Q(\matrix_p31_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p31_reg[1] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p32_reg[7]_0 [1]),
        .Q(\matrix_p31_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p31_reg[2] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p32_reg[7]_0 [2]),
        .Q(\matrix_p31_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p31_reg[3] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p32_reg[7]_0 [3]),
        .Q(\matrix_p31_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p31_reg[4] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p32_reg[7]_0 [4]),
        .Q(\matrix_p31_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p31_reg[5] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p32_reg[7]_0 [5]),
        .Q(\matrix_p31_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p31_reg[6] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p32_reg[7]_0 [6]),
        .Q(\matrix_p31_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p31_reg[7] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p32_reg[7]_0 [7]),
        .Q(\matrix_p31_reg[7]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p32_reg[0] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p33_reg[7]_0 [0]),
        .Q(\matrix_p32_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p32_reg[1] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p33_reg[7]_0 [1]),
        .Q(\matrix_p32_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p32_reg[2] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p33_reg[7]_0 [2]),
        .Q(\matrix_p32_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p32_reg[3] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p33_reg[7]_0 [3]),
        .Q(\matrix_p32_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p32_reg[4] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p33_reg[7]_0 [4]),
        .Q(\matrix_p32_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p32_reg[5] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p33_reg[7]_0 [5]),
        .Q(\matrix_p32_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p32_reg[6] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p33_reg[7]_0 [6]),
        .Q(\matrix_p32_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p32_reg[7] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(\matrix_p33_reg[7]_0 [7]),
        .Q(\matrix_p32_reg[7]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p33_reg[0] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(row3_data[0]),
        .Q(\matrix_p33_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p33_reg[1] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(row3_data[1]),
        .Q(\matrix_p33_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p33_reg[2] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(row3_data[2]),
        .Q(\matrix_p33_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p33_reg[3] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(row3_data[3]),
        .Q(\matrix_p33_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p33_reg[4] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(row3_data[4]),
        .Q(\matrix_p33_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p33_reg[5] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(row3_data[5]),
        .Q(\matrix_p33_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p33_reg[6] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(row3_data[6]),
        .Q(\matrix_p33_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \matrix_p33_reg[7] 
       (.C(vga_clk_BUFG),
        .CE(\per_clken_r_reg[0]_0 ),
        .D(row3_data[7]),
        .Q(\matrix_p33_reg[7]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \per_clken_r_reg[0] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(E),
        .Q(\per_clken_r_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row3_data_reg[0] 
       (.C(vga_clk_BUFG),
        .CE(E),
        .D(Q[0]),
        .Q(row3_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row3_data_reg[1] 
       (.C(vga_clk_BUFG),
        .CE(E),
        .D(Q[1]),
        .Q(row3_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row3_data_reg[2] 
       (.C(vga_clk_BUFG),
        .CE(E),
        .D(Q[2]),
        .Q(row3_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row3_data_reg[3] 
       (.C(vga_clk_BUFG),
        .CE(E),
        .D(Q[3]),
        .Q(row3_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row3_data_reg[4] 
       (.C(vga_clk_BUFG),
        .CE(E),
        .D(Q[4]),
        .Q(row3_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row3_data_reg[5] 
       (.C(vga_clk_BUFG),
        .CE(E),
        .D(Q[5]),
        .Q(row3_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row3_data_reg[6] 
       (.C(vga_clk_BUFG),
        .CE(E),
        .D(Q[6]),
        .Q(row3_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row3_data_reg[7] 
       (.C(vga_clk_BUFG),
        .CE(E),
        .D(Q[7]),
        .Q(row3_data[7]),
        .R(1'b0));
  (* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.3" *) 
  Shift_RAM_3X3_8bit u1_Shift_RAM_3X3_8bit
       (.CLK(E),
        .D(row3_data),
        .Q(row2_data));
  (* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.3" *) 
  Shift_RAM_3X3_8bit u2_Shift_RAM_3X3_8bit
       (.CLK(E),
        .D(row2_data),
        .Q(row1_data));
endmodule

(* CHECK_LICENSE_TYPE = "Shift_RAM_3X3_8bit,c_shift_ram_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.3" *) 
module Shift_RAM_3X3_8bit
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [7:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [7:0]Q;

  wire CLK;
  wire [7:0]D;
  wire [7:0]Q;

  (* C_DEFAULT_DATA = "00000000" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_addr_width = "4" *) 
  (* c_ainit_val = "00000000" *) 
  (* c_depth = "201" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "00000000" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "8" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Shift_RAM_3X3_8bit_c_shift_ram_v12_0_12 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* hdat_begin = "10'b0010001111" *) (* hdat_end = "10'b1100001111" *) (* hpixel_end = "10'b1100011111" *) 
(* hsync_end = "10'b0001011111" *) (* picture_high = "200" *) (* picture_long = "200" *) 
(* picture_x = "150" *) (* picture_y = "150" *) (* vdat_begin = "10'b0000100010" *) 
(* vdat_end = "10'b1000000010" *) (* vline_end = "10'b1000001100" *) (* vsync_end = "10'b0000000001" *) 
(* NotValidForBitStream *)
module picture_show
   (clock,
    switch,
    disp_RGB,
    hsync,
    vsync);
  input clock;
  input [2:0]switch;
  output [11:0]disp_RGB;
  output hsync;
  output vsync;

  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire cnt_clk;
  wire cnt_clk_i_1_n_0;
  wire [11:0]disp_RGB;
  wire [3:0]disp_RGB_OBUF;
  wire \disp_RGB_OBUF[11]_inst_i_2_n_0 ;
  wire \disp_RGB_OBUF[11]_inst_i_3_n_0 ;
  wire \disp_RGB_OBUF[11]_inst_i_4_n_0 ;
  wire \disp_RGB_OBUF[11]_inst_i_5_n_0 ;
  wire [3:0]gray_data0;
  wire [11:8]gray_data_filter;
  wire \hcount[9]_i_3_n_0 ;
  wire hcount_ov;
  wire [9:0]hcount_reg__0;
  wire hsync;
  wire hsync_OBUF;
  wire [9:0]p_0_in__0;
  wire [9:0]p_0_in__1;
  wire picture_en;
  wire u_Img_Processor_n_0;
  wire u_Img_Processor_n_1;
  wire vcount;
  wire \vcount[9]_i_3_n_0 ;
  wire \vcount[9]_i_4_n_0 ;
  wire \vcount[9]_i_5_n_0 ;
  wire \vcount[9]_i_6_n_0 ;
  wire \vcount[9]_i_7_n_0 ;
  wire [9:0]vcount_reg__0;
  wire vga_clk;
  wire vga_clk_BUFG;
  wire vga_clk_i_1_n_0;
  wire vga_rom_addr0;
  wire \vga_rom_addr[0]_i_10_n_0 ;
  wire \vga_rom_addr[0]_i_11_n_0 ;
  wire \vga_rom_addr[0]_i_12_n_0 ;
  wire \vga_rom_addr[0]_i_13_n_0 ;
  wire \vga_rom_addr[0]_i_16_n_0 ;
  wire \vga_rom_addr[0]_i_4_n_0 ;
  wire \vga_rom_addr[0]_i_5_n_0 ;
  wire \vga_rom_addr[0]_i_6_n_0 ;
  wire \vga_rom_addr[0]_i_7_n_0 ;
  wire \vga_rom_addr[0]_i_9_n_0 ;
  wire [15:0]vga_rom_addr_reg;
  wire \vga_rom_addr_reg[0]_i_3_n_0 ;
  wire \vga_rom_addr_reg[0]_i_3_n_1 ;
  wire \vga_rom_addr_reg[0]_i_3_n_2 ;
  wire \vga_rom_addr_reg[0]_i_3_n_3 ;
  wire \vga_rom_addr_reg[0]_i_3_n_4 ;
  wire \vga_rom_addr_reg[0]_i_3_n_5 ;
  wire \vga_rom_addr_reg[0]_i_3_n_6 ;
  wire \vga_rom_addr_reg[0]_i_3_n_7 ;
  wire \vga_rom_addr_reg[12]_i_1_n_1 ;
  wire \vga_rom_addr_reg[12]_i_1_n_2 ;
  wire \vga_rom_addr_reg[12]_i_1_n_3 ;
  wire \vga_rom_addr_reg[12]_i_1_n_4 ;
  wire \vga_rom_addr_reg[12]_i_1_n_5 ;
  wire \vga_rom_addr_reg[12]_i_1_n_6 ;
  wire \vga_rom_addr_reg[12]_i_1_n_7 ;
  wire \vga_rom_addr_reg[4]_i_1_n_0 ;
  wire \vga_rom_addr_reg[4]_i_1_n_1 ;
  wire \vga_rom_addr_reg[4]_i_1_n_2 ;
  wire \vga_rom_addr_reg[4]_i_1_n_3 ;
  wire \vga_rom_addr_reg[4]_i_1_n_4 ;
  wire \vga_rom_addr_reg[4]_i_1_n_5 ;
  wire \vga_rom_addr_reg[4]_i_1_n_6 ;
  wire \vga_rom_addr_reg[4]_i_1_n_7 ;
  wire \vga_rom_addr_reg[8]_i_1_n_0 ;
  wire \vga_rom_addr_reg[8]_i_1_n_1 ;
  wire \vga_rom_addr_reg[8]_i_1_n_2 ;
  wire \vga_rom_addr_reg[8]_i_1_n_3 ;
  wire \vga_rom_addr_reg[8]_i_1_n_4 ;
  wire \vga_rom_addr_reg[8]_i_1_n_5 ;
  wire \vga_rom_addr_reg[8]_i_1_n_6 ;
  wire \vga_rom_addr_reg[8]_i_1_n_7 ;
  wire [15:0]vga_rom_data;
  wire vsync;
  wire vsync_OBUF;
  wire [3:3]\NLW_vga_rom_addr_reg[12]_i_1_CO_UNCONNECTED ;

  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    cnt_clk_i_1
       (.I0(cnt_clk),
        .O(cnt_clk_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cnt_clk_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt_clk_i_1_n_0),
        .Q(cnt_clk),
        .R(1'b0));
  OBUF \disp_RGB_OBUF[0]_inst 
       (.I(disp_RGB_OBUF[0]),
        .O(disp_RGB[0]));
  OBUF \disp_RGB_OBUF[10]_inst 
       (.I(disp_RGB_OBUF[2]),
        .O(disp_RGB[10]));
  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \disp_RGB_OBUF[10]_inst_i_1 
       (.I0(\disp_RGB_OBUF[11]_inst_i_2_n_0 ),
        .I1(\disp_RGB_OBUF[11]_inst_i_3_n_0 ),
        .I2(vcount_reg__0[5]),
        .I3(vcount_reg__0[9]),
        .I4(\disp_RGB_OBUF[11]_inst_i_4_n_0 ),
        .I5(gray_data_filter[10]),
        .O(disp_RGB_OBUF[2]));
  OBUF \disp_RGB_OBUF[11]_inst 
       (.I(disp_RGB_OBUF[3]),
        .O(disp_RGB[11]));
  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \disp_RGB_OBUF[11]_inst_i_1 
       (.I0(\disp_RGB_OBUF[11]_inst_i_2_n_0 ),
        .I1(\disp_RGB_OBUF[11]_inst_i_3_n_0 ),
        .I2(vcount_reg__0[5]),
        .I3(vcount_reg__0[9]),
        .I4(\disp_RGB_OBUF[11]_inst_i_4_n_0 ),
        .I5(gray_data_filter[11]),
        .O(disp_RGB_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \disp_RGB_OBUF[11]_inst_i_2 
       (.I0(vcount_reg__0[8]),
        .I1(vcount_reg__0[6]),
        .I2(vcount_reg__0[7]),
        .O(\disp_RGB_OBUF[11]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \disp_RGB_OBUF[11]_inst_i_3 
       (.I0(vcount_reg__0[3]),
        .I1(vcount_reg__0[2]),
        .I2(vcount_reg__0[4]),
        .I3(vcount_reg__0[1]),
        .O(\disp_RGB_OBUF[11]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55575555EEEAEEEE)) 
    \disp_RGB_OBUF[11]_inst_i_4 
       (.I0(hcount_reg__0[8]),
        .I1(hcount_reg__0[7]),
        .I2(hcount_reg__0[4]),
        .I3(\vcount[9]_i_5_n_0 ),
        .I4(\disp_RGB_OBUF[11]_inst_i_5_n_0 ),
        .I5(hcount_reg__0[9]),
        .O(\disp_RGB_OBUF[11]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \disp_RGB_OBUF[11]_inst_i_5 
       (.I0(hcount_reg__0[1]),
        .I1(hcount_reg__0[0]),
        .I2(hcount_reg__0[2]),
        .I3(hcount_reg__0[3]),
        .O(\disp_RGB_OBUF[11]_inst_i_5_n_0 ));
  OBUF \disp_RGB_OBUF[1]_inst 
       (.I(disp_RGB_OBUF[1]),
        .O(disp_RGB[1]));
  OBUF \disp_RGB_OBUF[2]_inst 
       (.I(disp_RGB_OBUF[2]),
        .O(disp_RGB[2]));
  OBUF \disp_RGB_OBUF[3]_inst 
       (.I(disp_RGB_OBUF[3]),
        .O(disp_RGB[3]));
  OBUF \disp_RGB_OBUF[4]_inst 
       (.I(disp_RGB_OBUF[0]),
        .O(disp_RGB[4]));
  OBUF \disp_RGB_OBUF[5]_inst 
       (.I(disp_RGB_OBUF[1]),
        .O(disp_RGB[5]));
  OBUF \disp_RGB_OBUF[6]_inst 
       (.I(disp_RGB_OBUF[2]),
        .O(disp_RGB[6]));
  OBUF \disp_RGB_OBUF[7]_inst 
       (.I(disp_RGB_OBUF[3]),
        .O(disp_RGB[7]));
  OBUF \disp_RGB_OBUF[8]_inst 
       (.I(disp_RGB_OBUF[0]),
        .O(disp_RGB[8]));
  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \disp_RGB_OBUF[8]_inst_i_1 
       (.I0(\disp_RGB_OBUF[11]_inst_i_2_n_0 ),
        .I1(\disp_RGB_OBUF[11]_inst_i_3_n_0 ),
        .I2(vcount_reg__0[5]),
        .I3(vcount_reg__0[9]),
        .I4(\disp_RGB_OBUF[11]_inst_i_4_n_0 ),
        .I5(gray_data_filter[8]),
        .O(disp_RGB_OBUF[0]));
  OBUF \disp_RGB_OBUF[9]_inst 
       (.I(disp_RGB_OBUF[1]),
        .O(disp_RGB[9]));
  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \disp_RGB_OBUF[9]_inst_i_1 
       (.I0(\disp_RGB_OBUF[11]_inst_i_2_n_0 ),
        .I1(\disp_RGB_OBUF[11]_inst_i_3_n_0 ),
        .I2(vcount_reg__0[5]),
        .I3(vcount_reg__0[9]),
        .I4(\disp_RGB_OBUF[11]_inst_i_4_n_0 ),
        .I5(gray_data_filter[9]),
        .O(disp_RGB_OBUF[1]));
  FDSE #(
    .INIT(1'b1)) 
    \gray_data_filter_reg[10] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(gray_data0[2]),
        .Q(gray_data_filter[10]),
        .S(u_Img_Processor_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \gray_data_filter_reg[11] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(gray_data0[3]),
        .Q(gray_data_filter[11]),
        .S(u_Img_Processor_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \gray_data_filter_reg[8] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(gray_data0[0]),
        .Q(gray_data_filter[8]),
        .S(u_Img_Processor_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \gray_data_filter_reg[9] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(gray_data0[1]),
        .Q(gray_data_filter[9]),
        .S(u_Img_Processor_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \hcount[0]_i_1 
       (.I0(hcount_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hcount[1]_i_1 
       (.I0(hcount_reg__0[0]),
        .I1(hcount_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \hcount[2]_i_1 
       (.I0(hcount_reg__0[1]),
        .I1(hcount_reg__0[0]),
        .I2(hcount_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \hcount[3]_i_1 
       (.I0(hcount_reg__0[1]),
        .I1(hcount_reg__0[0]),
        .I2(hcount_reg__0[2]),
        .I3(hcount_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \hcount[4]_i_1 
       (.I0(hcount_reg__0[3]),
        .I1(hcount_reg__0[2]),
        .I2(hcount_reg__0[0]),
        .I3(hcount_reg__0[1]),
        .I4(hcount_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \hcount[5]_i_1 
       (.I0(hcount_reg__0[4]),
        .I1(hcount_reg__0[1]),
        .I2(hcount_reg__0[0]),
        .I3(hcount_reg__0[2]),
        .I4(hcount_reg__0[3]),
        .I5(hcount_reg__0[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \hcount[6]_i_1 
       (.I0(hcount_reg__0[5]),
        .I1(\hcount[9]_i_3_n_0 ),
        .I2(hcount_reg__0[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \hcount[7]_i_1 
       (.I0(hcount_reg__0[6]),
        .I1(\hcount[9]_i_3_n_0 ),
        .I2(hcount_reg__0[5]),
        .I3(hcount_reg__0[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \hcount[8]_i_1 
       (.I0(hcount_reg__0[6]),
        .I1(hcount_reg__0[7]),
        .I2(\hcount[9]_i_3_n_0 ),
        .I3(hcount_reg__0[5]),
        .I4(hcount_reg__0[8]),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \hcount[9]_i_1 
       (.I0(hcount_reg__0[5]),
        .I1(hcount_reg__0[6]),
        .I2(hcount_reg__0[9]),
        .I3(hcount_reg__0[8]),
        .I4(hcount_reg__0[7]),
        .I5(\hcount[9]_i_3_n_0 ),
        .O(hcount_ov));
  LUT6 #(
    .INIT(64'hCC6CCCCCCCCCCCCC)) 
    \hcount[9]_i_2 
       (.I0(hcount_reg__0[8]),
        .I1(hcount_reg__0[9]),
        .I2(hcount_reg__0[5]),
        .I3(\hcount[9]_i_3_n_0 ),
        .I4(hcount_reg__0[7]),
        .I5(hcount_reg__0[6]),
        .O(p_0_in__0[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \hcount[9]_i_3 
       (.I0(hcount_reg__0[3]),
        .I1(hcount_reg__0[2]),
        .I2(hcount_reg__0[0]),
        .I3(hcount_reg__0[1]),
        .I4(hcount_reg__0[4]),
        .O(\hcount[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[0] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(hcount_reg__0[0]),
        .R(hcount_ov));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[1] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(hcount_reg__0[1]),
        .R(hcount_ov));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[2] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(hcount_reg__0[2]),
        .R(hcount_ov));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[3] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(hcount_reg__0[3]),
        .R(hcount_ov));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[4] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(hcount_reg__0[4]),
        .R(hcount_ov));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[5] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(hcount_reg__0[5]),
        .R(hcount_ov));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[6] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(hcount_reg__0[6]),
        .R(hcount_ov));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[7] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(hcount_reg__0[7]),
        .R(hcount_ov));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[8] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[8]),
        .Q(hcount_reg__0[8]),
        .R(hcount_ov));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[9] 
       (.C(vga_clk_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[9]),
        .Q(hcount_reg__0[9]),
        .R(hcount_ov));
  OBUF hsync_OBUF_inst
       (.I(hsync_OBUF),
        .O(hsync));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    hsync_OBUF_inst_i_1
       (.I0(hcount_reg__0[7]),
        .I1(hcount_reg__0[5]),
        .I2(hcount_reg__0[6]),
        .I3(hcount_reg__0[9]),
        .I4(hcount_reg__0[8]),
        .O(hsync_OBUF));
  (* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *) 
  vga_rom rom
       (.addra(vga_rom_addr_reg),
        .clka(vga_clk_BUFG),
        .douta(vga_rom_data));
  Img_Processor u_Img_Processor
       (.Q(hcount_reg__0[9:3]),
        .douta(vga_rom_data),
        .\mean_value4_reg[10] (gray_data0),
        .\per_clken_r_reg[1] (u_Img_Processor_n_0),
        .\vcount_reg[6] (u_Img_Processor_n_1),
        .vga_clk_BUFG(vga_clk_BUFG),
        .\vga_rom_addr[0]_i_8 (vcount_reg__0[9:3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \vcount[0]_i_1 
       (.I0(vcount_reg__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vcount[1]_i_1 
       (.I0(vcount_reg__0[0]),
        .I1(vcount_reg__0[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \vcount[2]_i_1 
       (.I0(vcount_reg__0[1]),
        .I1(vcount_reg__0[0]),
        .I2(vcount_reg__0[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \vcount[3]_i_1 
       (.I0(vcount_reg__0[2]),
        .I1(vcount_reg__0[0]),
        .I2(vcount_reg__0[1]),
        .I3(vcount_reg__0[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \vcount[4]_i_1 
       (.I0(vcount_reg__0[3]),
        .I1(vcount_reg__0[1]),
        .I2(vcount_reg__0[0]),
        .I3(vcount_reg__0[2]),
        .I4(vcount_reg__0[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \vcount[5]_i_1 
       (.I0(vcount_reg__0[4]),
        .I1(vcount_reg__0[2]),
        .I2(vcount_reg__0[0]),
        .I3(vcount_reg__0[1]),
        .I4(vcount_reg__0[3]),
        .I5(vcount_reg__0[5]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \vcount[6]_i_1 
       (.I0(\vcount[9]_i_7_n_0 ),
        .I1(vcount_reg__0[6]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \vcount[7]_i_1 
       (.I0(vcount_reg__0[6]),
        .I1(\vcount[9]_i_7_n_0 ),
        .I2(vcount_reg__0[7]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \vcount[8]_i_1 
       (.I0(vcount_reg__0[7]),
        .I1(\vcount[9]_i_7_n_0 ),
        .I2(vcount_reg__0[6]),
        .I3(vcount_reg__0[8]),
        .O(p_0_in__1[8]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \vcount[9]_i_1 
       (.I0(\vcount[9]_i_3_n_0 ),
        .I1(\vcount[9]_i_4_n_0 ),
        .I2(\vcount[9]_i_5_n_0 ),
        .I3(vcount_reg__0[0]),
        .I4(\vcount[9]_i_6_n_0 ),
        .I5(\hcount[9]_i_3_n_0 ),
        .O(vcount));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \vcount[9]_i_2 
       (.I0(vcount_reg__0[8]),
        .I1(vcount_reg__0[6]),
        .I2(\vcount[9]_i_7_n_0 ),
        .I3(vcount_reg__0[7]),
        .I4(vcount_reg__0[9]),
        .O(p_0_in__1[9]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \vcount[9]_i_3 
       (.I0(vcount_reg__0[9]),
        .I1(hcount_reg__0[7]),
        .I2(vcount_reg__0[2]),
        .I3(vcount_reg__0[3]),
        .I4(hcount_reg__0[9]),
        .I5(hcount_reg__0[8]),
        .O(\vcount[9]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \vcount[9]_i_4 
       (.I0(vcount_reg__0[1]),
        .I1(vcount_reg__0[4]),
        .O(\vcount[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \vcount[9]_i_5 
       (.I0(hcount_reg__0[5]),
        .I1(hcount_reg__0[6]),
        .O(\vcount[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \vcount[9]_i_6 
       (.I0(vcount_reg__0[7]),
        .I1(vcount_reg__0[6]),
        .I2(vcount_reg__0[8]),
        .I3(vcount_reg__0[5]),
        .O(\vcount[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \vcount[9]_i_7 
       (.I0(vcount_reg__0[4]),
        .I1(vcount_reg__0[2]),
        .I2(vcount_reg__0[0]),
        .I3(vcount_reg__0[1]),
        .I4(vcount_reg__0[3]),
        .I5(vcount_reg__0[5]),
        .O(\vcount[9]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[0] 
       (.C(vga_clk_BUFG),
        .CE(hcount_ov),
        .D(p_0_in__1[0]),
        .Q(vcount_reg__0[0]),
        .R(vcount));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[1] 
       (.C(vga_clk_BUFG),
        .CE(hcount_ov),
        .D(p_0_in__1[1]),
        .Q(vcount_reg__0[1]),
        .R(vcount));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[2] 
       (.C(vga_clk_BUFG),
        .CE(hcount_ov),
        .D(p_0_in__1[2]),
        .Q(vcount_reg__0[2]),
        .R(vcount));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[3] 
       (.C(vga_clk_BUFG),
        .CE(hcount_ov),
        .D(p_0_in__1[3]),
        .Q(vcount_reg__0[3]),
        .R(vcount));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[4] 
       (.C(vga_clk_BUFG),
        .CE(hcount_ov),
        .D(p_0_in__1[4]),
        .Q(vcount_reg__0[4]),
        .R(vcount));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[5] 
       (.C(vga_clk_BUFG),
        .CE(hcount_ov),
        .D(p_0_in__1[5]),
        .Q(vcount_reg__0[5]),
        .R(vcount));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[6] 
       (.C(vga_clk_BUFG),
        .CE(hcount_ov),
        .D(p_0_in__1[6]),
        .Q(vcount_reg__0[6]),
        .R(vcount));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[7] 
       (.C(vga_clk_BUFG),
        .CE(hcount_ov),
        .D(p_0_in__1[7]),
        .Q(vcount_reg__0[7]),
        .R(vcount));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[8] 
       (.C(vga_clk_BUFG),
        .CE(hcount_ov),
        .D(p_0_in__1[8]),
        .Q(vcount_reg__0[8]),
        .R(vcount));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[9] 
       (.C(vga_clk_BUFG),
        .CE(hcount_ov),
        .D(p_0_in__1[9]),
        .Q(vcount_reg__0[9]),
        .R(vcount));
  BUFG vga_clk_BUFG_inst
       (.I(vga_clk),
        .O(vga_clk_BUFG));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    vga_clk_i_1
       (.I0(cnt_clk),
        .I1(vga_clk),
        .O(vga_clk_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vga_clk_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(vga_clk_i_1_n_0),
        .Q(vga_clk),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00080000)) 
    \vga_rom_addr[0]_i_1 
       (.I0(\vga_rom_addr[0]_i_4_n_0 ),
        .I1(\vga_rom_addr[0]_i_5_n_0 ),
        .I2(vcount_reg__0[6]),
        .I3(vcount_reg__0[8]),
        .I4(\vga_rom_addr[0]_i_6_n_0 ),
        .O(vga_rom_addr0));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_rom_addr[0]_i_10 
       (.I0(vga_rom_addr_reg[0]),
        .O(\vga_rom_addr[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \vga_rom_addr[0]_i_11 
       (.I0(hcount_reg__0[0]),
        .I1(hcount_reg__0[2]),
        .O(\vga_rom_addr[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \vga_rom_addr[0]_i_12 
       (.I0(hcount_reg__0[6]),
        .I1(hcount_reg__0[7]),
        .O(\vga_rom_addr[0]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000FEEE)) 
    \vga_rom_addr[0]_i_13 
       (.I0(hcount_reg__0[6]),
        .I1(hcount_reg__0[7]),
        .I2(hcount_reg__0[3]),
        .I3(hcount_reg__0[5]),
        .I4(hcount_reg__0[4]),
        .O(\vga_rom_addr[0]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \vga_rom_addr[0]_i_16 
       (.I0(hcount_reg__0[6]),
        .I1(hcount_reg__0[7]),
        .O(\vga_rom_addr[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FE00F000FE00)) 
    \vga_rom_addr[0]_i_2 
       (.I0(hcount_reg__0[7]),
        .I1(hcount_reg__0[6]),
        .I2(\vga_rom_addr[0]_i_7_n_0 ),
        .I3(u_Img_Processor_n_1),
        .I4(hcount_reg__0[5]),
        .I5(\vga_rom_addr[0]_i_9_n_0 ),
        .O(picture_en));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \vga_rom_addr[0]_i_4 
       (.I0(hcount_reg__0[1]),
        .I1(hcount_reg__0[3]),
        .I2(vcount_reg__0[4]),
        .I3(vcount_reg__0[5]),
        .I4(hcount_reg__0[4]),
        .I5(hcount_reg__0[5]),
        .O(\vga_rom_addr[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \vga_rom_addr[0]_i_5 
       (.I0(\vga_rom_addr[0]_i_11_n_0 ),
        .I1(\vga_rom_addr[0]_i_12_n_0 ),
        .I2(vcount_reg__0[3]),
        .I3(vcount_reg__0[2]),
        .I4(vcount_reg__0[0]),
        .I5(vcount_reg__0[1]),
        .O(\vga_rom_addr[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \vga_rom_addr[0]_i_6 
       (.I0(vcount_reg__0[9]),
        .I1(hcount_reg__0[8]),
        .I2(hcount_reg__0[9]),
        .I3(vcount_reg__0[7]),
        .O(\vga_rom_addr[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h222A)) 
    \vga_rom_addr[0]_i_7 
       (.I0(\vga_rom_addr[0]_i_13_n_0 ),
        .I1(hcount_reg__0[2]),
        .I2(hcount_reg__0[0]),
        .I3(hcount_reg__0[1]),
        .O(\vga_rom_addr[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFC8C8000000C8)) 
    \vga_rom_addr[0]_i_9 
       (.I0(hcount_reg__0[1]),
        .I1(hcount_reg__0[2]),
        .I2(hcount_reg__0[0]),
        .I3(hcount_reg__0[3]),
        .I4(hcount_reg__0[4]),
        .I5(\vga_rom_addr[0]_i_16_n_0 ),
        .O(\vga_rom_addr[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rom_addr_reg[0] 
       (.C(vga_clk_BUFG),
        .CE(picture_en),
        .D(\vga_rom_addr_reg[0]_i_3_n_7 ),
        .Q(vga_rom_addr_reg[0]),
        .R(vga_rom_addr0));
  CARRY4 \vga_rom_addr_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\vga_rom_addr_reg[0]_i_3_n_0 ,\vga_rom_addr_reg[0]_i_3_n_1 ,\vga_rom_addr_reg[0]_i_3_n_2 ,\vga_rom_addr_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\vga_rom_addr_reg[0]_i_3_n_4 ,\vga_rom_addr_reg[0]_i_3_n_5 ,\vga_rom_addr_reg[0]_i_3_n_6 ,\vga_rom_addr_reg[0]_i_3_n_7 }),
        .S({vga_rom_addr_reg[3:1],\vga_rom_addr[0]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rom_addr_reg[10] 
       (.C(vga_clk_BUFG),
        .CE(picture_en),
        .D(\vga_rom_addr_reg[8]_i_1_n_5 ),
        .Q(vga_rom_addr_reg[10]),
        .R(vga_rom_addr0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rom_addr_reg[11] 
       (.C(vga_clk_BUFG),
        .CE(picture_en),
        .D(\vga_rom_addr_reg[8]_i_1_n_4 ),
        .Q(vga_rom_addr_reg[11]),
        .R(vga_rom_addr0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rom_addr_reg[12] 
       (.C(vga_clk_BUFG),
        .CE(picture_en),
        .D(\vga_rom_addr_reg[12]_i_1_n_7 ),
        .Q(vga_rom_addr_reg[12]),
        .R(vga_rom_addr0));
  CARRY4 \vga_rom_addr_reg[12]_i_1 
       (.CI(\vga_rom_addr_reg[8]_i_1_n_0 ),
        .CO({\NLW_vga_rom_addr_reg[12]_i_1_CO_UNCONNECTED [3],\vga_rom_addr_reg[12]_i_1_n_1 ,\vga_rom_addr_reg[12]_i_1_n_2 ,\vga_rom_addr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vga_rom_addr_reg[12]_i_1_n_4 ,\vga_rom_addr_reg[12]_i_1_n_5 ,\vga_rom_addr_reg[12]_i_1_n_6 ,\vga_rom_addr_reg[12]_i_1_n_7 }),
        .S(vga_rom_addr_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rom_addr_reg[13] 
       (.C(vga_clk_BUFG),
        .CE(picture_en),
        .D(\vga_rom_addr_reg[12]_i_1_n_6 ),
        .Q(vga_rom_addr_reg[13]),
        .R(vga_rom_addr0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rom_addr_reg[14] 
       (.C(vga_clk_BUFG),
        .CE(picture_en),
        .D(\vga_rom_addr_reg[12]_i_1_n_5 ),
        .Q(vga_rom_addr_reg[14]),
        .R(vga_rom_addr0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rom_addr_reg[15] 
       (.C(vga_clk_BUFG),
        .CE(picture_en),
        .D(\vga_rom_addr_reg[12]_i_1_n_4 ),
        .Q(vga_rom_addr_reg[15]),
        .R(vga_rom_addr0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rom_addr_reg[1] 
       (.C(vga_clk_BUFG),
        .CE(picture_en),
        .D(\vga_rom_addr_reg[0]_i_3_n_6 ),
        .Q(vga_rom_addr_reg[1]),
        .R(vga_rom_addr0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rom_addr_reg[2] 
       (.C(vga_clk_BUFG),
        .CE(picture_en),
        .D(\vga_rom_addr_reg[0]_i_3_n_5 ),
        .Q(vga_rom_addr_reg[2]),
        .R(vga_rom_addr0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rom_addr_reg[3] 
       (.C(vga_clk_BUFG),
        .CE(picture_en),
        .D(\vga_rom_addr_reg[0]_i_3_n_4 ),
        .Q(vga_rom_addr_reg[3]),
        .R(vga_rom_addr0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rom_addr_reg[4] 
       (.C(vga_clk_BUFG),
        .CE(picture_en),
        .D(\vga_rom_addr_reg[4]_i_1_n_7 ),
        .Q(vga_rom_addr_reg[4]),
        .R(vga_rom_addr0));
  CARRY4 \vga_rom_addr_reg[4]_i_1 
       (.CI(\vga_rom_addr_reg[0]_i_3_n_0 ),
        .CO({\vga_rom_addr_reg[4]_i_1_n_0 ,\vga_rom_addr_reg[4]_i_1_n_1 ,\vga_rom_addr_reg[4]_i_1_n_2 ,\vga_rom_addr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vga_rom_addr_reg[4]_i_1_n_4 ,\vga_rom_addr_reg[4]_i_1_n_5 ,\vga_rom_addr_reg[4]_i_1_n_6 ,\vga_rom_addr_reg[4]_i_1_n_7 }),
        .S(vga_rom_addr_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rom_addr_reg[5] 
       (.C(vga_clk_BUFG),
        .CE(picture_en),
        .D(\vga_rom_addr_reg[4]_i_1_n_6 ),
        .Q(vga_rom_addr_reg[5]),
        .R(vga_rom_addr0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rom_addr_reg[6] 
       (.C(vga_clk_BUFG),
        .CE(picture_en),
        .D(\vga_rom_addr_reg[4]_i_1_n_5 ),
        .Q(vga_rom_addr_reg[6]),
        .R(vga_rom_addr0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rom_addr_reg[7] 
       (.C(vga_clk_BUFG),
        .CE(picture_en),
        .D(\vga_rom_addr_reg[4]_i_1_n_4 ),
        .Q(vga_rom_addr_reg[7]),
        .R(vga_rom_addr0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rom_addr_reg[8] 
       (.C(vga_clk_BUFG),
        .CE(picture_en),
        .D(\vga_rom_addr_reg[8]_i_1_n_7 ),
        .Q(vga_rom_addr_reg[8]),
        .R(vga_rom_addr0));
  CARRY4 \vga_rom_addr_reg[8]_i_1 
       (.CI(\vga_rom_addr_reg[4]_i_1_n_0 ),
        .CO({\vga_rom_addr_reg[8]_i_1_n_0 ,\vga_rom_addr_reg[8]_i_1_n_1 ,\vga_rom_addr_reg[8]_i_1_n_2 ,\vga_rom_addr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vga_rom_addr_reg[8]_i_1_n_4 ,\vga_rom_addr_reg[8]_i_1_n_5 ,\vga_rom_addr_reg[8]_i_1_n_6 ,\vga_rom_addr_reg[8]_i_1_n_7 }),
        .S(vga_rom_addr_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rom_addr_reg[9] 
       (.C(vga_clk_BUFG),
        .CE(picture_en),
        .D(\vga_rom_addr_reg[8]_i_1_n_6 ),
        .Q(vga_rom_addr_reg[9]),
        .R(vga_rom_addr0));
  OBUF vsync_OBUF_inst
       (.I(vsync_OBUF),
        .O(vsync));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    vsync_OBUF_inst_i_1
       (.I0(\disp_RGB_OBUF[11]_inst_i_3_n_0 ),
        .I1(vcount_reg__0[7]),
        .I2(vcount_reg__0[6]),
        .I3(vcount_reg__0[8]),
        .I4(vcount_reg__0[5]),
        .I5(vcount_reg__0[9]),
        .O(vsync_OBUF));
endmodule

(* CHECK_LICENSE_TYPE = "vga_rom,blk_mem_gen_v8_4_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *) 
module vga_rom
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [15:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [15:0]addra;
  wire clka;
  wire [15:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [15:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "16" *) 
  (* C_ADDRB_WIDTH = "16" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "2" *) 
  (* C_COUNT_36K_BRAM = "18" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     15.89039 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "vga_rom.mem" *) 
  (* C_INIT_FILE_NAME = "vga_rom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "40000" *) 
  (* C_READ_DEPTH_B = "40000" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "40000" *) 
  (* C_WRITE_DEPTH_B = "40000" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  vga_rom_blk_mem_gen_v8_4_2 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[15:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[15:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "00000000" *) (* C_DEFAULT_DATA = "00000000" *) 
(* C_DEPTH = "201" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "00000000" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "8" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module Shift_RAM_3X3_8bit_c_shift_ram_v12_0_12
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [7:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [7:0]Q;

  wire CLK;
  wire [7:0]D;
  wire [7:0]Q;

  (* C_DEFAULT_DATA = "00000000" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_addr_width = "4" *) 
  (* c_ainit_val = "00000000" *) 
  (* c_depth = "201" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "00000000" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "8" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Shift_RAM_3X3_8bit_c_shift_ram_v12_0_12_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b0),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* ORIG_REF_NAME = "bindec" *) 
module vga_rom_bindec
   (ena_array,
    addra);
  output [8:0]ena_array;
  input [3:0]addra;

  wire [3:0]addra;
  wire [8:0]ena_array;

  LUT4 #(
    .INIT(16'h0001)) 
    ENOUT
       (.I0(addra[2]),
        .I1(addra[3]),
        .I2(addra[1]),
        .I3(addra[0]),
        .O(ena_array[0]));
  LUT4 #(
    .INIT(16'h0010)) 
    \ENOUT_inferred__0/i_ 
       (.I0(addra[2]),
        .I1(addra[3]),
        .I2(addra[0]),
        .I3(addra[1]),
        .O(ena_array[1]));
  LUT4 #(
    .INIT(16'h0010)) 
    \ENOUT_inferred__1/i_ 
       (.I0(addra[2]),
        .I1(addra[3]),
        .I2(addra[1]),
        .I3(addra[0]),
        .O(ena_array[2]));
  LUT4 #(
    .INIT(16'h0010)) 
    \ENOUT_inferred__3/i_ 
       (.I0(addra[3]),
        .I1(addra[1]),
        .I2(addra[2]),
        .I3(addra[0]),
        .O(ena_array[3]));
  LUT4 #(
    .INIT(16'h1000)) 
    \ENOUT_inferred__4/i_ 
       (.I0(addra[3]),
        .I1(addra[1]),
        .I2(addra[2]),
        .I3(addra[0]),
        .O(ena_array[4]));
  LUT4 #(
    .INIT(16'h1000)) 
    \ENOUT_inferred__5/i_ 
       (.I0(addra[3]),
        .I1(addra[0]),
        .I2(addra[2]),
        .I3(addra[1]),
        .O(ena_array[5]));
  LUT4 #(
    .INIT(16'h4000)) 
    \ENOUT_inferred__6/i_ 
       (.I0(addra[3]),
        .I1(addra[2]),
        .I2(addra[1]),
        .I3(addra[0]),
        .O(ena_array[6]));
  LUT4 #(
    .INIT(16'h0010)) 
    \ENOUT_inferred__7/i_ 
       (.I0(addra[2]),
        .I1(addra[1]),
        .I2(addra[3]),
        .I3(addra[0]),
        .O(ena_array[7]));
  LUT4 #(
    .INIT(16'h1000)) 
    \ENOUT_inferred__8/i_ 
       (.I0(addra[2]),
        .I1(addra[1]),
        .I2(addra[3]),
        .I3(addra[0]),
        .O(ena_array[8]));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module vga_rom_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [15:0]addra;

  wire [15:0]addra;
  wire clka;
  wire [15:0]douta;
  wire [9:0]ena_array;
  wire [8:0]p_11_out;
  wire [8:0]p_15_out;
  wire [8:0]p_19_out;
  wire [8:0]p_23_out;
  wire [8:0]p_27_out;
  wire [8:0]p_31_out;
  wire [8:0]p_35_out;
  wire [8:0]p_39_out;
  wire [8:0]p_3_out;
  wire [8:0]p_7_out;
  wire ram_douta;
  wire \ram_ena_inferred__0/i__n_0 ;
  wire ram_ena_n_0;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[3].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[6].ram.r_n_0 ;
  wire \ramloop[6].ram.r_n_1 ;
  wire \ramloop[6].ram.r_n_2 ;
  wire \ramloop[6].ram.r_n_3 ;
  wire \ramloop[7].ram.r_n_0 ;
  wire \ramloop[8].ram.r_n_0 ;
  wire \ramloop[9].ram.r_n_0 ;

  vga_rom_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[15:12]),
        .ena_array({ena_array[9:4],ena_array[2:0]}));
  vga_rom_blk_mem_gen_mux \has_mux_a.A 
       (.DOADO(\ramloop[1].ram.r_n_0 ),
        .addra(addra[15:12]),
        .clka(clka),
        .douta(douta),
        .\douta[0] (ram_douta),
        .\douta[1] (\ramloop[2].ram.r_n_0 ),
        .\douta[2] ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 }),
        .\douta[2]_0 (\ramloop[4].ram.r_n_0 ),
        .\douta[3] (\ramloop[5].ram.r_n_0 ),
        .\douta[4] (\ramloop[7].ram.r_n_0 ),
        .\douta[5] (\ramloop[8].ram.r_n_0 ),
        .\douta[6] ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 }),
        .\douta[6]_0 (\ramloop[9].ram.r_n_0 ),
        .p_11_out(p_11_out),
        .p_15_out(p_15_out),
        .p_19_out(p_19_out),
        .p_23_out(p_23_out),
        .p_27_out(p_27_out),
        .p_31_out(p_31_out),
        .p_35_out(p_35_out),
        .p_39_out(p_39_out),
        .p_3_out(p_3_out),
        .p_7_out(p_7_out));
  LUT1 #(
    .INIT(2'h1)) 
    ram_ena
       (.I0(addra[15]),
        .O(ram_ena_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    \ram_ena_inferred__0/i_ 
       (.I0(addra[14]),
        .I1(addra[15]),
        .O(\ram_ena_inferred__0/i__n_0 ));
  vga_rom_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (ram_douta),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (ram_ena_n_0),
        .addra(addra[14:0]),
        .clka(clka));
  vga_rom_blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[0]),
        .p_39_out(p_39_out));
  vga_rom_blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[1]),
        .p_35_out(p_35_out));
  vga_rom_blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[2]),
        .p_31_out(p_31_out));
  vga_rom_blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.addra(addra),
        .clka(clka),
        .p_27_out(p_27_out));
  vga_rom_blk_mem_gen_prim_width__parameterized13 \ramloop[14].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[4]),
        .p_23_out(p_23_out));
  vga_rom_blk_mem_gen_prim_width__parameterized14 \ramloop[15].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[5]),
        .p_19_out(p_19_out));
  vga_rom_blk_mem_gen_prim_width__parameterized15 \ramloop[16].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[6]),
        .p_15_out(p_15_out));
  vga_rom_blk_mem_gen_prim_width__parameterized16 \ramloop[17].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[7]),
        .p_11_out(p_11_out));
  vga_rom_blk_mem_gen_prim_width__parameterized17 \ramloop[18].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[8]),
        .p_7_out(p_7_out));
  vga_rom_blk_mem_gen_prim_width__parameterized18 \ramloop[19].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[9]),
        .p_3_out(p_3_out));
  vga_rom_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram (\ram_ena_inferred__0/i__n_0 ),
        .DOADO(\ramloop[1].ram.r_n_0 ),
        .addra(addra[13:0]),
        .clka(clka));
  vga_rom_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[2].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (ram_ena_n_0),
        .addra(addra[14:0]),
        .clka(clka));
  vga_rom_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 }),
        .addra(addra),
        .addra_15_sp_1(\ramloop[3].ram.r_n_2 ),
        .clka(clka));
  vga_rom_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[4].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (ram_ena_n_0),
        .addra(addra[14:0]),
        .clka(clka));
  vga_rom_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[5].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (ram_ena_n_0),
        .addra(addra[14:0]),
        .clka(clka));
  vga_rom_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[3].ram.r_n_2 ),
        .addra(addra[12:0]),
        .clka(clka));
  vga_rom_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[7].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (ram_ena_n_0),
        .addra(addra[14:0]),
        .clka(clka));
  vga_rom_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[8].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (ram_ena_n_0),
        .addra(addra[14:0]),
        .clka(clka));
  vga_rom_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[9].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (ram_ena_n_0),
        .addra(addra[14:0]),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module vga_rom_blk_mem_gen_mux
   (douta,
    p_3_out,
    p_7_out,
    addra,
    clka,
    DOADO,
    \douta[0] ,
    \douta[2] ,
    \douta[1] ,
    \douta[2]_0 ,
    \douta[6] ,
    \douta[3] ,
    \douta[4] ,
    \douta[5] ,
    \douta[6]_0 ,
    p_27_out,
    p_31_out,
    p_35_out,
    p_39_out,
    p_11_out,
    p_15_out,
    p_19_out,
    p_23_out);
  output [15:0]douta;
  input [8:0]p_3_out;
  input [8:0]p_7_out;
  input [3:0]addra;
  input clka;
  input [0:0]DOADO;
  input [0:0]\douta[0] ;
  input [1:0]\douta[2] ;
  input [0:0]\douta[1] ;
  input [0:0]\douta[2]_0 ;
  input [3:0]\douta[6] ;
  input [0:0]\douta[3] ;
  input [0:0]\douta[4] ;
  input [0:0]\douta[5] ;
  input [0:0]\douta[6]_0 ;
  input [8:0]p_27_out;
  input [8:0]p_31_out;
  input [8:0]p_35_out;
  input [8:0]p_39_out;
  input [8:0]p_11_out;
  input [8:0]p_15_out;
  input [8:0]p_19_out;
  input [8:0]p_23_out;

  wire [0:0]DOADO;
  wire [3:0]addra;
  wire clka;
  wire [15:0]douta;
  wire [0:0]\douta[0] ;
  wire \douta[10]_INST_0_i_1_n_0 ;
  wire \douta[10]_INST_0_i_2_n_0 ;
  wire \douta[10]_INST_0_i_3_n_0 ;
  wire \douta[11]_INST_0_i_1_n_0 ;
  wire \douta[11]_INST_0_i_2_n_0 ;
  wire \douta[11]_INST_0_i_3_n_0 ;
  wire \douta[12]_INST_0_i_1_n_0 ;
  wire \douta[12]_INST_0_i_2_n_0 ;
  wire \douta[12]_INST_0_i_3_n_0 ;
  wire \douta[13]_INST_0_i_1_n_0 ;
  wire \douta[13]_INST_0_i_2_n_0 ;
  wire \douta[13]_INST_0_i_3_n_0 ;
  wire \douta[14]_INST_0_i_1_n_0 ;
  wire \douta[14]_INST_0_i_2_n_0 ;
  wire \douta[14]_INST_0_i_3_n_0 ;
  wire \douta[15]_INST_0_i_1_n_0 ;
  wire \douta[15]_INST_0_i_2_n_0 ;
  wire \douta[15]_INST_0_i_3_n_0 ;
  wire [0:0]\douta[1] ;
  wire [1:0]\douta[2] ;
  wire [0:0]\douta[2]_0 ;
  wire [0:0]\douta[3] ;
  wire [0:0]\douta[4] ;
  wire [0:0]\douta[5] ;
  wire [3:0]\douta[6] ;
  wire [0:0]\douta[6]_0 ;
  wire \douta[7]_INST_0_i_1_n_0 ;
  wire \douta[7]_INST_0_i_2_n_0 ;
  wire \douta[7]_INST_0_i_3_n_0 ;
  wire \douta[8]_INST_0_i_1_n_0 ;
  wire \douta[8]_INST_0_i_2_n_0 ;
  wire \douta[8]_INST_0_i_3_n_0 ;
  wire \douta[9]_INST_0_i_1_n_0 ;
  wire \douta[9]_INST_0_i_2_n_0 ;
  wire \douta[9]_INST_0_i_3_n_0 ;
  wire [8:0]p_11_out;
  wire [8:0]p_15_out;
  wire [8:0]p_19_out;
  wire [8:0]p_23_out;
  wire [8:0]p_27_out;
  wire [8:0]p_31_out;
  wire [8:0]p_35_out;
  wire [8:0]p_39_out;
  wire [8:0]p_3_out;
  wire [8:0]p_7_out;
  wire [3:0]sel_pipe;
  wire [3:0]sel_pipe_d1;

  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[0]_INST_0 
       (.I0(DOADO),
        .I1(sel_pipe_d1[2]),
        .I2(sel_pipe_d1[3]),
        .I3(\douta[0] ),
        .O(douta[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[10]_INST_0 
       (.I0(\douta[10]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[10]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[10]_INST_0_i_3_n_0 ),
        .O(douta[10]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[10]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(p_3_out[3]),
        .I2(sel_pipe_d1[0]),
        .I3(p_7_out[3]),
        .I4(sel_pipe_d1[2]),
        .O(\douta[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[10]_INST_0_i_2 
       (.I0(p_11_out[3]),
        .I1(p_15_out[3]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[3]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[3]),
        .O(\douta[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[10]_INST_0_i_3 
       (.I0(p_27_out[3]),
        .I1(p_31_out[3]),
        .I2(sel_pipe_d1[1]),
        .I3(p_35_out[3]),
        .I4(sel_pipe_d1[0]),
        .I5(p_39_out[3]),
        .O(\douta[10]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[11]_INST_0 
       (.I0(\douta[11]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[11]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[11]_INST_0_i_3_n_0 ),
        .O(douta[11]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[11]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(p_3_out[4]),
        .I2(sel_pipe_d1[0]),
        .I3(p_7_out[4]),
        .I4(sel_pipe_d1[2]),
        .O(\douta[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[11]_INST_0_i_2 
       (.I0(p_11_out[4]),
        .I1(p_15_out[4]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[4]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[4]),
        .O(\douta[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[11]_INST_0_i_3 
       (.I0(p_27_out[4]),
        .I1(p_31_out[4]),
        .I2(sel_pipe_d1[1]),
        .I3(p_35_out[4]),
        .I4(sel_pipe_d1[0]),
        .I5(p_39_out[4]),
        .O(\douta[11]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[12]_INST_0 
       (.I0(\douta[12]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[12]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[12]_INST_0_i_3_n_0 ),
        .O(douta[12]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[12]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(p_3_out[5]),
        .I2(sel_pipe_d1[0]),
        .I3(p_7_out[5]),
        .I4(sel_pipe_d1[2]),
        .O(\douta[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[12]_INST_0_i_2 
       (.I0(p_11_out[5]),
        .I1(p_15_out[5]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[5]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[5]),
        .O(\douta[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[12]_INST_0_i_3 
       (.I0(p_27_out[5]),
        .I1(p_31_out[5]),
        .I2(sel_pipe_d1[1]),
        .I3(p_35_out[5]),
        .I4(sel_pipe_d1[0]),
        .I5(p_39_out[5]),
        .O(\douta[12]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[13]_INST_0 
       (.I0(\douta[13]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[13]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[13]_INST_0_i_3_n_0 ),
        .O(douta[13]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[13]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(p_3_out[6]),
        .I2(sel_pipe_d1[0]),
        .I3(p_7_out[6]),
        .I4(sel_pipe_d1[2]),
        .O(\douta[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[13]_INST_0_i_2 
       (.I0(p_11_out[6]),
        .I1(p_15_out[6]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[6]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[6]),
        .O(\douta[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[13]_INST_0_i_3 
       (.I0(p_27_out[6]),
        .I1(p_31_out[6]),
        .I2(sel_pipe_d1[1]),
        .I3(p_35_out[6]),
        .I4(sel_pipe_d1[0]),
        .I5(p_39_out[6]),
        .O(\douta[13]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[14]_INST_0 
       (.I0(\douta[14]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[14]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[14]_INST_0_i_3_n_0 ),
        .O(douta[14]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[14]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(p_3_out[7]),
        .I2(sel_pipe_d1[0]),
        .I3(p_7_out[7]),
        .I4(sel_pipe_d1[2]),
        .O(\douta[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[14]_INST_0_i_2 
       (.I0(p_11_out[7]),
        .I1(p_15_out[7]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[7]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[7]),
        .O(\douta[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[14]_INST_0_i_3 
       (.I0(p_27_out[7]),
        .I1(p_31_out[7]),
        .I2(sel_pipe_d1[1]),
        .I3(p_35_out[7]),
        .I4(sel_pipe_d1[0]),
        .I5(p_39_out[7]),
        .O(\douta[14]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[15]_INST_0 
       (.I0(\douta[15]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[15]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[15]_INST_0_i_3_n_0 ),
        .O(douta[15]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[15]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(p_3_out[8]),
        .I2(sel_pipe_d1[0]),
        .I3(p_7_out[8]),
        .I4(sel_pipe_d1[2]),
        .O(\douta[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[15]_INST_0_i_2 
       (.I0(p_11_out[8]),
        .I1(p_15_out[8]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[8]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[8]),
        .O(\douta[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[15]_INST_0_i_3 
       (.I0(p_27_out[8]),
        .I1(p_31_out[8]),
        .I2(sel_pipe_d1[1]),
        .I3(p_35_out[8]),
        .I4(sel_pipe_d1[0]),
        .I5(p_39_out[8]),
        .O(\douta[15]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[1]_INST_0 
       (.I0(sel_pipe_d1[1]),
        .I1(\douta[2] [0]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[3]),
        .I4(\douta[1] ),
        .O(douta[1]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[2]_INST_0 
       (.I0(sel_pipe_d1[1]),
        .I1(\douta[2] [1]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[3]),
        .I4(\douta[2]_0 ),
        .O(douta[2]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[3]_INST_0 
       (.I0(sel_pipe_d1[1]),
        .I1(\douta[6] [0]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[3]),
        .I4(\douta[3] ),
        .O(douta[3]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[4]_INST_0 
       (.I0(sel_pipe_d1[1]),
        .I1(\douta[6] [1]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[3]),
        .I4(\douta[4] ),
        .O(douta[4]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[5]_INST_0 
       (.I0(sel_pipe_d1[1]),
        .I1(\douta[6] [2]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[3]),
        .I4(\douta[5] ),
        .O(douta[5]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[6]_INST_0 
       (.I0(sel_pipe_d1[1]),
        .I1(\douta[6] [3]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[3]),
        .I4(\douta[6]_0 ),
        .O(douta[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[7]_INST_0 
       (.I0(\douta[7]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[7]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[7]_INST_0_i_3_n_0 ),
        .O(douta[7]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[7]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(p_3_out[0]),
        .I2(sel_pipe_d1[0]),
        .I3(p_7_out[0]),
        .I4(sel_pipe_d1[2]),
        .O(\douta[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_2 
       (.I0(p_11_out[0]),
        .I1(p_15_out[0]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[0]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[0]),
        .O(\douta[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_3 
       (.I0(p_27_out[0]),
        .I1(p_31_out[0]),
        .I2(sel_pipe_d1[1]),
        .I3(p_35_out[0]),
        .I4(sel_pipe_d1[0]),
        .I5(p_39_out[0]),
        .O(\douta[7]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[8]_INST_0 
       (.I0(\douta[8]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[8]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[8]_INST_0_i_3_n_0 ),
        .O(douta[8]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[8]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(p_3_out[1]),
        .I2(sel_pipe_d1[0]),
        .I3(p_7_out[1]),
        .I4(sel_pipe_d1[2]),
        .O(\douta[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[8]_INST_0_i_2 
       (.I0(p_11_out[1]),
        .I1(p_15_out[1]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[1]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[1]),
        .O(\douta[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[8]_INST_0_i_3 
       (.I0(p_27_out[1]),
        .I1(p_31_out[1]),
        .I2(sel_pipe_d1[1]),
        .I3(p_35_out[1]),
        .I4(sel_pipe_d1[0]),
        .I5(p_39_out[1]),
        .O(\douta[8]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[9]_INST_0 
       (.I0(\douta[9]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[9]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[9]_INST_0_i_3_n_0 ),
        .O(douta[9]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[9]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(p_3_out[2]),
        .I2(sel_pipe_d1[0]),
        .I3(p_7_out[2]),
        .I4(sel_pipe_d1[2]),
        .O(\douta[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[9]_INST_0_i_2 
       (.I0(p_11_out[2]),
        .I1(p_15_out[2]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[2]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[2]),
        .O(\douta[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[9]_INST_0_i_3 
       (.I0(p_27_out[2]),
        .I1(p_31_out[2]),
        .I2(sel_pipe_d1[1]),
        .I3(p_35_out[2]),
        .I4(sel_pipe_d1[0]),
        .I5(p_39_out[2]),
        .O(\douta[9]_INST_0_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[2]),
        .Q(sel_pipe_d1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[3]),
        .Q(sel_pipe_d1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[3]),
        .Q(sel_pipe[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module vga_rom_blk_mem_gen_prim_width
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [14:0]addra;
  wire clka;

  vga_rom_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module vga_rom_blk_mem_gen_prim_width__parameterized0
   (DOADO,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    addra);
  output [0:0]DOADO;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input [13:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [0:0]DOADO;
  wire [13:0]addra;
  wire clka;

  vga_rom_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ),
        .DOADO(DOADO),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module vga_rom_blk_mem_gen_prim_width__parameterized1
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [14:0]addra;
  wire clka;

  vga_rom_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module vga_rom_blk_mem_gen_prim_width__parameterized10
   (p_35_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_35_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_35_out;

  vga_rom_blk_mem_gen_prim_wrapper_init__parameterized10 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_35_out(p_35_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module vga_rom_blk_mem_gen_prim_width__parameterized11
   (p_31_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_31_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_31_out;

  vga_rom_blk_mem_gen_prim_wrapper_init__parameterized11 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_31_out(p_31_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module vga_rom_blk_mem_gen_prim_width__parameterized12
   (p_27_out,
    clka,
    addra);
  output [8:0]p_27_out;
  input clka;
  input [15:0]addra;

  wire [15:0]addra;
  wire clka;
  wire [8:0]p_27_out;

  vga_rom_blk_mem_gen_prim_wrapper_init__parameterized12 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .p_27_out(p_27_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module vga_rom_blk_mem_gen_prim_width__parameterized13
   (p_23_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_23_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_23_out;

  vga_rom_blk_mem_gen_prim_wrapper_init__parameterized13 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_23_out(p_23_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module vga_rom_blk_mem_gen_prim_width__parameterized14
   (p_19_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_19_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_19_out;

  vga_rom_blk_mem_gen_prim_wrapper_init__parameterized14 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_19_out(p_19_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module vga_rom_blk_mem_gen_prim_width__parameterized15
   (p_15_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_15_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_15_out;

  vga_rom_blk_mem_gen_prim_wrapper_init__parameterized15 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_15_out(p_15_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module vga_rom_blk_mem_gen_prim_width__parameterized16
   (p_11_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_11_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_11_out;

  vga_rom_blk_mem_gen_prim_wrapper_init__parameterized16 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_11_out(p_11_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module vga_rom_blk_mem_gen_prim_width__parameterized17
   (p_7_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_7_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_7_out;

  vga_rom_blk_mem_gen_prim_wrapper_init__parameterized17 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_7_out(p_7_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module vga_rom_blk_mem_gen_prim_width__parameterized18
   (p_3_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_3_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_3_out;

  vga_rom_blk_mem_gen_prim_wrapper_init__parameterized18 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_3_out(p_3_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module vga_rom_blk_mem_gen_prim_width__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    addra_15_sp_1,
    clka,
    addra);
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  output addra_15_sp_1;
  input clka;
  input [15:0]addra;

  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [15:0]addra;
  wire addra_15_sn_1;
  wire clka;

  assign addra_15_sp_1 = addra_15_sn_1;
  vga_rom_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ),
        .addra(addra),
        .addra_15_sp_1(addra_15_sn_1),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module vga_rom_blk_mem_gen_prim_width__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [14:0]addra;
  wire clka;

  vga_rom_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module vga_rom_blk_mem_gen_prim_width__parameterized4
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [14:0]addra;
  wire clka;

  vga_rom_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module vga_rom_blk_mem_gen_prim_width__parameterized5
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [12:0]addra;

  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [12:0]addra;
  wire clka;

  vga_rom_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module vga_rom_blk_mem_gen_prim_width__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [14:0]addra;
  wire clka;

  vga_rom_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module vga_rom_blk_mem_gen_prim_width__parameterized7
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [14:0]addra;
  wire clka;

  vga_rom_blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module vga_rom_blk_mem_gen_prim_width__parameterized8
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [14:0]addra;
  wire clka;

  vga_rom_blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module vga_rom_blk_mem_gen_prim_width__parameterized9
   (p_39_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_39_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_39_out;

  vga_rom_blk_mem_gen_prim_wrapper_init__parameterized9 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_39_out(p_39_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module vga_rom_blk_mem_gen_prim_wrapper_init
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [14:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hE41C3C7827CB1D5AFBE07C9B1A78BFCDC8F4FFA901F000FFFFE41C9C7D47C010),
    .INIT_01(256'hF37E017CCFFFF3C01C0034A7BFE79EFFE01C1A59F0FFD908F4FFB901F800FFFB),
    .INIT_02(256'hB0FDF5FF9A4860C366803FFFFFF3C01C0585A7B3F082518039711DF0FFCB88F4),
    .INIT_03(256'h51997E0706000BFFDDFFF43B99740162803FFFFFF7801C000553B37E32000082),
    .INIT_04(256'hF0FDFF8038F017D89FFC05868004F49FFF80F939F600F3803FFFFFFF801CF037),
    .INIT_05(256'hB82DFE0098C13F70FDFF8038E08BDCCF9C26768049E11FFF00F829FE0091813F),
    .INIT_06(256'hC6000C693F9F0337F3620086808F0030FE0038FF1B44E7026390034E086C9F00),
    .INIT_07(256'h79F8F0CC7800874C301E8D7F8F031EF160007E80021811FC0038FDF844F0007F),
    .INIT_08(256'h7E901F1C7FF00379F0F88C24008733707884FF0E0736F162007F001C183FFC81),
    .INIT_09(256'hF0021E34C06001FF981F1DFFF003F9F8F89D3F0F100D20661BF0060634E06000),
    .INIT_0A(256'hE31F018980B7C5E0037FC680200F833F3F0FFFE003F9F8F78DDF0F10D28099A7),
    .INIT_0B(256'hFFE007F9FFF785B10F8167C36E1BF02B7FC680023F813F3F07FFE003F9FFF7AD),
    .INIT_0C(256'hF00118754FF8F8E0001EFBF137CFE318F6C167B952F0317FCAC0003FC37F3E03),
    .INIT_0D(256'h47605E7FE03735FC11F1E695916E00001FF8F037DFE080E78ECD7ADA7CE03314),
    .INIT_0E(256'hF8375F528CFB824B3E8D07683EE5E07DFE9F3DE80E7C3B0FF0F0371FDE88E703),
    .INIT_0F(256'h3B5DA2CFFF07F9FAF352650F3D021E418801FC7EE5C03F7B857FCC47F73F0FF0),
    .INIT_10(256'h0EFCE7800FBF9210B723063986F8FEE3D25A471E0693D940D03C7CE5801FF82D),
    .INIT_11(256'h2B1AC101A1F0FFC678EBFF8B2E27B824737D0007F1FFE9127F831E004C3B68FC),
    .INIT_12(256'h3EC383FCC9794692F01C720DF8FFC761EA73809C09042C4FBB006FC3FFE937E8),
    .INIT_13(256'hC4D1DC0C96C69EA6F387FFCD5F6474D8B1318FC3FFF701CA01DAC2883B324A0E),
    .INIT_14(256'h503C7FEFE1728073725CC7AF061EEEFF87FFCDDFB41465B97822BCFFEB816A80),
    .INIT_15(256'h6D9FB78809E058046CFFCC18720054BB4E4CA0E60EB5FF01E0CDDFB2ACF2D398),
    .INIT_16(256'h0E2A4E38FFF8006D8D96D21A775F3B4CF89DC8366185C6C736AE61D707FFFCA0),
    .INIT_17(256'h801771F8C0CE1D0E1C2226F8F8006D9C9C8DCC32FC96F9F8BAB81671283D0665),
    .INIT_18(256'h50104F8C07093050D66166138C094864204EF0FC004D8CED43C03603D0F7F03E),
    .INIT_19(256'h3F00FFF7A96AC04E4760AAB1838AD5925E2E3857FD80B1F7CC73C0FEF3A84803),
    .INIT_1A(256'h90D32EB90D946A3F00EFF7A9E26521D2E8C576E70DD0913C46822431A309FE45),
    .INIT_1B(256'hCA01A8A01181ACE0A4A97C0D21E01F00FDF3A9405FC064EF69B5C69C7011A30D),
    .INIT_1C(256'hC9413B2A2AF03C5001B12015E2233DED6947C6D07D0FE1FD538901639AA49835),
    .INIT_1D(256'hA7153F47F03FF5C9C136282E74DCE36108A215271F7E3759238760BECFF0FF57),
    .INIT_1E(256'h123E777FA086388356FDD7701FFCD9414BEB0E0ECC60F092EA10C719E72BD628),
    .INIT_1F(256'hEFF81209EC2391D670180F1D11E8A0E8FCE1FDE3F453407C15BF10A42DD4E2AB),
    .INIT_20(256'h7003645B617C0BABEB1D0F16819133D07F0FA40EE5DBD9E5D970F3F41B407C88),
    .INIT_21(256'h0D75EB8F4A3CFF7E036463693F6528C50C983583B154D2F31FA014B11C5E7DB8),
    .INIT_22(256'h9017A2FBABC05EE563D2CAE67CCF360F64636283F0AAE0A665B483A37C5AC03F),
    .INIT_23(256'hA6807EE16407A9398AA242B5B84CFE656B5B567CAB803E4673A6C07F42B067C2),
    .INIT_24(256'h327C3180FF0957A600FFBC4823D4E8AEA20F717BC23D9B40FC3274A5803F4B57),
    .INIT_25(256'hC22B94A012A80B78EB97F7FD9DD7AF30FF5330719BD6C057F57444E9DD9D1B1F),
    .INIT_26(256'h963CEE371DB18B3CDDE1EB5B8B1B5B2B920E1B9FD7A53DFFA53E70869E881CBC),
    .INIT_27(256'h3F9ED7A57FFFCAEFEDE6AB3506E3FD36FE6430284B7AB30E083FFEF7257FFF95),
    .INIT_28(256'h270543672E067B3F8FD73F7F3FC687493E5E43D1BDE2060F1487D0438D654DF1),
    .INIT_29(256'hC795477E8DAEA9D0284EB183231B3F89D75D3E1FA7C3F01ECE609EB8D31515BE),
    .INIT_2A(256'h9F0071943F4FEE8952EBE0477E16E13B3395D0582D3F89F75DBF0F9360D1DB2F),
    .INIT_2B(256'hEADB1C0F0B8F5F1F00790E16D9EA1F80DF3D3B5659D124C919585BC93F89F75F),
    .INIT_2C(256'h0FDFB58BD0CC108962DC0F0B8D1C9F0338F79FE0CDE7D4CBEAC22D0171BC53E1),
    .INIT_2D(256'h1C720678DBCA25C284FF5DF750CA1B195C0F1B8D5C0083FCFABC41796010E9C9),
    .INIT_2E(256'h762CBF07FFFF7E3D2DF07BF7FDB9E4237C1763AE163C689C0F0A8CDF00CFFE2C),
    .INIT_2F(256'h10F73C9D94A40F762CAF1FFFFF544CB64D3F6B0ABA5934A9409A864966507C0F),
    .INIT_30(256'hD00B933A9CCFC2E72A487C15E40FF66CA407FFBF956F31A8BBBEFBFBE0E83066),
    .INIT_31(256'h3EFF988ED0BBB8A14DE2209C12F68CC4B26714ED0FE66CA4077F3FD5F01A5281),
    .INIT_32(256'h8054030A236337FC79F87D1D941F2B0189F3B6288A6F04AE6A7F5407F2276107),
    .INIT_33(256'hD602D61EE512D16F39030A23A37FF031F8B88EFD493A9180AD6572D304EB6CDD),
    .INIT_34(256'hB03E5C29909EF752C0329AE0022D4F0803CF2753FF0079ECCB86D0D78869564C),
    .INIT_35(256'hAF22FF005F633ABA38302FCFC6A6B3AB9CCEAAE0C26DA817CFA762FF007FE61C),
    .INIT_36(256'h3ECB1575103F1AAFA3FF01FF0004BAF2AE8BE7CF7AB3878008BDC5FFC1081F16),
    .INIT_37(256'h07E882F152D10A5FF36E99401F4AAE90D90FFB008F196F773EE76DF8ED5AA0DD),
    .INIT_38(256'hE00734092FB15CB48045CAB0D82488A8917B443F6BA7A7C91FF301C560117F4F),
    .INIT_39(256'hA0134AA3A210FFE00793DF54D1A5C11F0E510DCD9170C58532F0334BA3A709FF),
    .INIT_3A(256'hA07B6C66F59779C13B0AA3B231FF800098FDA5CB088C7FD5368679E743EAD04D),
    .INIT_3B(256'hA83BA9ED113CA3F047EDDA76299ED53F0AA33C39FF8000A29791EF6D26703BEB),
    .INIT_3C(256'hBF91FF000058F83068E88E131E95B4AD5295033230103F0FA3BD39FF0000AD30),
    .INIT_3D(256'h682C2C7A030FA7BF27F80000455C020F23C84BA4EE073FA4C241F097B2130FA3),
    .INIT_3E(256'hF84E23740E4EDF328F0DDFE30F8FAF71F80000CB15630C1DC01B44277F24CEDE),
    .INIT_3F(256'hE39E024702726C7FFF5E5C1A26530F67D88F810F8CAF63E067011EC041879E65),
    .INIT_40(256'h031F8CAB63F862A01928460811899DCC8DDA9B2DD74B57238F00178CAF63E06F),
    .INIT_41(256'h1FAB5D0845920E3F8D04AB60FCC0003B892E61E10798207F38529B25E83CDF0E),
    .INIT_42(256'h43862AFD040D7F1F03F92F86576FFFC90CAB60FE800321212B906953B61550CC),
    .INIT_43(256'hE00F00000CAC11A25AE23161B2D30BD2AF18E8846FFFC84E23E07F0000E39C39),
    .INIT_44(256'hD32092E0C85CE67007003E76F297A0244B0C2AD1121B9FA0672BE12FFFC94C22),
    .INIT_45(256'hB59937F001873C8EAD19E0E45CC6F00F0009CE77C5CAA42CB82103EC00809A78),
    .INIT_46(256'hFC5BBDBF8157899AEC5E174A9D1123574FF0745C46700700F0CCFE4DA8906CA9),
    .INIT_47(256'h755843781FF80F7E009BBE81C69DDB87E4C2F563A1D7C25FE175584370170780),
    .INIT_48(256'h049D49E87E17C0E558067F7E00399F738BFA7367995832A183DD16087BEB03E0),
    .INIT_49(256'h2322A2B9FC4D0FDCF840ECE887E0E97806FFFC1063D8C7827381F5329272961A),
    .INIT_4A(256'h000FE631B035A250DD4A4C201348F5C0B2ACC7E1E06C3802FF0003E790D692A0),
    .INIT_4B(256'h7A0AF031A068E0F0DF30FC716B3FF05BB5B1F8E5DE3BE0E4560A1DE028B0C0F8),
    .INIT_4C(256'h6337318D7BDC938041F831A06860C00F1F3E36A292A37917C11CB92EBB5FFF35),
    .INIT_4D(256'h1D913235DA04A6701E15150A6C6EAEB8F830A078408F071F3E22E0CAEAEE065B),
    .INIT_4E(256'hA0AF7C60070C0055C835DBCA74DAA0B98B484F83700159FEE8A0616030271E18),
    .INIT_4F(256'h56838B4A631FD7206EBFF00F0400905CD1D04BC4338801B3B110F5649E2C3FD4),
    .INIT_50(256'h1300C7E4DA787860C5B891B508D72072BB3CCF010088A4EE150C771390D03741),
    .INIT_51(256'h1C06E08DE8222E7535D46DE007C800785527CF0FD320689F07FF83C09EE489D4),
    .INIT_52(256'hE0ACE968683FD18000C0E594203C1836D6A809380475110BCD4443D120683F7D),
    .INIT_53(256'hDAB89B0449F59E3C8DE91F493F58600080F5774B2C857A733359D21A87944DE3),
    .INIT_54(256'h244623AAF66FF5C3007815205FE57B6BEA1F4B331630009CF46D4EB7808468C8),
    .INIT_55(256'h448EFC6B008407F1D2005210B3A53264C780C10ABC9CFDC61F481786C7009C26),
    .INIT_56(256'h48A436FB6F561F65E0D68161CA072B82000FBABD704800DF9B3E1E77897ED61F),
    .INIT_57(256'h5B6A07069AC3E79A21C8501C47FD7D8002E8211F07118BA64FA68B57452A09DD),
    .INIT_58(256'h1D87F10C8613B36EAB0F648A9EAC98C5C73D8557FD7DC1C0D49D87D2FC48D173),
    .INIT_59(256'h87026FF5C010213E07991DE88F93CD633FF10B86F392C16EF15CA66D75C3E06A),
    .INIT_5A(256'hB0854098EE5A59BCC167B5C3EF075E07914C0B9793AA2B41F569CD73014BC684),
    .INIT_5B(256'h391ABDB657EDDBAC01480415FAC9597863B54313C9C007112413322F0268BDEA),
    .INIT_5C(256'h907D8173000400F89B35FB50D434AB981A8093C109E4F070B540E62B1B0000C9),
    .INIT_5D(256'h8AA729934E7C61586241A3000624D30BDE3B9B1BE612111829ECBD38E1C078BD),
    .INIT_5E(256'h4C2879547058DF67734ADB0E60F85801261F4007CA62082FC23A191C52834C3B),
    .INIT_5F(256'h0007073F892546C347C2C5D4F65526D6F33F70025841E157290007022E88E719),
    .INIT_60(256'h7D074840185B4C010386A29D22881817C6EDC077009754B8842B035841F1A36F),
    .INIT_61(256'hF23207BB8201DE250F45401E6757C0050C003ADDE7BC878CEDB06521644AF5C6),
    .INIT_62(256'h2B0CE982A63CAA022961689495627A9F5840EE2C7AE006090822B5938D231CEB),
    .INIT_63(256'h0F39AF3C021694AB06A4B5CE1CB240025ED1D5703FFC9F8A7C0F37A77800104E),
    .INIT_64(256'h2704F620003E9FFFC5C2B80017CED03307A35C6351E0B7250CB13DA3A618239F),
    .INIT_65(256'h104C30BFEE996BDC9ED9C700199F7EE1E0B80C34D1AF073DFEBC4610EF1C0D23),
    .INIT_66(256'h860534A4C22963E79C30F192FF57A216C6C00019C302E2A4B80E14F178A5B8DC),
    .INIT_67(256'h8024C10142CAB88F052ADE8B9B597F3CB09140D3FE9ECE01A68019C301620AB8),
    .INIT_68(256'hA25ED7327CEB51D036809E42B6B88785DC5E935D921CE0B100FAE920BA601E75),
    .INIT_69(256'hD180730C028A22426841CC6044EE713A87FE0A443807F1C60BA37552FF8199A2),
    .INIT_6A(256'hD8CF2327F9569089CCF072320A538B93EE7343F92AB39CC8FE8A243807F18A10),
    .INIT_6B(256'h7526CB7F9A08FEFCF37006FB0288CF253E5AD31A608F124C71A27F097F9D4C7E),
    .INIT_6C(256'h94F9F625B648353F57B57F9B6000FF3D7000023613F5D138BA527FD40313115B),
    .INIT_6D(256'h0241CD0A90338A2DC066E681D5408B20D9FF3EE4F83F41F000025BFDA6832903),
    .INIT_6E(256'h5C1FFE07BFD8040345D91669C0E5CC9AC68F89140815EC107F27AF031FF7D000),
    .INIT_6F(256'h356F0A3F1EE48F5019FE80ABD82603404E1B4938308D25DFDB24539BD21D22AF),
    .INIT_70(256'h7703990D54B816CD9D3B9744D07EC6120060A1D07F6137434B9FA6FBCB2DFC52),
    .INIT_71(256'hE1501FF8B71C1C06E933EB5A3016DBE96EF4190886D3E3FFD8A4D07FF1B29F36),
    .INIT_72(256'hD212A1D78B8F3EE250FFFEA0AD24335814C9A704C6D798B44722BDA3D783F1FF),
    .INIT_73(256'h827CCFD06EAEBB48A8B0CB7A278C1050FEFEA1B81989619FCBE70CCFD0881C07),
    .INIT_74(256'h2713B09B342A7706F88AA8B9CBFBDC45A8C598994099401CE5ABFB418220A4A8),
    .INIT_75(256'h8B079FE5F77E1E915F18DF9A12B001FA8AA807E806772AA14B1A2360A4F11FC2),
    .INIT_76(256'h55B412697DF31E8F041F1E0FF31BB4CF541C2C67EB57F69A4C284975D7258077),
    .INIT_77(256'h7B19CB120B3C4FF5D84CF14B446F14836005D00BCD95576367C6C8A2D32F2AD4),
    .INIT_78(256'h879230405DCC4074E319D61F30A939CF4051D0E5700958480DD7EBFC9554AD7E),
    .INIT_79(256'h789D384A243948A80EC87FCCC77E04079FC61C206950E869E0B1DF0278E65D5B),
    .INIT_7A(256'h4616274B6918791EF2BBEF5E180CC1E123058F490184EE3C5149305ED8306287),
    .INIT_7B(256'hB72BBB6AFF492AC86F4AE710A3703EA092CE540A0C6F583FE18930E54CFE7954),
    .INIT_7C(256'hF800530B3160138C4755ABCFBC2B356FE0126601887742C19FD562105466E080),
    .INIT_7D(256'h3B910F339D8104757923805E03CE6A9C674D3C7BE0681B94144641B61783125B),
    .INIT_7E(256'hBE4DA125BF6F952129CFF49D0A97F56C34A87083859289DC4D3E50C258087A96),
    .INIT_7F(256'h200FD859889B993C130B843015113B84E7049C4159B5FD34072183D8E2EA99D9),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module vga_rom_blk_mem_gen_prim_wrapper_init__parameterized0
   (DOADO,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    addra);
  output [0:0]DOADO;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input [13:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [0:0]DOADO;
  wire [13:0]addra;
  wire clka;
  wire [15:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h9C40962D880415641FD4904A93333C73C2DCF4AD7F1A052AAA9CFBF55A6CB467),
    .INIT_01(256'hCC4E10828F3ABE91015E1AC3444C503FD4000CB323984DEDD2D6F0F078C93DC2),
    .INIT_02(256'h2F334673E06970330A8C12868A2E1D83D301F271BDD9FFDE3E12334631C2E16C),
    .INIT_03(256'h1598A9A77FF0176AA6CC67C00E5AD72CC6888BBEAC5070BF6F36C93EABFF8209),
    .INIT_04(256'h2924B15D637CC479BD55077F70306AA49CE7008C3A1F94CCB9AB10659060E2BE),
    .INIT_05(256'h102B312C5F86BC6DF29B5D70F4031948139E77883468AD99CF000715DF94B160),
    .INIT_06(256'hF7BF5A5DAD331FF0EB023E2051DD5311902056F4E2B80A1F6A76890E52ADB39F),
    .INIT_07(256'h5110F103F1AA2BF7B776544B2737FCF3FA5CE4B7A136648F4054203139773B6B),
    .INIT_08(256'hA2A1C670A1B827534078AE7C9509FF9658D55A2673FF83EFE43C016D5FBAAE5F),
    .INIT_09(256'hA34D3C093563E333C771F1D4EA5B3734C84DF58AEBE7D173D5D26E77FF082039),
    .INIT_0A(256'h403928B1F3C2AA24D8F80B953715EA680137F3A899301DA8CD57FB0931E234AA),
    .INIT_0B(256'h3EBE8EC7FCBAAE973D539C366AAD4CD8FC01AD2E39818CB6839C399E836DA99C),
    .INIT_0C(256'hA1869852DEDF3DAE5386D2A034C740FBC2320AA895D999F8018A0E983E70C8C2),
    .INIT_0D(256'h7A234ADB73FC2DF9098928C38061D3918496A002EC6899D0572E8316C931F824),
    .INIT_0E(256'hC817D6CA63462F8B2949B6671C29F4FA8EE992A4866D478026D8F1A63FD5A5AC),
    .INIT_0F(256'h125965CD95618C766CBEE97A66835B2F6D25C63C8150C4C8C00A2E434A0E01C4),
    .INIT_10(256'h9F3800E624E2E8BB54E9D673618300CC4301080BAB3542674DCF1C00E23B47BB),
    .INIT_11(256'h6003138F029AD23FF000F80210475BC787433E61B30FE204A88DC95CD142325D),
    .INIT_12(256'h15B3333B37963C38F1A7ED068D947FF008E40D1848103ED13100713F5B91AF1A),
    .INIT_13(256'hC0B02FFEA0F4B2443B3B238CB45D1C5607F30667945BC07F71C7805127723FAC),
    .INIT_14(256'h051A293F007FEF5C942C1389AEB7073923CF79E3F51AA25F99057A2C9F807F71),
    .INIT_15(256'h4337646061F32B0ADB68FE3C7F6D970870EF8986C7BF3D278B3F1DDB3093A36D),
    .INIT_16(256'h3B8FB87A4CA044891DE8844B7D4B95D528F87C38660E403ACECB00C91B551C32),
    .INIT_17(256'hFE38C63E900080DF447D2DFCA6CC8E4EFC835A1D66BAA94CF07E38603D22335E),
    .INIT_18(256'h149D942D528C00FC38023ECF1783212EFD61353D246087F592569D71296B8C00),
    .INIT_19(256'h4D5C9CF48C6A450C13AC55D28E01FC302AFDFC02864C6D9CD535236A133BF635),
    .INIT_1A(256'hC22117562C2B5BBD9A9D0EB9ACDD6662C4D7B7CF07FC307BFCFB4179BE141077),
    .INIT_1B(256'hAECCEF1C303EC0E1E01B214FADBF85963DCF2A99101EE4F0B2A7CEE7BC307FDC),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000002F1C2392BFC358B6),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:1],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module vga_rom_blk_mem_gen_prim_wrapper_init__parameterized1
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [14:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h001FFFFEE00B022A000060867A7FBFC1B8000010000FFF0000001F7FFFC0000F),
    .INIT_01(256'h00000003300000001FFFFA603FE02E0000008739FFFFC1B80000000007FF0000),
    .INIT_02(256'h2EBDFFFF83780000000000000000001FFA7B603FF0B2000001BE1DFFFFC33800),
    .INIT_03(256'h301FFE1E06000221FDFFF402F80000000000000000001FFFFB303FFE34000083),
    .INIT_04(256'h000000003F0FE9381FFC8F068007017FFF8002F80000000000000000001F0FC9),
    .INIT_05(256'h42EC0000010000000000003F1F713C0F9C0186804FC3FFFF0002E80000000000),
    .INIT_06(256'h1000080EFF9F00C5F00000010000000000003F00E13C070281E0004B80FE9F00),
    .INIT_07(256'h7E0701BC0000F8A830140CFF8F00E4F00000010000000000003F02013C000080),
    .INIT_08(256'h00101F000000037E0F01BC1800F81470778BFF0E00C4F0000000001C00000001),
    .INIT_09(256'hF00201C6C0000000181F00000003FE0701BD000FFF1E20759DF00601C6E00000),
    .INIT_0A(256'hE01FFFC700CF3BE00300048000007C3F3F00000003FE0706BDC00FFF8F00B321),
    .INIT_0B(256'h000007FE0006BDF00F7F4003B797F02B00048000007E3F3F00000003FE00069D),
    .INIT_0C(256'hF000000E7FF80000001FFC0EC6BFFF180E708799E7F031000CC000003C7F3E00),
    .INIT_0D(256'h871361FFE00839FC0000198C209000001FFF0FC6BFFF801FF02D2B07FCE00C18),
    .INIT_0E(256'h07C63F618C07FC039500FF6800F9E0000001A14F7000000FFF0FC67FE1881FFC),
    .INIT_0F(256'hC789F3300007FE050632448F03FC030740FFFC00F9C000047CFF888808000FFF),
    .INIT_10(256'hFE00FB800000BC0F3BEDF80006FF0106B26EC701F808CF802FFC00F9800007FE),
    .INIT_11(256'h6305FFE20A00003E00F3FF80138838C7FDFE0007FE000E72694301FF820F0803),
    .INIT_12(256'h34C3FC000E3972F20FE3E01200003F01F3FF80060E07CF7164006FFC000E77F9),
    .INIT_13(256'hE4E81FF0E7E0E086F3F8000A3F73B0A6CF620A3C000F01F3FFD80C0FC3C3E4FF),
    .INIT_14(256'h12FF801FE17B7FF1319FF8CEE0E00EFFF8000ABFA230BFC761387F001B81737F),
    .INIT_15(256'h8ABFA6182FFFA445EF003FF87BFFDEE88FF0CE00F065FFFE1F0ABFA6583DEFE0),
    .INIT_16(256'h700BEFF2FFFFFF8ABDA76813F8A01DCF077E383BFFDC3807C73001E78FFFFF5F),
    .INIT_17(256'h501BFFDF10CFE6701FC3BAF8FFFF8ABCA5C549FC0307FE077C981BFF7D400786),
    .INIT_18(256'hB0F20F8CF8F6FA10DBFF89E58FF2707FC199F0FFFF8ABCF53743F40F49F80FFB),
    .INIT_19(256'h3FFF00069877F3ED7E1F41CFFC77F19BE1B800F746C0BE00FC73FF01069875FF),
    .INIT_1A(256'h8014CFC10E08763FFF100698F778991F1F0702F8F2F09AA018018A8CC30E007C),
    .INIT_1B(256'h67FFC0201A60B0E08244800EA0FF1FFF0006987557EF8B9F9141F9EC701ADA71),
    .INIT_1C(256'hB8750F194FE7C80FFFD0A01A147C3C3E978007907E0FFE00A6B8754C3FCBE7D0),
    .INIT_1D(256'h27E13FC7FFC004B8F507D98FE360DD9FD9221AA0E17E3FDBC007803FCFFF00A6),
    .INIT_1E(256'h1863CA7FDF06D803E0FF47FFE00DB87503F1EFF1482F0F39621A96E1E7EC1EC8),
    .INIT_1F(256'h9FCDF4031F01319CEBE00FE1008880F0FF1FFE1C053074001D2FF9E81C0F6123),
    .INIT_20(256'hFFFC053875000CF5DCFE0BF4463139BF800FC00B6418E1FE07FF0C053874008F),
    .INIT_21(256'hF17B778F743F20FFFC052075006695FEFF087F81315DFF001FC01B691C607E73),
    .INIT_22(256'hB80122D2FE007F199C00CEF87F0AFFF005207780F364FF7F80010123553F003F),
    .INIT_23(256'h3380FE932BFFD48C0022587E387F0099063FD87F0A7FC0073033C0FFA07FFFDA),
    .INIT_24(256'h0C7F887F000E303300FFCAAFDF8B7DC122113E78FDC1E301DFFC770C7FC00E30),
    .INIT_25(256'hFC37F8814D598727FA5678001EB03B00FF68DF8FFFFD8377D8EA7CF001EC728F),
    .INIT_26(256'hAF039F317C5F02C07E9EEE6017D5E8375670001EB03100FFBC1F0FFF62F07FA8),
    .INIT_27(256'h001FB03100FFCE07039738EE7E6601F9004DF9E3BBE83DCA76001FB03100FF9C),
    .INIT_28(256'hC04363993F88B4000EB02B00FFC63387CF9E42546203D6F183782C23F1668F3E),
    .INIT_29(256'hB386E47F61CFDD202A2C869F8A34000EB06901FFE7338FEF8E0A595DD3CAE1F7),
    .INIT_2A(256'h80FFF1B7C0FFCFE22615FF878F60DB142002DFAA10000EB06980FFF30B8E6FCF),
    .INIT_2B(256'h6F0D00000EE06B00FFF986E1F7CB9F076DC23AB880ABE836C07FA994000EB06B),
    .INIT_2C(256'h0F663196E051C60E9500000EE22880FFF8E5E377DFFFFC08080E5E0049C0590D),
    .INIT_2D(256'hD3859DFF3CA1EBC3F8FFD3E7FA2B1CF4C0001EE26800FFFCE4F3B797FFE0AFC9),
    .INIT_2E(256'h07632B00FFFF7AF3C463FF176373E75BFCF5F4FC282FE480000FE36B00FFFE61),
    .INIT_2F(256'h1F0AD2958C600007633B00FFFF58734A9AFF9FDF87BFD1D9926C7C0039CCA000),
    .INIT_30(256'hE06AD80709303E3E9548750D600007633000FFBF9DF0FB7C7BC10E3E1E0FCF9E),
    .INIT_31(256'hFFFF9E2F04F6B8B15936869E0C14DE0986580D680007633000FF3FDCDED098C1),
    .INIT_32(256'h1A30000F607400FFFFFF5FE3BB793000CF5FBDBF7D82005E5765700007607500),
    .INIT_33(256'hD799F813BC064A9A59000F603400FFFFFFA8F1A8403C1F20DB6240CAC0B845F3),
    .INIT_34(256'hCC64F92FE084E144882D680E08F9BA58000A606400FFFFEFA8F81D06FF8F19CE),
    .INIT_35(256'h603400FFFF6392C44544EFF00B85C4F9AA978DE4819858000A607400FFFFE794),
    .INIT_36(256'hBF4AA93CB0001F603400FFFF00C3C40515FBF800ED3DBDF6143E470D54B8001B),
    .INIT_37(256'hF800FF76D166439F93CEB830000F612706FFFB00ECE6318A7FF800E78D8E40E6),
    .INIT_38(256'hE00012D68E0E1EC80048590D906468D83A79F4000E603406FFF300E2FF91C09F),
    .INIT_39(256'h60000F60340FFFE00034D0942DCC001F54EFD23C38A6FCF1F1F0000E603406FF),
    .INIT_3A(256'h7BD5B2BBFBAB3281000F60240FFF800038D060A94BEB7F6C36FB77A57BF6DDC3),
    .INIT_3B(256'h420F21AF1EC29E255B5BCBF81EA281000F602807FF80003AD8687E74467FC6A4),
    .INIT_3C(256'h2B8FFF000015FCEC17479A1C61B9A1D2BB0AFDDEC8C0000B602907FF0000357C),
    .INIT_3D(256'hB85F5802000B602B1FF800000B98FC34194E0C4FFC7DA758FF7EB3CB82000B60),
    .INIT_3E(256'hFF31A1E705F82ED4E36120000B403B0FF8000089587C0E0FF91C3AE15B8167F6),
    .INIT_3F(256'hE382DD3F8168487F00F997A5A0F130590670000B433B1FE0670103153F028E0D),
    .INIT_40(256'h001B433B1FF862A005B73FC0E78C1E00767612D2733D18C270001B433B1FE06F),
    .INIT_41(256'h7E45BDEB3941F00009C33B1FFCC00001661FC08B940200003763359D33910CF0),
    .INIT_42(256'h31CA8101B1CD7D6AC27ADA32C5F0000DC33B1FFE8003035E1BE18CB00B11CFBA),
    .INIT_43(256'h1FFF00000D6309C4B4B6C1B9FF36912E7F7E8AD6F0000CC1B31FFF0000026B09),
    .INIT_44(256'h67CBEF1F0CC3320FFF003E7C350FBDFCEFF0D6DEEF85A5AD7DE85BF0000DC3B2),
    .INIT_45(256'hD8909A67AC7B6FB713F41F04C3120FFF000FFE9D8DFC1034C0C806F38C40C6F1),
    .INIT_46(256'hFC1845BB50FFF1DC7DFE54EC4362BA77FC0F84C3920FFF00FFFC9185BF5814D1),
    .INIT_47(256'h85C79307FFFFFF7E5067BAC18EE19C7B078D6138E4D5B6EC1E85C7930FFF07FF),
    .INIT_48(256'h9CFB2ED5DFF83F05C7D200FFFFF81F4677FE304FE19FC53E0434B31206EEFC1F),
    .INIT_49(256'hB0ED433E8CCB78C8E4DD31D2F81F0DC7D200FFEFE01FEF7E76532FC31D838A62),
    .INIT_4A(256'hFFFFE03FE6FB2481300B7FB5D02B7A2B0E1098FE1F8C87D200FFFFE01FE57E25),
    .INIT_4B(256'hCE0D0FC59FBA1F0FDFF0FFE72D37A013EEF8648CCDDC2C7E338E1E1FCC8F1207),
    .INIT_4C(256'h9B93B71618B5036F3E07C59FBA1F3F0FFFFFE06D9481D5ECB9EB09B00831BAFE),
    .INIT_4D(256'hF5BEACCC60BE358119B880CF31CE3A6607C49FAA3F7F07FFFFF1EF8EC7273C8C),
    .INIT_4E(256'h9F3D03E007FFFFBD1FAE0748FE68017A1825B53310C768010C9FB31FF007FFFF),
    .INIT_4F(256'h93D661C753001B9FBD80F00FFFFF79CB6A070B065FC8026FF12FF46C58780018),
    .INIT_50(256'h212C905D38F281DDE065A097001B9FAD80FCCFFEFF7DCB79028F6B5D1603DF60),
    .INIT_51(256'hFFF91F7EB7EAE01E5C07C6F98007CDDA96A825521F9FBD80FFFFFC3F6DAB5DC2),
    .INIT_52(256'hAC2A0DDFBD00E07FFF3F1EC3E8E034A5063342702BBC68AD8CE8501D9FBD0003),
    .INIT_53(256'h5CFCC83FA8480220CA0DBF9D00901FFF7F0EF2A870134EA2FB7BA2853E634B0B),
    .INIT_54(256'h4BA5E89B56B11E88365F3EE7A23072EE0EBF9D0CE40FFF7F0F52AFF84849B170),
    .INIT_55(256'h99800048FF7FFF1337E8775D3D49B59D1C1F686D5EA77C0ABF9D087B00FF7FDF),
    .INIT_56(256'hA500133ECE9ABFB8E001D09E3FFF8175E82CEB3F18D88E4984E98D3F2F9B1ABF),
    .INIT_57(256'h9ED8BFF8D3EA886312EC00F18B5DA08001E0DEFFFFA87C4967FB3BF60A5119CE),
    .INIT_58(256'h627FFF5DC69DB58658BFF8D3921E8263F2E9E39B5DA0C00020627FFE81949DF5),
    .INIT_59(256'hC9AFDF28C0E01C01FFFF40AE0D9587189FFDD30E2E1A5DD531724BDDA8C00010),
    .INIT_5A(256'h2003E038D76E103E6DDF28C3F00D41FFFF44ED8D95A558DFF9B144E465B3EA6D),
    .INIT_5B(256'h8C2507AA0F23E230C6782E27FE2C586CDF28C31C066FFFFF0AABAD850D1863F3),
    .INIT_5C(256'h80810037FFFBA24EA40FE10FB3C73343304433FA89E314CF28C00704B7FFFFA4),
    .INIT_5D(256'h10C54B89CEC3B8C09C8077FFF9A068B4E52184B8072303F01795C3D48A24C720),
    .INIT_5E(256'hC0987E67513014590757ABFEDF20C0FE463BBFF8FB02AEDDBF84B81F6350CCE5),
    .INIT_5F(256'hFFF8F10B2E1FE45FDFFCE6F0C85565D50AF8ECBF80C0FE672BFFF8F2032E1DB2),
    .INIT_60(256'h97BF90C01F9325FFFC71063E7D6CBD4FF8CEA05701281A2084BEBF80C0FE331D),
    .INIT_61(256'hB02A17E19F792A50BF98C01F8B2E3FFAF2971D0C1BBCDFF0CEA0060063151DB2),
    .INIT_62(256'h1D8427021FC0CC500F1850FA955366BF9DC0EFC80A1FF9F20E1D1C10AF5FE0CC),
    .INIT_63(256'h0FC21303FDF9DC1DD67241BFE0DC6017B10788AE2548BFC1FC0FC41307FFFB1D),
    .INIT_64(256'hE427834CBFCF7FFF394787FFF89633EB63F03F839E714DD94577A69E08BFCF7F),
    .INIT_65(256'hFF8FBF21F1A99DFB3CE62EBFE87F7F1D6587F3F8C849FF64EE7F879F713647AA),
    .INIT_66(256'h79F91E4A9EF33C181FBF23E86A5EBB89BAECBFE83F031C2587F1F8F8CEF56290),
    .INIT_67(256'hBFCD3F01BC818770F9243ADA611E003F3F739CF242CE4BD848BFE83F019C8187),
    .INIT_68(256'h0D68E94D15EFFEBFCF7F00BCC9877879803ABA151400FF3E72002029C673376A),
    .INIT_69(256'h9C813EF3FC0CD28A3E9C9B52828D3FCF7800FC7B87F80DDE6EAC2C8CFFFE1ED2),
    .INIT_6A(256'hFF0B9CD8057448FC17DFFB7C0CA1001065C5079AAD7FED3300FC3B87F80D9C6E),
    .INIT_6B(256'hC392303FE8F700FF07CFF90504C9FC08D0995C1C8104CD7A885468A23FEDB380),
    .INIT_6C(256'h98FDA788E0016EA57E79FFE89F00FFC5CFFFFC0050CE3B2D39DC7D818C993863),
    .INIT_6D(256'hFC3A364725060631FDA789B339EA333ABAFFCC1BF83FF94FFFFC20164F3CCB00),
    .INIT_6E(256'h97800107B947FFFC3E364BBE3AE3F0E387E14082B6292B06FFCC10FF1FF94FFF),
    .INIT_6F(256'h3B129B7F58D14F97860180AD47FFFC3FA64E82330FF1C697E563E1E86F80156F),
    .INIT_70(256'hB4F219F18AC7FDFE5BE53A42773E910DFFE0A74FFFFE7BAA1E02C907F3CEE7E5),
    .INIT_71(256'hE0CFFFFF3F752FE5E6C3F394CFFDEBF6DD76C4A0BE811CFFF8A44FFFFE3B760D),
    .INIT_72(256'h43709F807400FFE1CFFFFF2EE52595C718F224FF3DEF6E6CDDF05E9F817CFFFF),
    .INIT_73(256'h08FF34E809706522948F9405277FF2CFFFFF2EF029A3DE10F185FF34E8EAEC15),
    .INIT_74(256'h2E185C18F333A414FF70B88C4E0DF682979E87BF3F7ADFFFFE26F03D0B9F38CD),
    .INIT_75(256'h0411801F69FFE37818FC1878E42027FD70B815FD2DCBD89F9485261F5FEFFFFC),
    .INIT_76(256'hDCCACDB709BFDE0701C006A1FC1D9888B05BE0770CCBF9601CF6AB545270BF80),
    .INIT_77(256'h5CE1F451F4D2D3CE0DCB24F03CBF0CC1600277F3F1B808396867F0BC91F0D099),
    .INIT_78(256'h5FE20FB803FFB15803E651E0DE6B5DFB42B188FDAF1B91380A700C003C0B5E43),
    .INIT_79(256'h8D9D99520E0848000E38638389872807E051E3DE51D0978A57D61FA192086C58),
    .INIT_7A(256'hFEFE5D83FC2C0BBE7F19344F880CB2E0E00780058228EFC043F7DEABC4C3E363),
    .INIT_7B(256'hB67D5C4CFF8144F8EE9063460C65BA7F38F844400CD2C70003812A9268FF8140),
    .INIT_7C(256'h8C7240F5F01FF4BEDDE1CCFFC04531EE31EE518E5FBC3F3A60C827003D1E1F67),
    .INIT_7D(256'hB2D4CB35BFB8C80F0AE0F0C1FC6998D1878E3FE843AC1E318DE5B5B3CDBFAB7C),
    .INIT_7E(256'h3FF16EA9FA5BA42E94CC05BF382C0E137398CFFC6AC2911F8E3FE0408C0D62E1),
    .INIT_7F(256'h9FF022A0331C1E3FED6B69DA29730322CE71BF3AA2CD1E33109FFC20A7331E1E),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module vga_rom_blk_mem_gen_prim_wrapper_init__parameterized10
   (p_35_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_35_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_35_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFF000007FFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFF000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFF000003FFFFFF),
    .INITP_02(256'hFFFFFFFFC3FFFFFF000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFF),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFC3FFFFFF000001FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFC1FFFFFF000001FFFFFFFFFFFFFF),
    .INITP_05(256'hE1FFFE7F0000007FFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFC1FFFEFF000000),
    .INITP_06(256'hFFFFFFFFFFFFFFE1FFFE7F0000003FFFFFFFFFFFFFF1FFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hFFFFFFDFFFFFFFFFFFFFFFFFFFFFC1FFFE3F0000001FFFFFFFFFFFFFEFFFFFFF),
    .INITP_08(256'hE0000007FFFFFFFFFFFF9FFFFFFFFFFFFFFFFFFFFFC1FFFEBFC000000FFFFFFF),
    .INITP_09(256'hFFFFFFF1FFFFDFE0000007FFFFFC7FFFFF3FFFFFFFFFFFFFFFFFFFFFF1FFFF1F),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFE1FFFFFFF0000003FFFFFC7FFF7E7FFFFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFF0FFFF60FFFFFFFFFFFFFFFFFFFFFFE1FFFFB7F8000001FFFFF87FFFFC7F),
    .INITP_0C(256'hFFFF33FE000000FFFFF0FFFF01FFFFFFFFFFFFFFFFFFFFFFF1FFFFB7FC000000),
    .INITP_0D(256'hFFFFFFFFFFFFE1FFFFD0FF0000007FFFF07FFF83FFFFFFFFFFFFFFFFFFFFFFF1),
    .INITP_0E(256'hFE0FFFFFFFFFFFFFFFFFFFFFFFE1FFFFC8FF8000007FFFE07FFF07FFFFFFFFFF),
    .INITP_0F(256'hE000001FFF807FFE1FFFFFFFFFFFFFFFFFFFFFFFE1FFFF90FF8000003FFFC0FF),
    .INIT_00(256'h35354545455656666666767686868686969686767666664646363768ABDDDDAC),
    .INIT_01(256'hA7A8A8A8A8A8B8B8B8B8B8B8B8B8B8B8B9B9A9A8A8A8A8A89898989787665545),
    .INIT_02(256'h414151414141313041304081E4264647CCFEFFFFFEFEFEBB88989797A7B7A7A7),
    .INIT_03(256'h86A7C8D9D9D9C9CADAD9B8A8978697B7C8D9E9EAD9D9C9C94041414141414151),
    .INIT_04(256'h8686868686868686767676767665555545343434243424242424140403F30345),
    .INIT_05(256'h8B8B7A8A8A796969586878898888776666767686867676768686969686868686),
    .INIT_06(256'h666676767686868696968686664525252679CCDDCCBCAC9B8B7B7B8B9C9C8C8B),
    .INIT_07(256'hA8A8A8A8A8B8B8B8B9B8A8A8A8A8A8A898A8A897877655453535454545555656),
    .INIT_08(256'h4140305082D4479AFFFFFFFFFFFEFD897798A8A7A7A7A8A7A797A8A8A8A8A8A8),
    .INIT_09(256'hDAD9C9B897768696B8C8D9EAEADACAC940404141414141414141515151414141),
    .INIT_0A(256'h7676767665655545453434242424242414140403F3E2034486B8D8D9E9D9C9CA),
    .INIT_0B(256'h5858686868787857566677878787868686868686868686968686868686767686),
    .INIT_0C(256'h8576767656353658CCDDDDCDAC9C9CACAC9C8B8B8B8B9B9B8A8A797979797978),
    .INIT_0D(256'hB8B8A8A8A8A8A8A8A8A8A8978766554534354545454555566666767676768686),
    .INIT_0E(256'hFFFFFFFFFEFDBA788797A7A7A7A7A797A7A7A8A8A8A8A8A8A8A8A8A8A8A8B8B8),
    .INIT_0F(256'hB7C8D9E9EAEADAC94141414141414141415151515251515130404040408237ED),
    .INIT_10(256'h453424242424242414140403F3E2034486B8D9D9E9D9C9C9D9D9D9B897656586),
    .INIT_11(256'h3556778898A8A8A8768686868686868686857686767575767675656565554545),
    .INIT_12(256'hCDBDACADADAC9CAC9CACAC9B9B8B8A8A9A9A8A89898979787968584747576746),
    .INIT_13(256'hA8A8A897876655443434454545455555666676767675757576665546253689DC),
    .INIT_14(256'hA897A7A7A7979797A7A7A8A8A8A8A8A8A8A8A8A8A8A8A8B8B8B8A8A8A8A8A8A8),
    .INIT_15(256'h4141414141514141414141414141414140414140204117FFFFFFFFFEFEEC8887),
    .INIT_16(256'h1404F3F3F3E2034586A7D9E9E9D9DAC9DAD9C9B8A765445486B8C8C9EAEADADA),
    .INIT_17(256'h66C8657696759686868686868676767576756565655555453434242424241414),
    .INIT_18(256'h9C9C9C9C8B8B7A7A7A7A7A797979796857585747476867464646465667777787),
    .INIT_19(256'h343445454545555566667666657676655656351558BBDDBCBDADAD9C9C9C9C9C),
    .INIT_1A(256'h97A7A7A7A8A8A8A8A89797A8A8B8B8A8B8A8A8A8A8A8A8A8A8A8A89787765544),
    .INIT_1B(256'h414141415152515151304030413093DDFFFFFFFEFDCA67A897A7A7A7A8989897),
    .INIT_1C(256'h86A7D8E9E9D9DAD9DAD9C9B89765332375A7C8C9EAEAEAEA6241413020313152),
    .INIT_1D(256'h8686867676767675656565555545443434242424241414141404F3F3F3E20345),
    .INIT_1E(256'h7A79796968686857676857474767574646464646464646565576C87686757586),
    .INIT_1F(256'h666655666545654515052689CCCCBDCDBDAD9C9C9CAC9C9C9C9C9C9C8B8B8B8A),
    .INIT_20(256'hA89797A8B8B8B8B8A8A8A7A7A8A8A8A8B8B8B8A8877655453434454545555555),
    .INIT_21(256'h5141413031203107FFFFFFFEBB78A897A7A7A7A798989897A8A8A8A7A8A8A8A8),
    .INIT_22(256'hDAEAC9B8976523023486B8B8D9EAEAEA41415141414131414141304141515151),
    .INIT_23(256'h656555555545343424242424242414141404F3F3E3D2F34486A7C8E9D9D9DAD9),
    .INIT_24(256'h676767564657675736464646464646564544D986768686968686767676766565),
    .INIT_25(256'hF5379BCCCDBDBDBDBDADAC9CACACACAC9C9C9C8B8B8B8B8B7A79696958585847),
    .INIT_26(256'hA79797A7A8B8A8B8B8B8B8A89776554434344545455555555566455546454514),
    .INIT_27(256'h28DDFFFDAA88B897A7A7A79798989898A8A8A8A7A8B8A8A7A7A7A7A8B8B8A8A7),
    .INIT_28(256'h035597A8C9EAEAEA304152513131203141414141415151515141413031311052),
    .INIT_29(256'h24242424242424141414F3F3E3D2F34476A7C8D9D9D9DAD9D9EAC9A8976523F2),
    .INIT_2A(256'h3646464646565656345566868676868686867676767565655555555555454534),
    .INIT_2B(256'hBDADACACACBCACAC9C9C9B9B8B8B8B9B8A797968585757475767675757676757),
    .INIT_2C(256'hB8B8B8A8977655443434454545455555555546251404F4F548ACEECD9CADBDAD),
    .INIT_2D(256'hA8A8A8A898989898A7A7A8A7A8B8A8A8A7A7A8A8A8A8979797979797A7B8B8B8),
    .INIT_2E(256'h1020415252312131414141414141515141414131314120315217DCCBA9B9A8B8),
    .INIT_2F(256'h141403F3E3D2F34476A7C8D9D9D9DADAEAEAC9A8876624F2E22466A7B8D9EAE9),
    .INIT_30(256'h45764486A7767675867676757666656555555555554545352424242424242414),
    .INIT_31(256'hACAC9B9B9B9A8A9A8A7979786867676757777767576767575656565645454545),
    .INIT_32(256'h242535354545455545243504E4E4E559BDBDBDBDBDBDADADBDADADADBDBCBCAC),
    .INIT_33(256'hA7A7A7A7A8B8B8B8A7A7A8B8B8A7978786879797A7B8B8C8C8C8B8A897765534),
    .INIT_34(256'h314141414131414152515241313131314141169A99A8A8C8B8B8A8A8A8A8A8A8),
    .INIT_35(256'h76A7C8D9D9D9DADAEAEAC9A8875614F3F2034587B8D9E9E92020306273624131),
    .INIT_36(256'h867676766666656565555555454535242424241414141414141403F3E3D2F344),
    .INIT_37(256'h79687878686778676777776757575756566656564545454555556666C9867586),
    .INIT_38(256'h451404E4167A8BCDCEAD9C9DAD9D9DADADADBDBDBDBCBCACACACACAB9B9A8A8A),
    .INIT_39(256'hA7A8B8B8B8A7877676768797A8B8C8C8C8C8C8B8977655342415253535354545),
    .INIT_3A(256'h515152513120203131307136A9B9C9B8B8B8A8A8A8A8B8B8A7A7A7A7A8B8B8B8),
    .INIT_3B(256'hEAEAC9A8875514F3F3F3146697C8E9D993723030526262313141414141414141),
    .INIT_3C(256'h555555554545352424241414141414141414F3F3E3D2F34476A7C8D9D9D9EAEA),
    .INIT_3D(256'h6767675757575656566666555565655545246655A89786868676767676666665),
    .INIT_3E(256'hCECEBE9D8C8C9DAD9CADBDBDBDACACACACACACACAB9B8A8A7968687868676767),
    .INIT_3F(256'h456586A7B8C8C8C8C8C8C8B89776553414141525242434353514D316BCFFFFEF),
    .INIT_40(256'h105240A267B9C9B8B8B8A8A8A8B7B8B8B7A7A7A7B8B8B8A8A7B8B8B8A7866555),
    .INIT_41(256'h04E2035586B8D8D9270682303062834131314141515141414151414141313031),
    .INIT_42(256'h25242424141414141414F3F3E3D2F33476A7C8D9D9E9DADAE9E9C9B8975614F3),
    .INIT_43(256'h5666565555666555453534556586966576767676766666665555555555453535),
    .INIT_44(256'h9CACBDBDACAC9CACACACBCBCAB9B8A8989797878685757576767575656575656),
    .INIT_45(256'hB8B8C8B897664524040414242424242404D3B38AFFEFDEDFDFCFCFCEBEAD9C8C),
    .INIT_46(256'hB8B8B8A7A7B7B7B7B7B8B8A7A8B8B8A7B8B8B8A897663424245576A7B8C8C8B8),
    .INIT_47(256'h587906724172A4624121213151525140416241415241313131205160E388B8C8),
    .INIT_48(256'h14140403E3D2F33476A7C8D9E9EADADAEAD9C9B897551403F3F3F30355A7C8D8),
    .INIT_49(256'h4545454555667686767675767676656565655555554535342424242414242424),
    .INIT_4A(256'hABBCABBBBCAB9A9A897867676767676767777767565656465656565655666666),
    .INIT_4B(256'h0414142434342404E49328EFFFDEEFDECEBECECECEBEBECEAD8B7B9CACACACBC),
    .INIT_4C(256'hB7B7B7B8B8B8A8A7B8B8B7A77635F3E3F35597A7B8C8B8B8A8B8C8B787663514),
    .INIT_4D(256'h52323131315151414051515151514141204141408115A8D9B8C8C8B8B8A8A7A8),
    .INIT_4E(256'h76A7C8D9E9DADADADAD9C9B8975524030303F3033486B7B7798969F572628273),
    .INIT_4F(256'h76767676767665656565555555453534242424242424242414130303E3D2F334),
    .INIT_50(256'h9988787878776767777777776766564646465656665656555555454545557686),
    .INIT_51(256'hA3078CDFDFDEDECEDECEBEBEBEBEBECEDEBD9C9C8B7B9BCDACCDABABCC9A899A),
    .INIT_52(256'hB8B8A7976604C2B1F34587A7B8C8B8B9B8C8C8B797662504F4142424343403E3),
    .INIT_53(256'h51404151615151513131302040A135C9C8B8C8C8A797A8A8B7B7B7B7A8A8A8A8),
    .INIT_54(256'hDAD9C9B897552403140303030345869789686858F69372936342424131415151),
    .INIT_55(256'h65655555554535352424242424242424141303F3E3D2F33476A7C8D9E9DAC9DA),
    .INIT_56(256'h7777777767675646464545566656555555554535344465767676767676767665),
    .INIT_57(256'hCEBEBECEBEBEBEBECECEDECDAC8B7B8BACACABABABABBA788988788888787777),
    .INIT_58(256'hF34597A7B8C8B8B9B9C9D8C797662504040403243403E3D3D58BFFDFCECECECE),
    .INIT_59(256'h414130415150C377C9B8C8C8A7A7A897A7B7B7B7A8A8B8B8C8B7977635D28181),
    .INIT_5A(256'h03F30403F22466766858798948E5A38373635242313041515141405161615162),
    .INIT_5B(256'h2424242424242414241404F3E3D2F33466A7C8D9E9D9C9DADAD9C9B887552403),
    .INIT_5C(256'h5646354545455556454545454545455576767676767676766565555545453535),
    .INIT_5D(256'hBDCEDEDEDEBD9B6A59AC9BABBB9A89AA78787878888888877777777767675656),
    .INIT_5E(256'hB9C8D8C797662504F30404F3F3E3D3B37AEEFFDFCFCECEDEBEBEBECECEBEBDBD),
    .INIT_5F(256'hA8C8C8C7B7B8A897A7B7B7B7A7A8B8B8B8A77645F3916081045697B8C8C8B8B9),
    .INIT_60(256'h476879695838F5938363625231304141625141414151515161513151624171F4),
    .INIT_61(256'h24240403E3D2F32466A7C8D9E9D9C9DADAD9C9B88755240303F31414E3033444),
    .INIT_62(256'h5545454555554544767676767665657665656555454534342424242424242424),
    .INIT_63(256'h9B5959ACAB9AAA79787878778888989888887777676767676746353545454556),
    .INIT_64(256'hF4F3F3F4D392B317FEFFEFDEDEDECECECEBEBDADADADBDCEDECEBDBDCDDECEBD),
    .INIT_65(256'hB7B7B7B7B8B8B8C8A7976625D3704081045697B8C8C8B8B9B8C8D8C7A7763504),
    .INIT_66(256'hA4736252414141414152513130515151616130203121308146C9E9C7C8C8A8A8),
    .INIT_67(256'h66A7C8D9D9D9C9DADAD9C8A887552403F3F30404F3F3030378686868685837E5),
    .INIT_68(256'h65757676766565656565655545453434242424141414242424241403E3D2F334),
    .INIT_69(256'h7888787777889898888777777767676767564645454545455656454555555555),
    .INIT_6A(256'hFFEFDECEBECECEBECEBEBDBDADADBDBDCECECEBDBDCEDEDECDAC49488AAB9A79),
    .INIT_6B(256'h97764504B2504071F45597B8C8C8B8B9B8C8D8C7A776350404D3C2C3B3A317BD),
    .INIT_6C(256'h31525231304151516172412111112040D387E9C8C8C8A7C8B7B7B7B7C8C8B8B8),
    .INIT_6D(256'hDAC9C8A8875514030304F404F3F3F3F39989786868796837D593625251414131),
    .INIT_6E(256'h65656555454535343424242414142424241404F3E3D2F33466A7C8D9D9D9C9DA),
    .INIT_6F(256'h8877677777676767566756564556554556464545455555555565767676666565),
    .INIT_70(256'hBDBDBDCECEBDADADADADCDCECECDBDBDCDCDBC7A2858AB897888787777878787),
    .INIT_71(256'hF45597B8C8C8B8B9B8C8D8C7A7762504D2F4C392D56ACEEFDEDEDECEBEBEAEAE),
    .INIT_72(256'h61716242311120307114A8D8C8C7C8C8B7B7B7B7C8C8B7A7865614C281504171),
    .INIT_73(256'h0404F3F304F3F3F3999A99685879794827C48262514141313131414141415161),
    .INIT_74(256'h2424242424242424241404F3D3D2F33566A7C8D9D9D9C9DAD9C9B8A887551403),
    .INIT_75(256'h5667675645565655454545454545555545657686766665655565655545353535),
    .INIT_76(256'hBDADADBDCDBDBDCDBDBCBCCD8B48697968787867778787878877777778776767),
    .INIT_77(256'hC9C8D8C7A66624F3D3B292E67BEFEFDFDEDECECEDEBEADBEBEBDBDBDBDBDBDBD),
    .INIT_78(256'h40A156C9C8D8E8A7B7B7A7B7C8C8B7A77635D28150404172045697C8C8C8A8B9),
    .INIT_79(256'hAAAA9A897878786858F6A3725251424131314152514040617261515231102030),
    .INIT_7A(256'h241404F3E3D2F3357697C8D9D9DADAC9DAD9C8A88755240303F4F404F4F4F3F3),
    .INIT_7B(256'h4545454545555545444445979755556665666555454535242424242424242414),
    .INIT_7C(256'hBDBCBDCDCD9B6947476878776777877777878888787878776777676656565645),
    .INIT_7D(256'hB2B2928BFFBEBFCFCECECECDCEBEBEBECECECECEBDBDBDBDBDBDADADADADAC9C),
    .INIT_7E(256'hA7A7A7B7C8B8A79755F3B27040304182F45597A7C8C8B8B9B8D9D8B7965524F4),
    .INIT_7F(256'h5868169351414142314131315251405162515151524130303060E387B8D8B7D8),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_35_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_35_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module vga_rom_blk_mem_gen_prim_wrapper_init__parameterized11
   (p_31_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_31_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_31_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFE1FFFF80FFE000001FFF80FFFE3FFFFFFFFFFFFFFFFFFFFFFFE1FFFF80FF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFC1FFFFC3FFF000000FFF00FFFE3FFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFE00FFFC7FFFFFFFFFFFFFFFFFFFFFFFC1FFFE83FFF8000007FE00FFFC7FFFFF),
    .INITP_03(256'hFFC0FFFC000007FF00FFFCFFFFFFFFFFFFFFFFFFFFFFFFC1FFFE03FFFC000003),
    .INITP_04(256'hFFFFFFFFFFC1FFFFFCFFFE000007FF80FFFCFFFFFFFFFFFFFFFFFFFFFFFFC1FF),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFFFFFF000007FFC07FFDFFFFFFFFFFFFFF),
    .INITP_06(256'h800007FFF87FFBFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFF800007FFF07FFB),
    .INITP_07(256'hFFE1FFFFFFFFFFC00007FFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFFFFFFFE1FFFFFFFFFFC00007FFFF3FFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFFE00007FFFFFFFFFFFFFFFF),
    .INITP_0A(256'hFFFFFFF00007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFFF00007FF),
    .INITP_0B(256'hFFFFFFFFF3FFFFFFFFFFF80007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFF),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFFFFFE3FFFFFFFFFFF80007FFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'h0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FFFFFFFFFFFC0003FFFFFFFFFF),
    .INITP_0E(256'hF3FFFFFFFFFFFE0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FFFFFFFFFFFE),
    .INITP_0F(256'hFFFFFFFFFFDFFFF3FFFFFFFFFFFF0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'h7697C8D9D9D9C9C9D9C9C8A88755240303F4F4F4F4F4F3F39AAAAA9989686858),
    .INIT_01(256'h44453486C955556655655555454535242424242424242414141403F3E3D2F335),
    .INIT_02(256'h5847476767677798888877676777889877776756565655454545454545454534),
    .INIT_03(256'hBEBECECECEBEBEBEBECECECEBDBDBDCDBDBDACACACADADADACACBDCDCCAC9B9A),
    .INIT_04(256'h14C2715051615161045697B7C8C8B8B9B8C8C8B7A76514E3B27128DEDFBFBFBF),
    .INIT_05(256'h4141313152514141615151616151414040506025B9B8B7B7A79797A8B8A77656),
    .INIT_06(256'hD9C9C8B88755240304F4F4F4F4F4F3F3AAAAAA9A89786857687948E593413152),
    .INIT_07(256'h55555555454535342424242424242424141403E3E3D2F33576A7C8D9D9C9C9C9),
    .INIT_08(256'h77877777677777888877675656665645555545454545454534452466FA764555),
    .INIT_09(256'hBECECECEBDBDCDCECDBDADACACACACACACBCBDBCBCACBCDC9A68473646676767),
    .INIT_0A(256'h045697B8C8C9B8B9C9B8C8B7865504B2A2B4CDFFDFBFBFBEAEBECECECEBEBEBE),
    .INIT_0B(256'h51516161616151404130408246B9A7A78867778777775625C371504040405192),
    .INIT_0C(256'h0304F4F4F4F404049A9A9A9A9A89785758686948D56120415252413151625141),
    .INIT_0D(256'h24242424242424241414F3E3D3D2F33576A7D8D9D9C9C9CAD9C9C8B887552403),
    .INIT_0E(256'h8777776666666655565545455555454534452435FBB945455555555545453535),
    .INIT_0F(256'hBDCDBDBDBDAD9C9CACACACBCACACBCDDCCAB7936253657566777888777676777),
    .INIT_10(256'hB8B8C8B77645F4A2937BFFEFDFAECFAEBEBEBEBDBDBDADADBEBEBEBEBDCDCDCD),
    .INIT_11(256'h41305130B367A9CA689AECEC996715A28240404041515192046697B8C8C9B8B9),
    .INIT_12(256'h9989999A9A9989785758686927A3413051525141415151514152616161616151),
    .INIT_13(256'h1414F3E3D3D2F33576A7C9D9D9C9C9CAD9C9C8A8865513F303F3F3F4F4F40404),
    .INIT_14(256'h555545455545454534353424DAFB463545555555454535352524241424141414),
    .INIT_15(256'h9C9B9BACBCBCBCBCCCBCBB994715266766778777676777887777777776666655),
    .INIT_16(256'hE6FFFFDECFBECFBEBEBEBEBEBDBDADADBEAEADADBECECDBDADBDBDCDCDBDACAC),
    .INIT_17(256'hCCCDFDFEFDED58932020314141516192046697B8C8C9B9B9A8B8C8A77656E382),
    .INIT_18(256'h685868796916A340405162514141515141516251616161514141105151D4DCFD),
    .INIT_19(256'h76A7C8D9D9C9C9C9D9C9B8A8864513F3F3F3F3F3F3F40404898989999A9A9A99),
    .INIT_1A(256'h3524352498FC8825354555453535353524241414141414141414F3E3D3D2F335),
    .INIT_1B(256'hBCBCCCBB9A583626355667777767677777878787777666655555555555554545),
    .INIT_1C(256'hBEBEBEBEBEBEBDBDADAD9DADBDBDBDBDBDBDBDBDBDBDBCACAC9B9BACBCAC9B9B),
    .INIT_1D(256'h73100020314050B20456A7B8C8C9B9B9B9A8B8978645B2817BEFEFDFBECEBEBE),
    .INIT_1E(256'h30406172514141515151515151616151413120312007FEFFFFDEBDBCDDFFEE7B),
    .INIT_1F(256'hDAC9B8A8865523030303F3F4F4F4F3F389899A9A89899A9A896858687968F572),
    .INIT_20(256'h344545453435352424241414141414141404F3E3D2C2E3247697C8D9D9D9C9C9),
    .INIT_21(256'h2545567787776766667777777776766566555565655545454524352487FCEB35),
    .INIT_22(256'hADADADADADADADBDCDBDBDBDBDBCACACBCACACAC9B8B8B9BABBCABABBBBB7936),
    .INIT_23(256'h0466A7B8C8C9B9B9B9B8B8977624B2D5DECEDFDFBEBEBEBEBEBEBEBEBEBDCDCD),
    .INIT_24(256'h515141414141415141205110219DEFEFCFEFFFDEADACBDDF7CA5010031515091),
    .INIT_25(256'h130404040404F3F389898A8A8A8A8A9A9A796858687947D46140516251414141),
    .INIT_26(256'h24241414142424240404F3E3D2C2E3247697C8D9D9DACAC9DAC9B8A886552303),
    .INIT_27(256'h455666667676665566555555554545444514353587EBFD353545554544343434),
    .INIT_28(256'hBCBCBCBDBDBDBCACACACAC9B8B8B9BBC9B8A8AABCBBBAAAA5645455677777777),
    .INIT_29(256'hB9A8C9976604D369EFDFCFADBEADCEBDBEBEBEADADBDBDBDBDBEBEADAD9CACAC),
    .INIT_2A(256'h4120302163CFEFDFEFDFCFDFDFAD8C8DDF8CF84200205181F466A7C8C8C8B8B9),
    .INIT_2B(256'h898989899A9A9A9AAA89796868797937B3615161514141415141314142414141),
    .INIT_2C(256'h1404F3E2D2D2E22466A7C8C9D9DAC9CADAC9B9A8764524131414040404040303),
    .INIT_2D(256'h55555545456655343445241477DBFD7835555555454444343424242424242424),
    .INIT_2E(256'hCDAC9B9BACBCAB8ABC8A799AABBBCBBACA673535466677768756456666767777),
    .INIT_2F(256'hEFCFCEBEBECEBEBEBECEBEADADBDBDCEBEADADBDBDADADAC9CBDCDBCBCBCBCAB),
    .INIT_30(256'hCEDFDFCEDFDFBE8C6BDEDE2952001041E355A7C8D8D8C9B9B9B9986667D316EE),
    .INIT_31(256'h99998978687879791682506251414231314141515151515141313110D7EFDFCF),
    .INIT_32(256'h76A7C8C9D9DADADAD9C9B9A88655342314141404040404048989999999999999),
    .INIT_33(256'h3444241467CAFDA924455555544454343424242424242424140403E2D2E2F334),
    .INIT_34(256'h7ABBBB9A89AABBCBCACA67254666567676767766455666667666553524343545),
    .INIT_35(256'hCEADADBDCECEBDADBDADADBDBDCDCDCDACACACBCAC9BACCDCDBCABAB9B9BABBB),
    .INIT_36(256'h8C5A9CEF6B630041E43586C7D8D8D9D9A8C9A88825D4ABEFCEBEBEAEBEBEBEAD),
    .INIT_37(256'h47D4614141413131313141414141515151312111E7EFDFDFBECEBEBECEEFDFBE),
    .INIT_38(256'hDAC9C9A886553424241414141414141489999999999999999999998978787879),
    .INIT_39(256'h25355555445555443424242424242424140404E3E2E2F33576A8C9D9DADADADA),
    .INIT_3A(256'hCABACA8824357776668787664556666676666655452424443444242467BAFDEB),
    .INIT_3B(256'hAD9CADADADBDBDBDBDAC8B8B9BBCBCACBCBCBCBCAB9BABBCCC8AAABB8989AABA),
    .INIT_3C(256'h71046697B7E9E9B8B8C998784769FFCEBEBEBEAEBEBEBEADADADBDBDBDADBDBD),
    .INIT_3D(256'h314141414141515152312111F8EFDFDFCEBEBDADBECEDFDEEFAC6B9CDEADE731),
    .INIT_3E(256'h2424241414141414898999999999999989999A99897878897937A33031413141),
    .INIT_3F(256'h3424242424242424240404E3E3E2F34576A8C9D9EADADADADAD9C9A886553423),
    .INIT_40(256'h777676766666565566665566564534244434242456A9FDFD3534555555555544),
    .INIT_41(256'h9CBCBC9B7A9BABACABABACBCACABABABBBCC9A89AAAA898999BACAA977353577),
    .INIT_42(256'hC8B88868BBFEDEBEBEBEBEBEBEBEADADADAD8C7B9CCECEACADBDBDBDBDBDBDAC),
    .INIT_43(256'h41312110E7EFDFCFDFCEBEADAEBEBECECEEFCE7B7CBEAE7BE5E41587C8B8C8D8),
    .INIT_44(256'h8989899999999999999999AA997878788958E551203152524141414141515152),
    .INIT_45(256'h240404F3E3E2F34576A8D9D9EADADADADAD9C8B8865534232424242424142424),
    .INIT_46(256'h6666554545454534342424245688FCFD45245565455555443424242424243424),
    .INIT_47(256'hABBCAB9B9BABBCABAB9ABBBB899ABA78A99888A9B97735357656667676766655),
    .INIT_48(256'h9DADADADADBEBDADBDBD9C6B7BADCDBDBDBDBDBDACBDBDACACACBCBC9B7A8AAB),
    .INIT_49(256'hDFCEBEBEBEBDBECECECECEBE9D8CADDECD69375788A8B8E9B8B899BBFEEF9DBE),
    .INIT_4A(256'h998999AAA9897878796837A320205141514131415151515141313110B6EFEFCF),
    .INIT_4B(256'h76A8D9D9EAEADADAD9C9C8B89665443424242424242424248989898999999989),
    .INIT_4C(256'h442434345677DBFD67244555445544443434242424342424240404F3E3E2F345),
    .INIT_4D(256'hABABABBBBB896899996788A9A9A9983545456666667676665566554524344545),
    .INIT_4E(256'hADBDBD9C7B6B9CDECDBDBDAC9CACACACBCAB9BABBCBC9B8A9BABBCAB9BABABAB),
    .INIT_4F(256'hBDCEEFDFBE9D8C8CCDEECD8A6898B8B7C8A899FDEEAD9D9D9DADADADADBDBDAD),
    .INIT_50(256'h897979066130514151413131415151413141311164DFEFCFCFCEBEBEBEBEBDBD),
    .INIT_51(256'hD9D9C8B8966544342424242424242424898989898989898999899999AA998878),
    .INIT_52(256'h98143445444534443434242424343424240404F3E3E2F34576B8D9D9EAEACADA),
    .INIT_53(256'h57A99988A9B9889855555556556676765555555534243444443445456677CAFD),
    .INIT_54(256'hCDBDBDBDACACACAC9BBCBCAB9BABAB9B8A9AABBCBC9B8A8AABABCBBB89AAAA68),
    .INIT_55(256'h9CADDEDEBC9998B8B898AAEEAD8D9D7CADBDBDADADADADADBDAC9C9C9C9C9C9C),
    .INIT_56(256'h51413131414141414142312132AEDFDFDFCECEBECECEBDBDBDADADCEDECEBEAD),
    .INIT_57(256'h2424242424242424898989898989898989999999A9A9998878788948C4715151),
    .INIT_58(256'h3434242424343424241404F3F3E2F34586B8D9EAEAEADADADAD9C9B897654434),
    .INIT_59(256'hA8665566665555666645344545343444443455556677CAFDCA14244544553444),
    .INIT_5A(256'hBC9B9BABAB9B9BBB9B7A7ABBBC9B8A9A9A9AABBBAA999999787888887898A887),
    .INIT_5B(256'h8899CCCD7C9D7C9C9CADAD9C9CADADADACAC9C9C9CAC9C8B8B8B9BACAC9B9B9B),
    .INIT_5C(256'h42413132109DDFEFDFCFCEBDCDDECEBDBDBEBEBEBDCECECEAC9C9CBDEEEDCAA9),
    .INIT_5D(256'h89898989898989898999A99999A999896878796827B361715141413130314141),
    .INIT_5E(256'h14140403F3E2033576B8D9EAFADADADADAD9C9B8976544342424242424242424),
    .INIT_5F(256'h7645455545344544444434557798DAFDFC041435454434343424242424242424),
    .INIT_60(256'hAB9A8A7A8AABAB9AAB9A8A99AAAA9999A9576799887788A99898564576765555),
    .INIT_61(256'hACACAD9C8B9CBDACBDBCACAC9B8B9CBCBC9B8B9BBCBCABAB9BABABABABABABBB),
    .INIT_62(256'hDFDFCEADCDDEBDCEBEBEBDADBDCECECECECEBD9D9CBCEDFD99BBCDAD8C8C9C9C),
    .INIT_63(256'h9999999999A9A9A98878787858F59271624141413041515231424231005BDFDF),
    .INIT_64(256'h76B8D9EAFADADADADAD9C9B89765443424242424242424248989898989898989),
    .INIT_65(256'h455555668798DAFDFD151424354434343424242424242424141403F3E3E20335),
    .INIT_66(256'hABAA9A99999999A98899674678887798A8A88756557676556665556645343434),
    .INIT_67(256'hACACACACACACACAC8BABAB9BABBCBCABAB9B9A9AABBBAB9AAABBAB9A798AAACB),
    .INIT_68(256'hBDBDBDADADBDBDBDCDCEBEADADBDCCCCFDCC9C9C8C7C8B9C9C8C9CAC9C9CAC9C),
    .INIT_69(256'h997878897847E49261515151313041414131312100E7EFEFDECEDECDBCCDCDDE),
    .INIT_6A(256'hDAD9C9B896654434242414141414241489898989898989999999999999A9A9A9),
    .INIT_6B(256'hFE361424344434343424242424242424141403F3E2E2034576B8C9EAFADADADA),
    .INIT_6C(256'h88998867577898878898A8874555867665655545554534445565668697A8DAFC),
    .INIT_6D(256'hABABABBBBBABABAB9B9BABABABABABAA9ABBBBAA8A899AAAAABAAAAA99898999),
    .INIT_6E(256'hCDCDCECEBEBDBDBC8BBDBD9C7B6B8B9B9C8B9CAC8B8B8B9CACACACACBCBCAC9B),
    .INIT_6F(256'h5151626141304141413121211063EFEFEFCEEECDABBCDDDDCDBEBEAEADADBDCD),
    .INIT_70(256'h242414141414141489898989898999999999999999A9A9A999887878897826B3),
    .INIT_71(256'h2424242424242424141403F3F3E2034576B8C9EAEADADADADAD9C9A886554434),
    .INIT_72(256'h7788A8A876556655656545344545445565768697A8B9DAFCFE46042434453434),
    .INIT_73(256'h9A9AABABABABBBBBAAAAAAAABBBA89689ABABAAA997878789988A99957578877),
    .INIT_74(256'hAD7B8CBDBD8B6A7A8B8BACAC7B7A9BACACAB9CBCBCAC9B9BCCAB9BABBBAB9A9A),
    .INIT_75(256'h4141312021319CDEEFCDDDCC9B8AACDECEBEBEBEBDBDBDCDCDBDBDCECEBEBDBD),
    .INIT_76(256'h9999999999999999999999999999A9A9A9898878788957D45041515141304151),
    .INIT_77(256'h14141403F3E2034586B8C9EAEADADADADAD9C9A8865534242424141414141414),
    .INIT_78(256'h6576554445343465658697A8B8B9DAFCFE570414244534342424242424242424),
    .INIT_79(256'hAAAA99AACBCBAA7989A9AAA988887877889998989867467788988787A8975524),
    .INIT_7A(256'h6A7A8B8B8B9BAC9B9B9B9BACAC9B9BACABBBAB9A9ABBAB8AAB9A8A9AABBBBBAA),
    .INIT_7B(256'hCDBDBCAB9A697ADDDEBEAEAEBDBDBDCDCDBDBDBDCDBDBDBEADBDAC8BACDEBC6A),
    .INIT_7C(256'h99999999999999A9AA99998868898826825151414041414131413121312007DE),
    .INIT_7D(256'h86B8C9EAEADADADAEADAC9B88655342424241414141414148999999999999999),
    .INIT_7E(256'h7697A7B8C9C9DAFCFD57F41424453434242424242424242414141403F3E20345),
    .INIT_7F(256'h899989888888988888888888988857465698987798A876554555555534233465),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_31_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_31_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module vga_rom_blk_mem_gen_prim_wrapper_init__parameterized12
   (p_27_out,
    clka,
    addra);
  output [8:0]p_27_out;
  input clka;
  input [15:0]addra;

  wire [15:0]addra;
  wire clka;
  wire [3:3]ena_array;
  wire [8:0]p_27_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFDFFFF3FFFFFFFFFFFF0001FFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFF3FFFFFFFFFFFF8001FFFF),
    .INITP_02(256'hFFDFFFE3FFFFFFFFFFFFC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFF3FFFFFF),
    .INITP_03(256'hFFFCFFFFFFFFFFFFDFFFE3FFFFFFFFFFFFE000FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'h0071FFFFFFFFFEFFFDF9FFFFFFFFFFCFFFE1FFFFFFFFFFFFE0007FFFFFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFF0003C7FFFFFFFFCAFDFC7FFFFFFFFFFCFFFE1FFFFFFFFFFFFF0),
    .INITP_06(256'hFFFFFFFFDFFFC3FFFFFFFFFFFFF8003E1FFFFFFFFC001FC0FFFFFFFFFFDFFFC1),
    .INITP_07(256'hFFFFFF000006FFFFFFFFFFDFFFE3FFFFFFFFFFFFF8001E07FFFFFFFC0003E07F),
    .INITP_08(256'hFFFFFC0007FC1FFFFFFF800000FFFFFFFFFFDFFFE3FFFFFFFFFFFFF8000FE0FF),
    .INITP_09(256'hBFFFE3FFFFFFFFFFFFFC0003FC0FFFFFFEC000002FFFFFFFFFBFFFE3FFFFFFFF),
    .INITP_0A(256'h000003FFFFFFFFBFFFE3FFFFFFFFFFFFFE0001FFFBFFFFFFE000000FFFFFFFFF),
    .INITP_0B(256'h007FF83FFFFFF8000001FFFFFFFF3FFFE3FFFFFFFFFFFFFE0000FFF8FFFFFFF0),
    .INITP_0C(256'hFFFFFFFFFFFF00003FF10FFFFFFC0000007FFFFFFF3FFFE3FFFFFFFFFFFFFF00),
    .INITP_0D(256'hFFFFFEFFFFC3FFFFFFFFFFFFFF00001FF207FFFFFF0000000FFFFFFF7FFFC3FF),
    .INITP_0E(256'hFFFFFE00000007FFFFFFFFFFC3FFFFFFFFFFFFFF80000FFA07FFFFFD20000007),
    .INITP_0F(256'hFFFFC00001FC1FFFFFFF40000003FFFFFDFFFFC3FFFFFFFFFFFFFF800007FC0F),
    .INIT_00(256'h8B8A8B9BAB9BABBC9BABAB9A9A8A9A9A9A9A9A9A9AAAAAAAAAAAAAAAAAAABACB),
    .INIT_01(256'hCDCEBEBEBDBDBDBDBDBDBDBCBDADADBEADADBDCDBC9CACCD9B8B7A6A7A9BAC9B),
    .INIT_02(256'h99A9A98968888968E59361414040413051415142411073DEBD9C7A7AAB9A699B),
    .INIT_03(256'hDADAC9B887653424241414040414141489899999999999899989899999999999),
    .INIT_04(256'hFD68F41414343434242424242424242414141403F3E2034587B8C9EAEADADADA),
    .INIT_05(256'hA9778898889888563577887777878797554545453423346596A7A7B8C9DADAFB),
    .INIT_06(256'hAB9AABBB9A79799A898A9A9A9A8A9A9AAAAAAABAAAA9AACA9999887888999988),
    .INIT_07(256'hBDBDBDBCBCACADADADCEDECDBCBC9C7BBCAB8B7A6A7A9B8B7A8B9B9B9B9BABAB),
    .INIT_08(256'h37D5826141414130414162523120206ADE9B59589ABB8A59ACBECEBEBDBDCDBD),
    .INIT_09(256'h14140404040414148989999999999989898989999999999999A9A98978788878),
    .INIT_0A(256'h342424242424242424141403F3E2034587B8C9EAEADADADADAC9C9B887654434),
    .INIT_0B(256'h6735569887667787985534453434445597A7A7B8C9CADAEBFE68F41414343444),
    .INIT_0C(256'h8989899AAAAA9A89999999BABAAA8988BAA9888898A998678888777898887798),
    .INIT_0D(256'hADADCDEEEECDACAD9BABBCBC8A6A7A8B7A9B9B8A8AABAB8A8AAAAAAAAAAA9A89),
    .INIT_0E(256'h30306231203110D6DEAC8A5858AAAB798BADCEBEADBDCDBDADBDCDCDBCBCADAD),
    .INIT_0F(256'h8989898999898989898989899999999999AAA999897878896805A37151515141),
    .INIT_10(256'h14141403F3E2034587B8D9EAEADACADADAD9C9B8976544232414140404041414),
    .INIT_11(256'h8787663424446576A796A7B8B9B9DBECFDBAE304243434343434242424242424),
    .INIT_12(256'h8999899999998899999999997877998867676777888898979876566677777777),
    .INIT_13(256'hBDAC8B9BCCBC8A587A9A79AB8A8A9A8A9AAA9AAAAABA99AABA99897889AAAA9A),
    .INIT_14(256'hDEBD699A9A67BA9A69ACCECEBEBEBEADADBDCDBDBCBCBDBDADADADADADBDBECE),
    .INIT_15(256'h899999999999999999999999898878788858E471514130414141414131212142),
    .INIT_16(256'h87B8D9EAEADACADADADAC9B89775443424141414040414149999898989898989),
    .INIT_17(256'hB7A7B8C9C9CAEBECFDCBE304243434343424242424242424141404F3E3E20345),
    .INIT_18(256'h67999999A97877A98968575777889898A8876655567777677787764534446586),
    .INIT_19(256'h699A8A8A9A79899AAA99AA79BA99AAA999BAA9A9897989798979586878999988),
    .INIT_1A(256'h798ABDDFDFBEADBEBDBDBDCDCDCDBDACAD9D9D9C9C9C9DADCDCDAC9BABABABBB),
    .INIT_1B(256'h9999999999897878988816926151415241414141412121215ABD8A3778A999AA),
    .INIT_1C(256'hEADAC9B897755544242414140404141489898989898989898999999999999999),
    .INIT_1D(256'hFDDBD304143434243424242424242424141403F3E2D2034587B8D9EAEADADADA),
    .INIT_1E(256'h9978675667779798979887665656777766778766343465A7C8C8C8D9CADBFCFC),
    .INIT_1F(256'h89798A899A999A999978AA8989AAE4F53727267979687878788899BAA9776756),
    .INIT_20(256'hADADADBDCDCDBDBDADAD9D9C9C9C9CACBDCDCDBCACABABBCCC5869588A8A79AA),
    .INIT_21(256'h889957C4615152524141414141312110A5FFCC16162657689A7A9BCDDEBEBDCE),
    .INIT_22(256'h342414141414141489898989898989898999999999999999999999A999998878),
    .INIT_23(256'h2424242424242424241404F3E2D2F33587B8D9EAEAEADADADAD9C9B897755444),
    .INIT_24(256'h879798876645567766778776454476B8C8C8D9D9DAEBFCFCFDEBD2F314343434),
    .INIT_25(256'h799A898A5847F5377969265826E4E4053615256788A9B9677788887766667787),
    .INIT_26(256'hBDBDBDADADACACACACBDCDCDDDBCAB9BCCCC8A694869ABF50627799A8A696858),
    .INIT_27(256'h514141414131100010DEFEABF5E4D30558698ABCEEFFDEADCEBEBECECDBDBDCE),
    .INIT_28(256'h8989898989898989899999999999999999999999999989887899780582515152),
    .INIT_29(256'h141404F3E2D2F33597B8D9EAEAEADADADAD9C9B8977554443424141414141414),
    .INIT_2A(256'h77665656566686B8C8B8C8C9DAEBFCFCFDDBD3F3132434342424242424242424),
    .INIT_2B(256'h8A9AF5B3D4062647577846256798988867778887776666668777778787664545),
    .INIT_2C(256'hBDBDBCBDDDDDBCAB7A8ADD8A587AD59317F638F627067A8A5848D4060606278A),
    .INIT_2D(256'h20D6FFDD6916C3E4C32689BBDCEEEEDEBDADBDCECEBDBDBDBDBDBDBDBDBCBCBC),
    .INIT_2E(256'h8989898999999989999999999999898978888947C46141525141313141312110),
    .INIT_2F(256'h97B8D9EAEAEADADADADAD9C8A776554434241414141414148989898989898989),
    .INIT_30(256'hB8A7A8DAEBFCFDFDFECAE3031434343434242424242424241404F3E3E2D2F345),
    .INIT_31(256'h055767676677A8A88787777777776656567787878777563556565656455586C8),
    .INIT_32(256'hAB79698ABC69404062417373A4A4D5B4B4C4E517172706696969E57192C3D4F5),
    .INIT_33(256'hE4D3E32689CCDDDEDEBDBDBDCECEBDBDBDBDBDBDBDACACACBDBDBCBCCDCDCDDD),
    .INIT_34(256'h99999999999999998878786806824041514131313141312031418BDEDD3806D4),
    .INIT_35(256'hEADAC9B8A7766555343424141424141489898989898989898989898999999989),
    .INIT_36(256'hFE88F3032434343424242424242424241404F3E3E2D2034597B8D9EAEAEADADA),
    .INIT_37(256'h9887767677776756566787877787775624456666353476B8978697DAFBFCFDFD),
    .INIT_38(256'h3110104120627262C5B4516283B40727481717B4D4D4D4F4F405468856457777),
    .INIT_39(256'hDDDEEEDECEBEBDADBDBDBDBDBDADACACACBDBDBDBDBDCCDDFEBCAC598A9BA341),
    .INIT_3A(256'h8878687947B3404041414131314141311041A4DECDAC38F5F4F3E3F4E40558BC),
    .INIT_3B(256'h4434241424242424898989898989898989898989899989899999999999999999),
    .INIT_3C(256'h2424242424242424141404F3E2D2034597B8D9EAEAEADADAEADAC9B897766555),
    .INIT_3D(256'h67564677878777762445565645456686866687DAFCFDFDFDFD57F30334343434),
    .INIT_3E(256'h6373C673418394E6F693D572C41727F537261567884635779797877777777777),
    .INIT_3F(256'hADBDBDBDBDADADADADBDADACBDBDBCCDACEDDDAB5959AC076221312121418373),
    .INIT_40(256'h4151414141414141512031E7BDCDAB69261504F3F4E4D4D4166ACDDECECDBDBD),
    .INIT_41(256'h8989898989898989898989899999898999999999999999AA8988687969D55140),
    .INIT_42(256'h141404F3E2E2033597B8D9EAEAEADADAEADAC9B8A78665444534141424252424),
    .INIT_43(256'h6655243566568787874587CAFCFCFDFDFE04F303242434343434242424242424),
    .INIT_44(256'hC5B462617282B4D4271636155767364676979777777777776756565677878787),
    .INIT_45(256'hADADADADACBCBDCDCDBCCDCDAC49497B393100102121A531528494C6D694B5D6),
    .INIT_46(256'h51304100636BCDCCAA6735040404B3E4D4D4E57AEEDEBDCECECDADADBDAD8C9D),
    .INIT_47(256'h8989898989898989999999999A9A9A9A999968787927A3305141524131414141),
    .INIT_48(256'h97B8D9EAEADADADAEADAC9B8A786654434241414242424248989898989898989),
    .INIT_49(256'hA86687CAFDFDFDFDFCF30313242434342424242424242424141404F3E2E20335),
    .INIT_4A(256'hA3E506F43657674635779887665656776767565666768787877624244566A8A8),
    .INIT_4B(256'hCDAC8B9CCDBD59F75A5A73101000B6326353B584B58394D6E6B5834162617293),
    .INIT_4C(256'hCBAA88885704E4E4E3F5C4E5699CDE9CACADADADAD9D8D9D9DADADACACACBDBD),
    .INIT_4D(256'h9999999A9A9A9A9AAA9978787948D5515151624130414141514120620062CDED),
    .INIT_4E(256'hDADAC9B8A7866544342424242424242489898989898989898989898989898989),
    .INIT_4F(256'hA9E31414343434242424242424242424141404F3E2E2034597B8D9EAEADADADA),
    .INIT_50(256'h044677877767666767676666566676877787453524779898987788CAFDFDFDFD),
    .INIT_51(256'h077B5A840011951032A5959494423173E6D5D56241514172B4A392A305365747),
    .INIT_52(256'h0415052738A4397BDECDCEBD9CBEBE7C9D9CACACACACACBD9CBDAC9CACBC8B5A),
    .INIT_53(256'hAA99787879692682615162523131415141515220314183BBEDDBBAA9A9884736),
    .INIT_54(256'h34343434253435358989898989898989898989898989898999999A9A9A9A9A9A),
    .INIT_55(256'h2424242424242424141404F3E2D2034597B8D9EAEADADACADADAC9B897766544),
    .INIT_56(256'h666777665656667677876656245687987788A9EBFCDCFDFE46E2142434343424),
    .INIT_57(256'h1111A563A584213183E6F6A4314131626293B48271B316470557777777776656),
    .INIT_58(256'h288BCDCDBD9C8C9D9CAC9C9C9C9CACACACBCAC9B9BACBDDD7A18386AA421B521),
    .INIT_59(256'h614152514141415151525141523120A3CCABBBCBAAAABAA98877474748C5C5A4),
    .INIT_5A(256'h79897989898989898989898989898989999A9A9A9A9A9A9AAA998978687958C4),
    .INIT_5B(256'h141403F3E2D2034597B8D9EAEADADACADADAC9B8977655444434343424343535),
    .INIT_5C(256'h87879856353577A898B9DAFCFCECFDFDF4E22434343434242424242424242424),
    .INIT_5D(256'h30B4B4D652312052313083A48261722605677846364656565666666666564545),
    .INIT_5E(256'h9CACAC9C9C9C9C9CACAC9C9C9C9C9CCDDDAB17288BE763731110329584F78431),
    .INIT_5F(256'h5151417241206220A3FDCCAADBA9CACAA9CABA6806D6C5C5938338DDBCADCE9C),
    .INIT_60(256'h89898989898989899A9A9A9A9A9A9A9AAAAA9988687879067241414141414141),
    .INIT_61(256'h97B8D9EAEADADADADADAC9B89775544444343424243434357979798989898989),
    .INIT_62(256'hCADACAFCFCFDFEBBE3F32434343424242424242424242424140403F3E2D20355),
    .INIT_63(256'h42414162A4C57272D41626052567777756566666666645356676986666244598),
    .INIT_64(256'h8BACAC9C8B8B8BACDDABCC38176AF79400843253C6A4D683306251D683410031),
    .INIT_65(256'h41B4CCEDBBECBAC9DAA99958F6E6E62883B482B48ADDACBDACACAC9C9C9B8B9B),
    .INIT_66(256'h9A9A9A9A9A9A9A9A9AAAAA9968687937A3514141415140415141624151612041),
    .INIT_67(256'hDADAD9B89665544434342434343435347979797989898989898989898989898A),
    .INIT_68(256'hF41434343434243424242424242424241404F3F3E2D2035597B8D9EAEADADADA),
    .INIT_69(256'hA3C3B3C31567878776666566666666564556777777452477DACAB9FCFDFEDD27),
    .INIT_6A(256'hEDECDCBB28075A391073A53173C662D651513194946210206384314283837283),
    .INIT_6B(256'hCAA98927F6F707F6B4F59240C479ABACACACAC9C9C8B8B8B9B9C9B8B9CACACAC),
    .INIT_6C(256'h9AAAAAA988676848D57241414141404152525161616141304120839BEDAAEBEB),
    .INIT_6D(256'h343434353545353479797979798989898989898989898A8A9A9A9A9A9A9A9A9A),
    .INIT_6E(256'h24242424142424241404F3F3E2D2035597B8D9EAEAEADADADADAD9B896655444),
    .INIT_6F(256'h87766655666677773556565677773587EBDABAFDFDFEBBC30434353434342434),
    .INIT_70(256'h9431183141944152625151517383310041E652214162A49492A3A2B2E4153556),
    .INIT_71(256'hD5A3D3D3D458DDABACACAC9C9C8B8B8B7B9B9C9C9C8B9CCDCCDCCCDDBC38D528),
    .INIT_72(256'h069361514141415131626251616151412031415148FEDBCABA99681606E607A4),
    .INIT_73(256'h797979797989898989898989898A8A9A9A9A9A9A9A9A9A9A99AA9AAA89574748),
    .INIT_74(256'h0404F3F3E2D2034597B8E9FAEAEADADADADAC9A8866544343434243435353535),
    .INIT_75(256'h5645567756569766FBDAFDDCFEDC040424354545343434342424242424242424),
    .INIT_76(256'h314141519373522020F79410204141B59392B3F5E43656466767664556776756),
    .INIT_77(256'hACACAC9C9C9C9B9B7A8B9B9C9B8B9BAC9CBDBCBDACAC1894F7F7D67431B52131),
    .INIT_78(256'h3141515161616161413041305116BBFCDB9968061637D6B5D6E5E3D226ABDCBC),
    .INIT_79(256'h8989898A8A8A8A8A9A9A9A9A9A9A9A9A9AAAAAAA9A58264737E5826172513041),
    .INIT_7A(256'h97B8E9FAEAEADADADACAC9A88655343334342434353535357979898989898989),
    .INIT_7B(256'hCAFCECEDFE68F314344545453434343424242424242424240404F3E3D2D20345),
    .INIT_7C(256'h20C5B431314141B4D5B3A382A2B2154725355656565656665656455666668666),
    .INIT_7D(256'h8B8B8B9B9B9B8B8B8CAD9CACACBC6A17F607B5E642A573849484624252626230),
    .INIT_7E(256'h412030414151B368DBBA48474716B5B5E6D4F33589CCDDDDCCBCACACACACACAC),
    .INIT_7F(256'h898A9A9A9A9A9A9A9AAA9AAA9A5826374705A261615141413141515151616151),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_27_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_27_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h1000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[14]),
        .I1(addra[15]),
        .I2(addra[13]),
        .I3(addra[12]),
        .O(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module vga_rom_blk_mem_gen_prim_wrapper_init__parameterized13
   (p_23_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_23_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_23_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFC3FFFFFFFFFFFFFFC00000F81FFFFFFF40000001FFFFF9FFFFC3FFFFFFFFFF),
    .INITP_01(256'h0000003FFFFFFFFFC3FFFFFFFFFFFFFFE00000F83FFFFFFF80000001BFFFFBFF),
    .INITP_02(256'h00F03FFFFFFFF20000003FFFFBFFFFC3FFFFFFFFFFFFFFE00000F03FFFFFFFC0),
    .INITP_03(256'hFFFFFFFFFFF00000F03FFFFFFFFB0100003FFFFFFFFFC3FFFFFFFFFFFFFFE000),
    .INITP_04(256'hFFFFFFFFC3FFFFFFFFFFFFFFF00000E07FFFFFFFFF81000007FFFFFFFFC3FFFF),
    .INITP_05(256'hFFFFFFE0000003FFFFFFFFC3FFFFFFFFFFFFFFF00000E07FFFFFFFFFC0000001),
    .INITP_06(256'hFFF80000C0FFFFFFFFFFE2000000FFFFFFFFC3FFFFFFFFFFFFFFF80000E07FFF),
    .INITP_07(256'hC3FFFFFFFFFFFFFFFC0000C0FFFFFFFFFFF00000007FFFFFFFE3FFFFFFFFFFFF),
    .INITP_08(256'h0000003FDFFFFFC3FFFFFFFFFFFFFFFC0000C0FFFFFFFFFFF80000007FFFFFFF),
    .INITP_09(256'hC0FFFFFFFFFFF40000001FFFFFFFC3FFFFFFFFFFFFFFFC0000C1FFFFFFFFFFFC),
    .INITP_0A(256'hFFFFFFFFFE0001C0FFFFFFFEFFFA0000001F8FFFFFC3FFFFFFFFFFFFFFFE0000),
    .INITP_0B(256'h87FFFFC3FFFFFFFFFFFFFFFF0001807FFFFFEFFFFF0000080787FFFFC3FFFFFF),
    .INITP_0C(256'h7FFFFF8000000187FFFFC3FFFFFFFFFFFFFFFF0001803FFFFF0FFFFF80000003),
    .INITP_0D(256'hFF0001806FFFFFFDFFFFC0000001BFFFFFC3FFFFFFFFFFFFFFFF000180EFFFFE),
    .INITP_0E(256'hFFFDFFFFFFFFFFFF80018001FFFFC003FFE00000003FFFFFC3FFFFFFFFFFFFFF),
    .INITP_0F(256'h0000000FFEFFC3FFFDFFFFFFFFFFFF800180007FFF8001FFE00000000FFFFFC3),
    .INIT_00(256'hDACAB9A886553423342424343535353579797989898989898989898A8A8A8A8A),
    .INIT_01(256'h454555454534343424242424142424240404F3E3D2D2034597B8E9EAEAEADADA),
    .INIT_02(256'hC5B4A382A381B30567466777563535556677352456667687DAFDEDFEFEF4F324),
    .INIT_03(256'h8B9C9CAC9BAB7A59F607A4A462836241524241311041628352A4935241415283),
    .INIT_04(256'h689A374826A3A4B5A4A2F366CADCDCDDDDCCCCBCBCAC9B9B9B8B8B8B8B8B8B7B),
    .INIT_05(256'h9AAA9A9A9A6937264726C46151514141304151516161615151514140513040F5),
    .INIT_06(256'h342424343535353579797989798989898989898A8A8A8A9A8A9A9A9A9A9A9A9A),
    .INIT_07(256'h24242424242424240404F3E3D2D2035597B8E9EAEAEADADADAC9B9A876442323),
    .INIT_08(256'h36F44677777666665566352556566698FBFCFEFEFDF414344555554534343424),
    .INIT_09(256'h38E68393C5A330304131215241412052C5A4516241528362948351627293B305),
    .INIT_0A(256'h62B32598CBECDDDDDDDCDCDDDDCCAB8B8B8B8B8B8B8B8B7B7B8B9CAC9B8B7A6A),
    .INIT_0B(256'h4747059251515131304151616172615141624120415151C4267958370592B483),
    .INIT_0C(256'h797989898989898989898A8A8A9A9A9A9A9A9A9A9A9A9A9A9AAA9A9A9A794826),
    .INIT_0D(256'h1404F3E3D2D2035697B8E9EAEAEADADADAC9B9A8764423232424242435353535),
    .INIT_0E(256'h4545565656565656B9FCFEFEFD04243445555555443434242424242424242424),
    .INIT_0F(256'h20312131202020B5F783317241948372945220313183A3A3F5D3255666877676),
    .INIT_10(256'hDCDCDCEDEDEDCCAB9B8B8B8B8B9B8B7B6A7A9BACBCAC8B7B6A49C5D5B4F69240),
    .INIT_11(256'h304151617272626162414141403051C448694827D4B4934072D356A8CBECDDCC),
    .INIT_12(256'h898989898A9A9A9A9A9A9A9A9A9A9A9A9AAA9A9A8A895827375827B351414131),
    .INIT_13(256'hA7B8E9EAEAEADADADAC9B9A88644232334242424353535358989898989898989),
    .INIT_14(256'h46FDFDFEFDF42455556565554544343424242424242424241404F3E3D2D20356),
    .INIT_15(256'hB541626230B56283843131314152834071810446669797A76545565646664514),
    .INIT_16(256'hAB9B7A7A9BAC9B7A7A7A9BABCCBCAC9C8C6A3838D4E5268120314120314152F6),
    .INIT_17(256'h72414151414051824869382882B4614092D345A9DBECDDCDDDECDCDDEDEDDCCC),
    .INIT_18(256'h9A9A9A9A9A9A9AAAAA9A9A8A79796947475847E5714041414141515171727262),
    .INIT_19(256'hDAC9B9A886442323342424243535353589898989898989898989898A9A9A9A9A),
    .INIT_1A(256'h556565554545343424342424242424241404F3E3D2D20356A7C8D9EAEAEADADA),
    .INIT_1B(256'h52213121313183934071154656663465866556453556452515CAFEFECB043465),
    .INIT_1C(256'h8A7A9A8BBCACAC8BAC18289B79F567476210003194B4B4076220736241936283),
    .INIT_1D(256'h278A491782925061B2F466DAFCFDEEEEEDEDEDDCDCDCDCCCCCBB9A7A8AABAB9A),
    .INIT_1E(256'h9A898A8969797968474758169341415141414151617272625241413031615140),
    .INIT_1F(256'h34242424253535358989898989898989898989999A9A9A9A9A9A9A9A9A9A9A9A),
    .INIT_20(256'h24342424242424141404F3E3D2D2035598C8D9EAEAEADADADAC9B9A886442324),
    .INIT_21(256'h6161C3D3F424148776767645455545454657FEFE781454655565655545453434),
    .INIT_22(256'h6B29387AAB8926583841202020107207315273737362937231423142202141B4),
    .INIT_23(256'hB22498EBFCFDEDDDDDEDEDEDEDEDDCDCCCCCBB9A899ABBBB8A7A9A8AAC9C9C6B),
    .INIT_24(256'h47475848C451415141414151617272625262624151514061179B59B493615050),
    .INIT_25(256'h8989898989898989898989999A9A9A9A99898989898989898979797969798A89),
    .INIT_26(256'h1404F3E3E3D2035697B8EAEAEAEADADACAC9B9A7764423242424242424343535),
    .INIT_27(256'h66876666454566665656FEFD3634646465656586975513453434343434343424),
    .INIT_28(256'h480730203010B4A420A494942073414131314252422031C57251A392C3C2D304),
    .INIT_29(256'hEEDDDDDDDDDDDCECDCDCDBBBAA999999AA9A9A8A9BAC9C6B6B39498B9ABAA916),
    .INIT_2A(256'h62514141617272626262414151515172486A388362405080E335A9FCFDFEFEDE),
    .INIT_2B(256'h8989898989899A9A8A9A9A8989797979797979697979898968474748F5613051),
    .INIT_2C(256'h97B8EAEAEAEADADADADAB9A87644232424242424243435358989898989898989),
    .INIT_2D(256'h4577FECA35456475656555768655243434343434343424241404F3E3E3D20356),
    .INIT_2E(256'h73C6B5624152415162306262524120A44130514082C405366697666656456555),
    .INIT_2F(256'hECECDBCABAB9A999999A9A9A9BBDBD6B6B495A8B9BBBBA99375906401020D683),
    .INIT_30(256'h6262514151515192387A179341304091F356B9FCFDFEFEDEEEDDDDDDDDDDDCEC),
    .INIT_31(256'h89897979797969697979797979898A9A79584758179340515151414051727262),
    .INIT_32(256'hDADAB9A876441324242424242434353589898989898989898989898989898989),
    .INIT_33(256'h657665557665343434343434242424241414F4F3E3E2035697B8EAEAEAEADADA),
    .INIT_34(256'h62305151414152A4412030727272A3F5468766566665555576B9FC5735667585),
    .INIT_35(256'h88899A898ABCBD8B6B396A8BABCBBACB371659B420415973738473A420525141),
    .INIT_36(256'h388AE583203050B11476CAFDFDFEEEDEEEDEDDDDDDDDDDECFCECDBDADACAB9A9),
    .INIT_37(256'h797979798A8A9A9A9A68476848C45141515151415162726252625251514161A3),
    .INIT_38(256'h2414141424343535888889898989898989898989897979697969696969796968),
    .INIT_39(256'h3434343424242424141404F3E3D2035597C9EAFAEAEADADADADAB99776341313),
    .INIT_3A(256'h3120209393316282F45667567776656566C9DA46355575857576655565654534),
    .INIT_3B(256'h6A186AACBCCC9AAABB583769A372D51031525273314183305161307262419383),
    .INIT_3C(256'h2487DBFDFDFEEEEEEEDEDDDDDDDDDCECECEBDBDADADACAB99999A9898AABBC9C),
    .INIT_3D(256'hAA79475869067230415251414161626252625252514061B3588AA462213160C2),
    .INIT_3E(256'h8889898989797979797979797969686869696969797979798989898A8A8A9A9A),
    .INIT_3F(256'h1404F4F3E3D2034598C9EAEAEAEADADADADAB997763413131414141424343434),
    .INIT_40(256'h9215575777878676659857675656755475756565655544443434343434242424),
    .INIT_41(256'hAA89372748D5621000B541204162735130513073835273203141315284315251),
    .INIT_42(256'hEEDDDDDDDDEDECECDCDBDBDBDADACACAB9A9A999898AABAC6A188BBDABAB9A9A),
    .INIT_43(256'h415151414151626252625262624161B37979A351213181F334A8ECFDFEFEEEEE),
    .INIT_44(256'h68686868586858685869697979798A8A9A9A8A8A8A8A8A9AAA8958475838B441),
    .INIT_45(256'h98B9EAEAEAEADADADADAB9977634131414141414242434348989898989797969),
    .INIT_46(256'h4455E34646567565756565656544444434343434342424241404F3E3E3D20345),
    .INIT_47(256'h20B53142526241833130304183A47231415242639400318361C3364756778676),
    .INIT_48(256'hDCDBDBDBCACACACAC9B9B9B999899AABAC5A9CBCABAB9B8999CABA1527065100),
    .INIT_49(256'h62625162625171C48A68B3512120910445C9FCFDFEFEEDEEEDEDDDDDDDEDECDC),
    .INIT_4A(256'h586979797A8A8A9A9A9A8A8A8A8A8A8A9A9A68474848F6623041514141516272),
    .INIT_4B(256'hDADAB99776341314141414142424243489898979797868685858585858586869),
    .INIT_4C(256'h756575655555454434343434242424241404F3E3D3D2035598B9EAEAEAEADADA),
    .INIT_4D(256'h3141312062B4948321213184B50000D66282F52636667675C9D9676767564586),
    .INIT_4E(256'hEAC9C9C9A98979699B9BACBCBCAC8A79A9CABAAAD427C5314131734294413183),
    .INIT_4F(256'hAA37A341112071E355C9FDFDFEFEDDEDDDEDDDDCDCECECDCCBCBCBCBCBCBCACA),
    .INIT_50(256'h9A9A8A8A8A8A8A9A9A99794837481793313141515151516272625262725182E5),
    .INIT_51(256'h2424142424242424787878786868685858585858586969696969697A7A8A8A9A),
    .INIT_52(256'h34343434242424241404F3E3D3D2035597C9EAEAEAEADADADADAB89766341314),
    .INIT_53(256'h52310073B62100A49361C4263656666624F3A1C399DA76767675756555555534),
    .INIT_54(256'h47BBCCBCCD9B6A7ACBAABADB78E569832031A520948300831062311031517262),
    .INIT_55(256'h35C9FCFDFDFDEDEDEDEDECDCDCECECDCCBCBCBCBCBDBCBDADAC9A898674615E4),
    .INIT_56(256'h9A898968274837C441414151514141627362627272619206AB167240104160A1),
    .INIT_57(256'h686868685858585858585869696969697979797A8A8A8A8A8A8A89898A8A9A9A),
    .INIT_58(256'h1404F3E3D3D20356A7C9DAEADBDBEBEADAD9B9A8762413242424242424242424),
    .INIT_59(256'hA49340B3F525CABA15603060C399FB6675867555555545343434343434242424),
    .INIT_5A(256'h8ADCCBBADB470628312141529383318362313141205241414221214208422152),
    .INIT_5B(256'hEDDCECDBDBFCDCDCDBCADBDBCADBEBB9775614F3031425251535DBFDBCBC7B49),
    .INIT_5C(256'h72305152514141627272626182617237ABB4934131305091F346BAEBFCFDFDFD),
    .INIT_5D(256'h5969696969696979797979898A8A8A8A8989898989898989899A9A6847584806),
    .INIT_5E(256'hA7C9DADBDBDBDBEAEADAB9A87624132424242424242424244848484848585858),
    .INIT_5F(256'h48826171B289B966767565665544344434343434342424241414F4E3D3D20355),
    .INIT_60(256'h0700414162A47383413130315242416352001052C6A53110B59382A381F52689),
    .INIT_61(256'hDBDADADBBA996714D2C2C2F36687A8A89877789AEDDD6A5A6ACCECBACABA1627),
    .INIT_62(256'h62727272826192389B947330405071C3C3F3143688CAEBFDEDDCFCEBDBECDBDB),
    .INIT_63(256'h79797989898A898989898989898989898A9A9A79475757268241515241414141),
    .INIT_64(256'hEADAB89876240324242424343534242438384848485858585969697979797979),
    .INIT_65(256'hA87655555555543434242424242434342414F4E4D3D20355A8C9DADBDBDBDBDA),
    .INIT_66(256'h00202041A4734241633110A5738484214294838292E5E41627616160B2988897),
    .INIT_67(256'hF2141466A8C98787B887465789CCDD7A6A8BDCED8ABBAA2669B4106251A49452),
    .INIT_68(256'h9B9372304071A2E4264625F40404479ABBCBECEBECFCDBCBDAD9D9CAA95603D1),
    .INIT_69(256'h89898989898989899A999A8958475747B461515241414141527272826261B448),
    .INIT_6A(256'h2424243434342424373848485859595969697979797979797989898989898989),
    .INIT_6B(256'h24241414242434342414F4E4D3D20355A8C9DADBDBDBDBDAEAD9B89876340314),
    .INIT_6C(256'h734221C63121C66353B5B5416182C44817C4374788DA98C9C987665444545434),
    .INIT_6D(256'h353536250568DCCC6A8BACCDCC8ACB99166840305262411041311051A4622110),
    .INIT_6E(256'hE41504F4250515379ABBECEBECFCECDBC9D9C9B887352334245614463567F314),
    .INIT_6F(256'h9A89999968474758E572515241415141517262836161D5488B8372405172A2D3),
    .INIT_70(256'h3838485859596959696979797979797979798989898989898989898989898989),
    .INIT_71(256'h2414F3E3D3D21366A8C9DADBDBDBDBDAEAD9B897662403132424242424242424),
    .INIT_72(256'h5332E7A48372207293D58A78A9A9A8C9A9989787653434342414141424343444),
    .INIT_73(256'hAC8BBD9DBD9B9AEB5757061041311031312020A494311020940052941110B563),
    .INIT_74(256'h58BBFCFCECECECEBC9C9B8A7875575A75535B19080C380A2B2C3D3D3D3D426CC),
    .INIT_75(256'h1782305151414141416262836171E5588A827240517192A291B29170B2B2E426),
    .INIT_76(256'h6969797979797979797979898989898989898989898989899989999A89474758),
    .INIT_77(256'hA8C9DADBDBDBDBDAEAD9B8976624F30314141414141424243848485858595959),
    .INIT_78(256'h2082F5D44698C9C9A98898D9DA76141414141424243434342413E3D3C2D21366),
    .INIT_79(256'hCA366993103120411052A4E652202020A53163522100D694A542A5D694C59320),
    .INIT_7A(256'hC9C8B7A79786969624B1704092925050716081819191B216BCACADBE9CAC9ABA),
    .INIT_7B(256'h416251936182E5588A827240406182817091817092507181C357CBFCFDECECDB),
    .INIT_7C(256'h79798989898989898989898989898989898999998968475837A3304151414141),
    .INIT_7D(256'hEAD9B8975613E203030414141414142438384848585858586969797979797989),
    .INIT_7E(256'hB99877BAFDCA35F314142434342424242413F3E3D3D20365A7C9DADBDBDBDBEA),
    .INIT_7F(256'h7394C58300103121B56342522100C6C6748452847373D6732041719215988798),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_23_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_23_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module vga_rom_blk_mem_gen_prim_wrapper_init__parameterized14
   (p_19_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_19_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_19_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h181FFF1C007FF000000007FEFFE3FFFC7FFFFFFFFFFF800180083FFF0C00FFF0),
    .INITP_01(256'hFFFFFFFFC00180180FFFBC10BFE800000007FC7FE3FFFC7FFFFFFFFFFFC00180),
    .INITP_02(256'hFE1FF3FFFC7FFFFFFFFFFFC001801C2FFFFC13FFF000014000F47FE3FFFC7FFF),
    .INITP_03(256'hFFFFFE000100003F8FF3FFF87FFFFFFFFFFFE001801F6FFFFFF7FFF400010000),
    .INITP_04(256'hE0038007FFFFFFFFFFFE000100001FCFF3FFF83FFFFFFFFFFFE003801FFFFFFF),
    .INITP_05(256'hF81FFFFFFFFFFFF003802FFFFFFFFFFDFF0000000403FFF3FFF83FFFFFFFFFFF),
    .INITP_06(256'h00000000FFF3FFF80FFFFFFFFFFFF003807FFFFFFFFFFEFF0002002800FFF3FF),
    .INITP_07(256'hFFFFFFFFFF3F80020000025FFBFFF803FFFFFFFFFFF003807FFFFFFFFFFF7F80),
    .INITP_08(256'hFFFFFFF80300FFFFFFFFFFFF9FC001800000FFF7FFF803FFFFFFFFFFF00300FF),
    .INITP_09(256'h1FF3FFF800FFFFFFFFFFF80300FFFFFFFFFFFF9FC0080000003FF3FFF801FFFF),
    .INITP_0A(256'hFF87F01800000007E3FFF800FFFFFFFFFFF80700FFFFFFFFFFFF8FE00C000000),
    .INITP_0B(256'h07007FFFFFFFFFFF87F01C00000007E3FFF800FFFFFFFFFFFC07007FFFFFFFFF),
    .INITP_0C(256'h00FFFFFFFFFFFC07007FFFFFFFFFFF83F8340000001FF3FFF800FFFFFFFFFFFC),
    .INITP_0D(256'h00000047F3FFF800FFFFFFFFFFFC07007FFFFFFFFFFF81E84C00010087F3FFF8),
    .INITP_0E(256'hFFFFFFFF80FC1E20020007E3FFF800FFFFFFFFFFFE0F003FFFFFFFFFFF80F84C),
    .INITP_0F(256'hFFFFFE0F003FFFFFFFFFFF807C018002000783FFF800FFFFFFFFFFFE0F003FFF),
    .INIT_00(256'hA14060B338078362415161716070A29217CD8C9DCEAC8AAACB89273830201020),
    .INIT_01(256'h7A72724030517171927050A206A3925150B236DBFEFDECCAC9C8B7A786969654),
    .INIT_02(256'h8989898989898989899999899978585848E5514051414141415162936293D469),
    .INIT_03(256'hF303141414141414383838384848484858596969697979797989898989898989),
    .INIT_04(256'h0313233434242414241403E3D3D21365A7C9DADBDBDBDBEAEAEAB8975503E2F3),
    .INIT_05(256'hB5312042312152C6B5942120A54162C652303092E45735A988985778ECEC47F3),
    .INIT_06(256'h20836192A25091C3A337DDBDCDBDAC9BABDC1648A44110627341523030304162),
    .INIT_07(256'h615092269AF5B4616160A278FDFEFDDBB9B8B79675869533E381D49BBC7A8362),
    .INIT_08(256'h899A99899989685858177240514141413151629372A3C4796962724040516161),
    .INIT_09(256'h3838383838384848485859696969797989898989898989798989898989898989),
    .INIT_0A(256'h342404E3D3E21365A7C8DAEBDBDBDBEAEAD9B8975603E2F3F303040414141424),
    .INIT_0B(256'h94C5414162843131C572206161374768889989AA68CBB2E3F324234434341434),
    .INIT_0C(256'h15F489EDCDCDCD8B6A7ABCF52793302031314141302051B573311021211073C6),
    .INIT_0D(256'hA292D3E4CCFEEDDCC9B8B7967575644435C39AEDEE6A62948393B405918091B2),
    .INIT_0E(256'h5827B461415151514141627293C4C48A6951A430414151516171B347ABA38282),
    .INIT_0F(256'h4858586869697978798989898979898989898989898989898989999999997857),
    .INIT_10(256'hA7C8DAEBDBDBDBEAEAD9B8975603D2F3F3030414141414242727372727273848),
    .INIT_11(256'h42B56240406130F5AADCFD9AF5588191E314453424344545343414F3E3E22365),
    .INIT_12(256'h7B5A8A27F5D4303030204131313152A45231630052114208A407625242736242),
    .INIT_13(256'hC9B7B796757565552436CBEDFEDDF68372A3E405A1A1044545662588FDCDADAD),
    .INIT_14(256'h41415272A3C4C48A5951A430414141515050D458AB16B3B4C3F426F58AFEFEDC),
    .INIT_15(256'h7979898989898989898989898989898989898989999978586848D56130515241),
    .INIT_16(256'hEAD9B8975603D2E3F30304141414141469594838272737384848585858686879),
    .INIT_17(256'h06FEFFBB589A05819191D3044534554444441404F3F32476A7C9EAEBEBDBDBEA),
    .INIT_18(256'h2010313131414162203120422121631883F783948362633162A4A45210303093),
    .INIT_19(256'h5577BADBFDFECC4726363614F30376879765664588EDBDBD8C8B59BBF5378230),
    .INIT_1A(256'h38419441414151618271B357AAAA2705E42647F538EEFEFDCAA7A79675757586),
    .INIT_1B(256'h89898989898989898989898999897968586806823051624141415172A4C4E59B),
    .INIT_1C(256'hF303041414141414AB9B8A695948383738484858585868787879797979797989),
    .INIT_1D(256'h26A281804534655454442404F3F32476B7C9EAEBEBDBEBEBEAE9B89755F3D2E3),
    .INIT_1E(256'h312020315252C60883F79494B55294202042D6D6A462527331838AEDAABA6868),
    .INIT_1F(256'h576645454576B8A7A78686762468DDBDAD9C9BAB9A1616401010414131414141),
    .INIT_20(256'h92A2810567BAAA688957362669FFFFCCCAA79696767685969798B9EBCBAABA78),
    .INIT_21(256'h7989898989998968476837B35151523141415172B4B406AB2741935151416171),
    .INIT_22(256'hBCBCABAB9B7A5948383848485858686868687979797979898989898989898989),
    .INIT_23(256'h55442414F3F32476B8D9EAEBEBEBEBEBFAE9B89755F3D2E3F3F3041414252524),
    .INIT_24(256'hD6F794429452B5202010B5638494C673425251279A4747687916B26035557565),
    .INIT_25(256'hA7A78676350468DDDDBC9B8ACC0648B420003141414141414141410063B59518),
    .INIT_26(256'h677889AA9AFEFEEDC997969686768696D9C9B988364677772455659786A7A7B7),
    .INIT_27(256'h475847E57251515141414172B4B327AB1741936251516181C3D3B2C2D2144625),
    .INIT_28(256'h5948383848585858686868797979797979898989898979797989898989998979),
    .INIT_29(256'hB8D9EAFBEBEBEBEBEAD9B89755F3C2E3F3F3041414252525CCCCCCCCCCAB9B7A),
    .INIT_2A(256'h2073A4F773299400211073A4A3D51658585836147755445555442404F3F32486),
    .INIT_2B(256'hFDED8BAB8A68164751002031314141413041203131C6C6F7D6A5736395529431),
    .INIT_2C(256'hB9969696968686969798B9A977676666669786C8A7B897B8B7A7A7766635F468),
    .INIT_2D(256'h41414161B4A348AB1751937261506181E3E324F20356567756777899BBFFFFCB),
    .INIT_2E(256'h5868686879797979797979797979797979898989899989896847471693405162),
    .INIT_2F(256'hEAE9B89745E2B1D2F3E3F30414141414CCCCCCCCCCCCBCAB8A7A593837374858),
    .INIT_30(256'h41512073A46272E5688999A87735346555442404F3F22486B8D9EAEBEBEBEBEB),
    .INIT_31(256'hC52110303141414141314152529408C6A57484A58463522051A407F718A51121),
    .INIT_32(256'hB9A9A9B9A99898A897B887B8A8B8B8B8A7D99797873524E399DCDDAB9B9A3657),
    .INIT_33(256'h1650928261607191F30345244486658797B9C9BACCFEFECBB99696A696A79696),
    .INIT_34(256'h7979797979797979797979798989898968475837A340415231414151B4A358AB),
    .INIT_35(256'hE3E3E3F304041414DCCCCCCCCCCCCCCCBCAB8A59483748585858586869796969),
    .INIT_36(256'h054788982445454555442404F3F23486B8D9EAEBEBDBEBEBEAD9B89745D2A1C2),
    .INIT_37(256'h4120203131A5849495C6D795217442102052B48373B595427341205294846293),
    .INIT_38(256'hA8C9C9C9D9C9C9B8C8B8A78686763424E3BBEDBC9BCC68055872103141414141),
    .INIT_39(256'hF3455575869686B8A8C9B9CBEDFEFEDBB8969696A6B7A78798CAB9CACAB9CAA9),
    .INIT_3A(256'h797979798989898968476848C451404131415151B4A369AB16508282616081A2),
    .INIT_3B(256'hCCCCCCDCDCDDDDDDDDCDBC8A5938374858585868697969697979797979797989),
    .INIT_3C(256'h5544241403F23486B8D9EAEBDBDBEBEBDAC9B89735D291A2D3E3E3F3F3F30404),
    .INIT_3D(256'h63D7A53273C683312020D59363C6C6959473213152D618E6C527F53646354545),
    .INIT_3E(256'hB8B8A79786866544F3B2CCCDBCACAB1637F54152104221314141214221A418B5),
    .INIT_3F(256'hA8C9BAABCDFFFDDBB8A695A6A6A7A79798B9C9BABACACABABACACACACAC9C9C9),
    .INIT_40(256'h89574758F57130514130624182B39BABF6408271616160A204457585969697A8),
    .INIT_41(256'hDDDDDDCC9B694837475858585868696969796979797979797979798989898999),
    .INIT_42(256'hB8D9EAEBDBDBEBDBCACAC89735C291A2C2D2E3F3F3F30404DCDCDCCCDCDCDCDC),
    .INIT_43(256'h203051C5C5B5B5A5957352634262C5F6387A58686766564444341303F3024486),
    .INIT_44(256'h0391F6BD9CDD8A7916478321111131206220529483B5E63818A594B5C6634220),
    .INIT_45(256'hA7A695A696A7A897A8B9CACACACABABABABACACACADAC9C9C8B8A79796867554),
    .INIT_46(256'h6131623072C49A9AE5408282717160A214558696A6A697A8B8C9BAABDDFFFDDA),
    .INIT_47(256'h3748585858586969696969697979797979797989897989999968576826A25061),
    .INIT_48(256'hCACAC89735C28192B2C2E2E3E3F3F404DCDCDCDCDCDCDCDDEDEDEDDDCC9B6948),
    .INIT_49(256'h84A542426252948341D5275767A8989765441403F3F23486B8D9EAEBDBDBEBDB),
    .INIT_4A(256'h1547F62021214131412062C528F7304163F7D6737342312020204183D6D6A5C6),
    .INIT_4B(256'hB8B9CADADBCACACBCACBDADADADAC9C8C8B8A7979696755513A15107DEACCCAB),
    .INIT_4C(256'hD440829271716192146596A6A6A697A8C9C9AAABDDFFFDCA9796A6A696A7B8B8),
    .INIT_4D(256'h696969697979797979797989897989999978575847C350515130512072F68A9A),
    .INIT_4E(256'hB2C2D2D3D3D3E3E3DDDDDDDCCCDCDDDDDDEDEDDDDDCC9A584748485858585869),
    .INIT_4F(256'h8383C4163646356666451403F3F23476B8D9EAEBDBDBEBEBCACAB89735C28192),
    .INIT_50(256'h205151B428065141527342844231212131215220A5C6C6E78473B56241525273),
    .INIT_51(256'hDBDBDBDADAD9C9C8B8B7A7969686856514C350418BACCCAB5826488320312141),
    .INIT_52(256'h045596A6A6A697A8C9B99AABDEFEECBA9796A6A6A6A7B8B8B8B9C9DADACACADB),
    .INIT_53(256'h79797989897989999989575758E45140514141306127698AB430829271716191),
    .INIT_54(256'hDDEDDDDDCCCCDDDDDDDDDCCCDCDDBB8A48474758585858696868696969797979),
    .INIT_55(256'h452404F3E3F23486B8D9DAEBDBDBDBDBCACAB89735C28192A2C2C2D2C3C3C3D3),
    .INIT_56(256'h4183526310313121423110318452D7F7B55294C6632194A5B4A4B4C4F5673524),
    .INIT_57(256'hB7B797969696856524D3611073CDABCCBB164806303010204140B44838E56120),
    .INIT_58(256'hC9B99ABCEEFFECB9A7A6A6A6A6A7B8A8B8B8C9DADACACADBDBDBEADADAC9C8B8),
    .INIT_59(256'h9A9A685868058251516241416148588A9330729361716181F34596A6A6A7A7A8),
    .INIT_5A(256'hDDEDDCDCDCEDDCBB694837485858586868686869696979797979798989798989),
    .INIT_5B(256'hB8D9DADBDBDBDBDACAC9B88735C27182A2B2C2C2C3C3C3C3EDEDEDDDDDCDDDDD),
    .INIT_5C(256'h423121634263A5E784422194D684A5B594E6F6C4A2264635241404F3E3E23486),
    .INIT_5D(256'h24C261310007DDDDDD480658822030103010F669050693307272512062422131),
    .INIT_5E(256'hA7A696A6A6A7A7A7B8B8C9D9CACADADBDAEADADAD9C9C8B8B7B7A79696968565),
    .INIT_5F(256'h51723040726969AB823071A361615171D33596A6A6B7B7B8C9A99ABCFEFEDCB9),
    .INIT_60(256'h9A68373758585858686868686969797979797989897989899AAA79586826A361),
    .INIT_61(256'hCAB9B88625B2718292A2B2C2B3B3B3B3EEEDEDEDDDDDDDDDDCDDDDDCDDEDDCCC),
    .INIT_62(256'h4231834284E663D69494E6483726153524242504E3D22476B8C9DADBDBDBDADA),
    .INIT_63(256'hCCAB06370630312031E56947F50582306140A462101042313131524231C695F7),
    .INIT_64(256'hA7B8C9C9CADADADADADADAD9D9C9C8C8B7B7A7969696856524C2715231218BDD),
    .INIT_65(256'h613072A361615061B2258696A6B7B7B8B9999ABCFEFECBA8A796959696A7A797),
    .INIT_66(256'h6868686868697979797979898979898989AA89585847D46151624040B369799A),
    .INIT_67(256'h92A2B2C2B3B3B3B3DDDDDDEEEEEEDDDDDCDCDCDCDCDCDCDCCC8A483748585858),
    .INIT_68(256'h49A43082F589884614242515E3D22376B8C9DADBDBDBDADACAB9B88724B27172),
    .INIT_69(256'h628AF5A25858A37282829361314100213252423163C6D708737383731073D694),
    .INIT_6A(256'hDADAD9D9D9D8C8C8B7B7A7969696856513D36183201083DDDDFD58F558612020),
    .INIT_6B(256'hA2147696A6B7B7A7B9999ACCFEFECBA8979685969696A79797B8C9C9C9DADADA),
    .INIT_6C(256'h797979898979898989AA99686868F56151625130E5586969613072B371615061),
    .INIT_6D(256'hDDDDDDDEEEEEEEDDEDDDDCDCDCDCEDEDDCAB6847475858585868686868697979),
    .INIT_6E(256'h67354604C2E21376A7C9DADBCBCADADACAC9B88724B2617182A2B2C3B3B3B3B3),
    .INIT_6F(256'h71B3D5A3412021003152325384A5E7B6D673A5B5315263C6C518A440B3362599),
    .INIT_70(256'hB7B7A7969696856434D261A4100031F6DDCCBB1547E53010512792C3DC9AE5C4),
    .INIT_71(256'hB8B979EDFFFDCBA89785969686A7979697B8C9D9D9D9DADAD9C9C9C9D9D8C8C8),
    .INIT_72(256'h9A999989585827825051513006588A58513072A38272514081F45686A7A7A7B8),
    .INIT_73(256'hEEEDDDDCDCDDEDEDEDCC9A583748585858586868686868687979797979797989),
    .INIT_74(256'hB8C9DADBDBDADADACAB9B88624A1506182A2B2C2B3B3B3C3CDDDDEDEDEDEEEEE),
    .INIT_75(256'h31423121B68408C6C673D694846373A583D6F772B3363614566767E4C2E31376),
    .INIT_76(256'h13E291B4102100417AEDDC471637402041933027CB2627E5A392179351201031),
    .INIT_77(256'hA78585959696969697B8C8C9D9D9D9D9C9C9C9C8C8C8C8C7C7B6A69696867564),
    .INIT_78(256'h5040514017588A37513072A38272514061D3467696A7B7C8A8A989FEFFEDCAA8),
    .INIT_79(256'hEDDCBB69474758585858686868686879797979797979798989999989585837B3),
    .INIT_7A(256'hCAC9B8861491506182A2B2B2B3B3C3C3DEDEDEDEDEDEDEDEEEEDEDDDDDDDEDED),
    .INIT_7B(256'hC652A5A594737394A5A4C461B337473667F3F4D3B2D22476B8D9EAEBDBDBEADA),
    .INIT_7C(256'h62CCBB8A2638A42010725182E592D40616B472B46241202031212000C6531995),
    .INIT_7D(256'h97A7B8C8C9D9D9C9C9C8C8C8C8C8B7C7C6B6A6969686756423E2A2C420311000),
    .INIT_7E(256'h513072A39272514040B235768696B7B8A899AAFEFFECBAA8968595A6A6A68686),
    .INIT_7F(256'h5868686868687979797979797979798989999989686858E56140515137698A06),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_19_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_19_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module vga_rom_blk_mem_gen_prim_wrapper_init__parameterized15
   (p_15_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_15_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_15_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hF3FFF800FFFFFFFFFFFF0E003FFFFFFFFFFF807A0180020007E3FFF800FFFFFF),
    .INITP_01(256'h801F8000000003DFFFF800FFFFFFFFFFFF0E001FFFFFFFFFFF903F0020020003),
    .INITP_02(256'h000FFFE7FFFFFFC00F8100140803E3FFF800FFFFFFFFFFFF0E001FFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFF9E000FFFFFFFFFFFF00F8000040003C3FFF800FFFFFFFFFFFF0E),
    .INITP_04(256'h080003E3FFFC00FFFFFFFFFFFF9E0007FFFFFFFFFFB007E006000003C3FFFC00),
    .INITP_05(256'hFFFFFFB003DE00280003E3FFFC00FFFFFFFFFFFF9C0007FFFFFFFFFFB003B804),
    .INITP_06(256'hFFFFCC0003FFFFFFFFFFE0019F80200003E3FFFC00FFFFFFFFFFFFCC0003FFFF),
    .INITP_07(256'hFFFC00FFFFFFFFFFFFFC0001FFFFFFFFFFC0008F81000003C3FFFC00FFFFFFFF),
    .INITP_08(256'h0067F0A00003F3FFFC00FFFFFFFFFFFFFC0001FFFFFFFFFFC0004701000023E3),
    .INITP_09(256'h00FFFFFFFFFF400023F980000373FFFC00FFFFFFFFFFFFFC0001FFFFFFFFFFC0),
    .INITP_0A(256'hFFFFFFFFFFFC0000FFFFFFFFFF000015FC000003D3FFFC00FFFFFFFFFFFFFC00),
    .INITP_0B(256'h2001CFFFFC00FFFFFFFFFFFFF800007FFFFFFFFF000019FC002003DBFFFC00FF),
    .INITP_0C(256'hFFFE000007FF002001C7FFFC00FFFFFFFFFFFFF800007FFFFFFFFE00000CFE00),
    .INITP_0D(256'hFFF800001FFFFFFFFE000007FF002000E3FFFC00FFFFFFFFFFFFF800003FFFFF),
    .INITP_0E(256'hFC00FFFFFFFFFFFFF800001FFFFFFFFC000003FF002001E3FFFC00FFFFFFFFFF),
    .INITP_0F(256'h00FA023000F3FFFE00FFFFFFFFFFFFF800000FFFFFFFFC000001FE402008A3FF),
    .INIT_00(256'h81A2B2C2B3C3C3D3DEDEDEDEDEDEDEDEEEEEEDEDDDDDDDDDEDEDDC9A48374758),
    .INIT_01(256'hF78393B382164615255646F4D2D20397B8D9EAEBDBDAEAEACAC9B88624915071),
    .INIT_02(256'h20203030D5D4E53769B4D572412020524241204294742974D64242F742848383),
    .INIT_03(256'hC9C8C8C8C8C8B7C7C6B6A6969686756433E2B2E53031212030387A9A37D517F6),
    .INIT_04(256'h308104667686A7B8A898AAFEFEECC9A8A796A6A6A7A796858697B8C8C9D9C9C9),
    .INIT_05(256'h797979797979798989899999786868167140518248698AD5413072A392725141),
    .INIT_06(256'hDEDEDEDEDEDEDEDEEEEEEEEDDDDDDDDDEDFDEDBB683737585868686969697979),
    .INIT_07(256'h25356756F3F34465B8D9EAEBDBDAEAEACAC9B89624A1507191A2C2D2C3C3D3D3),
    .INIT_08(256'h726217A462204131526221B542B61953C65321E752737373B5E6B48292F50435),
    .INIT_09(256'hC6C6A6969686856433D1D3054020202041E59B6927598A69C52031201030D5F5),
    .INIT_0A(256'hA888A9FEFEFCB9978596C7B7A7B796647596B8C8C8C9C9C9C9C8B8C8C8C8B7C7),
    .INIT_0B(256'h8989999978686837823040A358798AB440307192927241413050C346768797A7),
    .INIT_0C(256'hDEDEEEEEDDDDDDDCEDEDEDCC8948375858686868696979797979797979797979),
    .INIT_0D(256'hB8D9EAEBDBDAEAEACAC9B89634B2717192B2C2D3C3D3D3D3DEDEDEDEDEDEDEDE),
    .INIT_0E(256'h415131F721F8F853C6323294D7523183D6D6C58282D347361404E30425142486),
    .INIT_0F(256'h33F2D3F5403131203041F69BBC9B9BAB591010211062C4C46141516220007352),
    .INIT_10(256'h8596A67575A7B7867597B8C8C8C8C8C8C8C8B8B8B8C8B7B7C6C6A69686868574),
    .INIT_11(256'hA34040C4487A7993404071929272414131309115668797A7A88799FCFDEBA886),
    .INIT_12(256'hEDEDEDDCAA684748585868686868687969797979797979798989899989686858),
    .INIT_13(256'hDAC9C8A745D28192A2B2C2D2D3D3D3D3DEDEDEDEDEDEDEDEDEDEDEDEDDDDDDDD),
    .INIT_14(256'hB611636308731073C5F7B4A3E4C31525242414F3C2E35586B8D9EAEBDBDAEAEA),
    .INIT_15(256'h103041F7BCBCCC9B8B41101021205127E631623120106262524162185329E774),
    .INIT_16(256'h86A7C8C8C8C8C8C8C8B8B8B8B8C8B7B7C6C6A696869685744413F3E440414131),
    .INIT_17(256'h4140719293724142313061D356879797A89899DBEBCA8776746443F1F1448596),
    .INIT_18(256'h585868686868686868797979797979798989899989687868E56140E5488A7971),
    .INIT_19(256'hA2B2C2C2C2C3D3E3DEDEDEDEDEDEDEDEDEDEDEDEEEEEEDEDEDEDEDEDBB794848),
    .INIT_1A(256'h83D683C4A3B336353524F3F3E3E22486C8D9EAEBDBDAEAEADAC9C8A755E392A2),
    .INIT_1B(256'h48D5413152305193E69400311083D552511063E78429C695A532A552B5F72142),
    .INIT_1C(256'hC8C8C8C8C8C8C7C7B6B6A696968685644413040551303131313110417ABC9B8A),
    .INIT_1D(256'h314150A225778797B8B8A8CADBBA66654464968575969686A7A7B8C8C8C8C8C8),
    .INIT_1E(256'h6868797979797979898989999978797937924006388A585051517292A3824152),
    .INIT_1F(256'hDEDEDEDEDEDEDEDEDEDEDEDEEEEEEDEDEDEDEDFDCB7948585858586868686868),
    .INIT_20(256'h3434F3F3E3E24486B8D9EBEBDBDADADAEAC9B8A86614D3C2A2B2C2C3C3C3C3D3),
    .INIT_21(256'hB5A51020513838415200B5D7D7F7B684B563739463C6B5103183A49371D40546),
    .INIT_22(256'hB7A6A6A69695856544F30406513131417341202041AC6917161637E5D5B45141),
    .INIT_23(256'hA7C8A8B9DBEBCAA8767696A69596B6A6A8B8C8C9C9C8C8B8C8C8C8C8C7C7B7B7),
    .INIT_24(256'h797989999988888857A27116378A3830516171A2B3A3624221214141D37776A7),
    .INIT_25(256'hDEDEEEEEEEEEEEEDEDDDEDEDDC9A684748585858586969686969797979797979),
    .INIT_26(256'hB8D9EBEBDBDADADAE9D9B9A86614D3B2B2B2C3C3C3C3C3D3DEDEDEDEEEEEEEDE),
    .INIT_27(256'h2031D7D70884E7A5D6A452945252B5B53152947240B34715241303F3E3F33486),
    .INIT_28(256'h34F30506514131525252314220E6ED2705E489BB16D5A4A452835130A459F630),
    .INIT_29(256'h98A8C8B7A7B7C7B7B8B8C9C9C9C8C8C8C8C8C8C7C7C7B7B7B7A6A6A6A5958565),
    .INIT_2A(256'h68E49206388AF630517171B3A3C462523121214181467697A7B8A8BADBFCFCDB),
    .INIT_2B(256'hEDDDDDEDDCAA6847485858585869595869696969797979797979899999988888),
    .INIT_2C(256'hD9D9C9A86725E3B2B2B2C3C3C3C3C3C3DEDEDEEEEEEEEEDEDEDEDEEEEEEEEEFE),
    .INIT_2D(256'hB5A45273420063D6B573738261D37856350304F3E3F32497B8D9EBEBDBDADADA),
    .INIT_2E(256'h52525241314159BC2605D4BB8A7917F65210726182F6D593627308C60863C6C6),
    .INIT_2F(256'hB8B9B9C9C8C8C8C8C8C8B7B7B7B7B7B7B7A6A6A6A596856534F3050561414152),
    .INIT_30(256'h518271B392C462624211214150F4778787988899BBDCFDDCAADBEAB897A7A8A8),
    .INIT_31(256'h4758585858686868696969697979797979798999999888887826C3F5488AB430),
    .INIT_32(256'hA2B2B2B3C2C2C2C2EEEEDEDEEEEEDEDEDEDEDEEEEEEEFEFEEDEDDDEDDCBB7947),
    .INIT_33(256'hB5D6838361C34778562404E3D2F32486B8D9EBEBDBDADADAD9D9C9986725E3A2),
    .INIT_34(256'h37E5E437DC69596A0731626172C4B4B462D619B6B595D6848373735241312173),
    .INIT_35(256'hC8B8B7B7B7B7B7B7B7A6A6A6A6968565341405F551515162624151314130519B),
    .INIT_36(256'h421042316192567798887899ABCCEDCCAAFCFCC998A898A8A8B8B8B8B8B8B8B8),
    .INIT_37(256'h586869697979797979798999999888888836F5F5487A9330517271B392C47272),
    .INIT_38(256'hDEDEDEDEDEDEDEDEDEDEDEDEEEEEFEFEEEEDEDEDDCBB89474758585858686858),
    .INIT_39(256'h6645F3E3D2D23486B8D9EBEBDBDADADAD9C9B9986725E3B2A1A2B2B2B2B2B2B2),
    .INIT_3A(256'h18B572405192A31752E7F7E79452D673736283524163524221F7E6A371B31546),
    .INIT_3B(256'hB7A6A6B6A69585653414F4E45040617262513151415120828AD5C4E5ABDC7948),
    .INIT_3C(256'h78786889BBDCEDCCAAFDFDCAA998989898A8B8B8B8B8B8B8B8B7A7A7A7B7B7B7),
    .INIT_3D(256'h797989899999888888370606387A833041718292A2C38282412131316150F467),
    .INIT_3E(256'hDEDEDEDEEEEEFEFEFEEDEDEDEDCC894747585858586868585868696969797979),
    .INIT_3F(256'hB8D9EBDBDBDADADADAC9B9885615D3B2A1A2B2B2B2B2B2B2DEDEDEDEDEDEDEDE),
    .INIT_40(256'hE6E7F8B67442A563626273735252834120A407A3A3A23615665604E3C2C24586),
    .INIT_41(256'h2414F4D4404072826151514141724120E569D4E5F5ED9A59E6D5D5B461307138),
    .INIT_42(256'hDBFDFDDBB9A9A898A8A8B8B8B8B8B8B8A7A7A7A7A7B7B7B7B6A6A6B6A6958554),
    .INIT_43(256'h884726263859723041718292A2C39282514221414140925767786789DBFCFDEC),
    .INIT_44(256'hFEFEEDEDEDDC8A47475858585868685858686979797879797979798999998878),
    .INIT_45(256'hDAC9B9985604D3B2A2A2B2B2A2A2A2A2DEDEDEDEDEDEDEDEDEDEDEEEEEEEEEEE),
    .INIT_46(256'h73739473624263425252D6839292371525453504C2D23486B8D9EBEBDBDBDADA),
    .INIT_47(256'h7261623051934151303838B4E548CBAB59174938E54030B428E7083252948452),
    .INIT_48(256'hA8B7B7B7A7A7A7A7A7A7A7B7B7B7B7A6B6A6B6B6A69575440314E4D450508293),
    .INIT_49(256'h518292B3A2D39292625131423141510577A87788DAEBEBFBFCFBFBDAB9C9B9B8),
    .INIT_4A(256'h4748585858686858586869797978787969797989899989887868262758486230),
    .INIT_4B(256'hA2A2A2A2A2919191DEDEDEDEDEDEDEDEDEEEEEEEEEEEEEEEFEFEFEEDEDDC8A47),
    .INIT_4C(256'h4163F67261822625F3255714C2E22487B8D9EBDBDBDBDADADAC9B9985704D2B2),
    .INIT_4D(256'h30418BF6D5D479EDDDBCBC16168251070794734295746294A594C66252624162),
    .INIT_4E(256'hA7A7B7B7B7B7B7A6B6A6B6B6A6856534F304E4D4505182938272404151B45210),
    .INIT_4F(256'h61304231313130A367A86656989897A8C9A8978786A7B8A7B7B7A7A796969696),
    .INIT_50(256'h686969697978797969797979899989787889363769384130518292C3A2D49292),
    .INIT_51(256'hDEDEDEDEDEDEDEDEDEEEEEEEEEEEEEEEFEFEFEEDEDDC8A474748585858686858),
    .INIT_52(256'h1404F446F4C21486C8DAEBEBDBDBDAEAEADAB9986714D3B29192A2A281818181),
    .INIT_53(256'hDDDDAB384858E5D5B5B584B6735284A4B5B5F74142318442527341B450712668),
    .INIT_54(256'hA6B6B6A6A6855424E2F4E4B35040B38272615041517241313120C58AE506E49A),
    .INIT_55(256'h36A7A744345502449686755454647575858585857554332296B7C7C7B7B7B7B6),
    .INIT_56(256'h79796979898989788978574779064120618261C3A2B3A2826141313131312151),
    .INIT_57(256'hEEEEEEEEEEEEEEEEEEFEFEFEEDCCAB5837475858585858586968686869686879),
    .INIT_58(256'hB8C9DBDBDBDBDBEAEACAB9986715E3C2A292A29281818181EFEFDFDEDEDEDEEE),
    .INIT_59(256'h7384F8B642B5B5C5B5C608524263635262523161937105686704E33657E22466),
    .INIT_5A(256'hD2E3C3B35051A38272615151517231314141305948D4E526EDFEED582637A362),
    .INIT_5B(256'h86756554445454647474544343536464A6B7C7C7C7C7B6B6A6A6A6A696754414),
    .INIT_5C(256'h8988785779F64130829271B3A2B3A2717252313141312141C277989786767575),
    .INIT_5D(256'hEEFEFEFEEDDCAB58374758585858585869686869696869797979797979898988),
    .INIT_5E(256'hEACAB9986725E3D3A292929281818271EEEEDEDEDEDEDEEEEEEEEEEEEEEEEEEE),
    .INIT_5F(256'h74D7393273427342313141629372E4477814D3D357674565B8C9DBDBDBDBEBEA),
    .INIT_60(256'h726151416262313131523172BC38D4F579FFBB37585806B4839484A5A5A5A5A5),
    .INIT_61(256'hB6A695858596A6B7B7C7D8C7B7B6B6A6A6969696866534F3D3D3A3A35171A372),
    .INIT_62(256'hA39271A3B3A3B3617262412131423131601588A8A887A7B8FAFAF9D8D8C7C7B6),
    .INIT_63(256'h2737485858585858695968696969697979797979798989898888886879E54130),
    .INIT_64(256'hA291929282717161EEEEDEDEDEEEDFEFEEEEEEEEEEEEEEEEEEFEEEFEFEDDBB58),
    .INIT_65(256'h112142B57282D4154667E391E3677687C9DADBDBDBDBEBDADACAB9986725F3D3),
    .INIT_66(256'h41314231C5BC480606CBAA1658684806C542436484D6C67332D74A3284319432),
    .INIT_67(256'hC7D8D7C7B7B6A69696958585755524E3C2C392A3518293727251514072513031),
    .INIT_68(256'h616231213141413140915777989797C8FBFAFAFAF9E9D8C7A6A5A5A596A6A6A6),
    .INIT_69(256'h595969696969697979797969798989898898997889D44141B38282A2C3A2C461),
    .INIT_6A(256'hEEEEDEDEDEEEEEEFFEFEEEEEEEEEEEEEEEFEEEFEFEEDBC582737485858585959),
    .INIT_6B(256'h158805D3A2C256A8D9DAEBDBDBDBEBEADACAB9986715E3D39181828271616161),
    .INIT_6C(256'h1616FD5726794817A4957495B695846353D72A7474637374112121E6A493B3F5),
    .INIT_6D(256'h95857575654503C2B2B382934172827272515140625141414152314130178A69),
    .INIT_6E(256'h3030F55798988797B8B8B8C8D8C7B6A6B6B6A5A6A6B6B7C7C7C7B7B7A6A69695),
    .INIT_6F(256'h79797969797989898999A9889AC45141B38292A2C4A2D4715162413131314131),
    .INIT_70(256'hFEFEFEEEEEEEEEEEEEFEEEFEFEFECC5927374848585858595959696969797979),
    .INIT_71(256'hC9DADBDBDBDBEBEBDAC9B9985614E3D39171818271515151DEDEDEDEDEDEDEEE),
    .INIT_72(256'hD6E7A6E89531B552C7852AA5848432B5213121B5F7618216153668F4B2B10387),
    .INIT_73(256'hA2B3938251728272625261416151415262214252313159CC7916FD7847796917),
    .INIT_74(256'h979696A7B7B7A6A6A5A5959596A6B7B7A7A7A7A7A6969696857565644424F3B2),
    .INIT_75(256'h89A9A9889AB44141C482A2A2C492D4615172514141314131313082268898A897),
    .INIT_76(256'hEEFEFEFEFEFECC59272738484848585859596969697979797979796969798989),
    .INIT_77(256'hDAC9A9875614F3E39271717161515151DEDEDEDEDEDEDEDEEEFEFEEEEFEEEEEE),
    .INIT_78(256'hD76429D7844221A531213183075151F525F478F4A2E30366B8C9DBDBDBDBEBEB),
    .INIT_79(256'h6262625151614151426331426241729ACB9ABA88572648C4E608E8533284E7E7),
    .INIT_7A(256'hA6A6B6B6B6A7A7A7A7A7979696968685757564443403D2A2A3A3937251728272),
    .INIT_7B(256'hC492A2B3C4A2D5615172515262415130314151C33698B8B89686868585859595),
    .INIT_7C(256'h1727384848484859595969696979797979796969697979898899A9889AA34151),
    .INIT_7D(256'hA271516151515151EEDEDEDEDEDEDEDEEEEEEEFFFFEFEFEEEEFEEEFEFFFECC59),
    .INIT_7E(256'h53002163E693519204152647B2A13566A8C9EBEBDBDBDBDBDAC9A887561404F4),
    .INIT_7F(256'h6252424131315182BB9ACBCB15F537A3D6D7D7A6748408F784A5084A53112184),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_15_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_15_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module vga_rom_blk_mem_gen_prim_wrapper_init__parameterized16
   (p_11_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_11_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_11_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h07FFFFFFF00000007C02100073FFFF00FFFFFFFFFFFFF8000007FFFFFFF80000),
    .INITP_01(256'hFFFFFFFFF8000003FFFFFFE00000003A02100063FFFF00FFFFFFFFFFFFF80000),
    .INITP_02(256'h0003FFFF00FFFFFFFFFFFFF8020003FFFFFFC00000003282100023FFFF00FFFF),
    .INITP_03(256'h000000000300100003FFFE00FFFFFF7FFFFFF8020003FFFFFF80000000028010),
    .INITP_04(256'hF8020001FFFFFC000000000300000023FFFE00FFFFFFBFFFFFF8020001FFFFFE),
    .INITP_05(256'h000FFFFFDFFFFFF8020001FFFFE0000000001F00000033FFFE003FFFFFFFFFFF),
    .INITP_06(256'hC64040004FFFF80001FFFFDFFFFFF8000001FFFFFF000000003700400059FFFC),
    .INITP_07(256'hFFFFFFC0000001C440800007FFF80000FFFFDFFFFFF8000007FFFFFF80000000),
    .INITP_08(256'hDFF9FFFC00007FFFFFFFC00000008020000023FFF80000FFFFFFFFFFF800001F),
    .INITP_09(256'h13FFF003001FFFC801FFFC0001FFFFFFFFC00000024010400021FFF000007FFF),
    .INITP_0A(256'h000000A00000001DFFF00F000FFF8C07FFFC0007FFFFFFFFC000000040000000),
    .INITP_0B(256'h003FFFFFFFFFC0000009080001000FFFF01F0007FF9C1FFFFC001FFFFFFFFFC0),
    .INITP_0C(256'h0C01FFDFFFFFFC007FFFFFFFFF800000123C00008007FFF03F0003FFDE7FFFFC),
    .INITP_0D(256'h0000000BFFF0FE0E01FFFFFFFFFC00FFFFFFFFFFC00000126802000007FFF07F),
    .INITP_0E(256'hFFFFC60000288800000003FFF0FC0F01FFFFFFFFFC01FFFFFFFFFFC200000408),
    .INITP_0F(256'hFFFFFC03FFFFFFFFFFC60000298000000003FFF1F88FC0FFFFFFFFFC03FFFFFF),
    .INIT_00(256'hB7A7A7A6969685756565543413F3C292A2938251517272625262525141624141),
    .INIT_01(256'h517241627241513031205182F49887B8C8B8A7969696A6B7A6A6A6A6A6A6A7B7),
    .INIT_02(256'h495969696979797979797969697979898899A9889AA35161C48292B3D4A3E571),
    .INIT_03(256'hEEEEEEEEDEDEDEDEDEEEEEEFFFFFEFEFEEFEEEFEFFFECC590617373848484959),
    .INIT_04(256'hC3043615C2C12487C8D9EBEBEBDBDBDBDAB9A88776341415C361414141514151),
    .INIT_05(256'hC5FEDCCB3705F572F7D68495D79518F7A5D6F84A4242326363103131B5836293),
    .INIT_06(256'h65543424E3C2B281A28271616172626262514152516241415252413141413131),
    .INIT_07(256'h31206282714688A8B8B8B8C8C9C9C8A8B8A7A7A7A7B7B7B7A6B6B6A6A6968575),
    .INIT_08(256'h7979797979797989897899899A927161B3A2A2B3C3B3F5826141515252524141),
    .INIT_09(256'hEEEEDEDEEEEFEFEFEEEFEEFFFFFFCD4806172738384949495959596969696969),
    .INIT_0A(256'hC8D9FAFBEBDBCBCACAB9B89776342415C361414141414151EEEEEEEEEEDEDEDE),
    .INIT_0B(256'hF7A56464B6B608D6D6C6C619423231638410214284947393C40546E3D2F21376),
    .INIT_0C(256'h92827161617262515151415141523141626251414141312142E6FE9B06D447C5),
    .INIT_0D(256'hB8C9C9C9C9DACAB9A8A8B8A7A7A7A6A6C7B7B6A6A6968575543414E3C2B29271),
    .INIT_0E(256'h797999899A927172A393A2B3D4B3F58261516241625251412121417260F488A8),
    .INIT_0F(256'hEFEFEEFFFFFFCD49061727383848494949495959696969696979796969797989),
    .INIT_10(256'hCAB9B89776342415D472414141414151FEFEFEEEDEDEDEEEEEEEEEEEEFEFEFEE),
    .INIT_11(256'hA5849408533221528410315263B58383C4E425D3B1D23587B8D9EAEBDBDBCBCA),
    .INIT_12(256'h5151415141523141626252414141212163418B48D47127E618848595D7E708C6),
    .INIT_13(256'hC9C9C9C8B8B7B7B7A7B6A696968565443403E3A191A371718272716161726251),
    .INIT_14(256'h93A2A3C3D4C30592615172416252524121312162609167A8A8C9D9D9DADACACA),
    .INIT_15(256'h0617272838383849495959696969696969696969697A8A8979689A8A9A827192),
    .INIT_16(256'hC472414131414151FDFDEDEDFEFEFEFEEEEEEEFEFFEFEEEEEEEEEEFFFFFFDD59),
    .INIT_17(256'h8420415273B56262A3E4F5D3C2A12466B8D9EAFBDBDBCBCADAB9B89776351404),
    .INIT_18(256'h62725241414131313173F7E5C4C459D51884B6D7E8F8C6845252950863322142),
    .INIT_19(256'hA7A796968676441303C2A26081A3618272717171717261514151515131523141),
    .INIT_1A(256'h6151624152625231313231626160369898B9DAEADADAC9C9C9C9C9B8A8A7A7B7),
    .INIT_1B(256'h495959596969696969696969697A7A8979689A9A8A72619392A3B3B3D4B305A3),
    .INIT_1C(256'hFDFDFDFDFEFEFDFEEEEEEEFEFEFFEEEEEEEEEEFFFFFFEE7AF607172838383849),
    .INIT_1D(256'h51C4E4C3D3C21466B8D9FAFBEBDBCBCADAB9B897874514E4B361413131414151),
    .INIT_1E(256'h425252C5B4C43828F7B6F8D7D7D794522173C608422121526331524184B55241),
    .INIT_1F(256'hB280816182935183626171717161615141515151316241416272524141413132),
    .INIT_20(256'h322142526150F48898B9DAEADADADADACAC9B9A8A8A8979797867666554513F2),
    .INIT_21(256'h696969596969696969689A8A8A7272A393B3B3B3D4B305B35151514141735241),
    .INIT_22(256'hFEFEFEFEFEFEFEFFEEEEEEFFFFFFFE9B07F61728382838493848495959695959),
    .INIT_23(256'hB9D9EAEBEBDBCBCADAB9B887874514E4A251413131414151ABCBECFDFDFDFDFE),
    .INIT_24(256'hE7F8F8C7B6B6846321A5F7F8212121525262523183A46251418206E470B22577),
    .INIT_25(256'h626271716161515141515151416241416273624141413132223183C593F64907),
    .INIT_26(256'h8898B9B9B9C9C9DAB9B9A9A8A8978776766655342403F3D29160718293825172),
    .INIT_27(256'h5858898A9A8282A3A3C4C3B3E4C305B36162415241734242422142526250C367),
    .INIT_28(256'hFEFEEEFFFFFFFEAC170707283828284938484959696969696969695959696958),
    .INIT_29(256'hDAC9B887662504E48240303131414141E5F52779BBEDFDFEFDFEFEFEFEFEFEFF),
    .INIT_2A(256'h53D7F8F7103121424263525262A4734162C50637A2910456A8C9EAEBEBDACADA),
    .INIT_2B(256'h515151414173413172837241413131212121E73907283918B6E8A6A6B6746374),
    .INIT_2C(256'h9898989887766655241403E2D2C1B190918192B3937262627262727261515151),
    .INIT_2D(256'hB3D4C3B3E4C305B36251415241734142323242425251B357678898A8A9B9C9C9),
    .INIT_2E(256'h2807F717282828494949595969696969686858484848483737477989AAA392A3),
    .INIT_2F(256'h8140403131413030504061A306599BCCDDEDFEFEFEFEFEFEFEFEEEFEFEFFFFBC),
    .INIT_30(256'h31624173419373204238A369AAD3E356A8C9EAEBDADACACADAC9B9775614F4D3),
    .INIT_31(256'h838372514131212132B64A29C6074918A5C653B6F8534295A508F7D700311131),
    .INIT_32(256'h6666665645352404C2B2C3B38261726272726262615141515151514141734130),
    .INIT_33(256'h6241414152524142324332425251B4586888A9B9C9D9C9B9B9B9A89887777777),
    .INIT_34(256'h4949595959585858484737373727261516267889AAB3A3A3A3D4C3B3E4C3F5A3),
    .INIT_35(256'h515140404082F659CCDCEDFEFEFEFEFEEEEEEEFEFEFFFFCD4917F60718282849),
    .INIT_36(256'h411862C489CB153598C9FBFBDADACADADAC9A88745E3D3C38150303041515251),
    .INIT_37(256'h084AC66384085A94B519859574224274C608E7C6213131425252736252A46231),
    .INIT_38(256'h24F3D3B271505172516262515151414151514152317341317293725231002132),
    .INIT_39(256'h32323152C549ABCCDCDBCAB9B9B9B8A8B9B9B8A8A89797878797877776766645),
    .INIT_3A(256'h373737261616151526265799AAC392B3B3D3C3D3D4C3F5A37241413121525231),
    .INIT_3B(256'h58AADCEDFDFEEEFEFEEEEEEEEEFEFFEE7A07F607173838383848485848483737),
    .INIT_3C(256'h98B9DADADADADADADAC9A87735D3B2B2715041515152626282726151402051C5),
    .INIT_3D(256'h9408F8D7420163C619D7F7B6312142944152735273A4411010A562829278EB88),
    .INIT_3E(256'h6161625151514141515141524183514162B48231524210084A3A5384B608E784),
    .INIT_3F(256'hCBCBBAA9A9A8A8A8A8A8B8A8A897978787878776767676564514E3C271616172),
    .INIT_40(256'h36364699BAE4A2B3B3C4C3C3D4C3F5A383412131424131525273E76BCDDDDCDC),
    .INIT_41(256'hFEEEEEEEEEFEFFEE8B1706171728382827373727272616161616161616162626),
    .INIT_42(256'hDAC9976614B2A2926150515162728383B3B39272514041821689CCDCEDFEFEFE),
    .INIT_43(256'hA5D7B632525283B552525231838331212184177292A246FBB9DADADADADADACA),
    .INIT_44(256'h514131524183514151A462523131F8F808E78463D6E784B6747429E79584A5F7),
    .INIT_45(256'h97A7A8A7A797979786878676768686765524E3C2717161727262615141414141),
    .INIT_46(256'hB3C3B3B3C3B3F5A46252412142423173F76BCDDDBDCDDDDCCBCBBAA998989797),
    .INIT_47(256'hAB17F617171717171616060605F5F505051515262636464757465788BA05A2A3),
    .INIT_48(256'h7161617283A4C5D5D3D3C3A281716150921689BBDCDDEDFEEEEEEEEEEEFEFEEE),
    .INIT_49(256'h4120415283521010211018D5C481F477DAEAFAEADADADACADAC98746F3918181),
    .INIT_4A(256'h41A4823110B51874E77BF8A5D795C6847463E73AF8D79595D7081042426394C5),
    .INIT_4B(256'h97978676768676665534E3B27071717272626251414141414141315141835130),
    .INIT_4C(256'h623110103173E69CCDCDDDDEDDCDDDDDCCCBCAA9989897979797A7A7A7979787),
    .INIT_4D(256'hF5F5F5F5F5F5F505162626263747576767575778AA159292A3C3B3B3B3A3E5A3),
    .INIT_4E(256'hD3D3D3C3A2A292706092F569CCEDEDFEEEEEFEEEEEFEFEEDAB06D4F606F6E5E5),
    .INIT_4F(256'h1000627AF5C30546C9EAFBEADADADADADAC97735D3817181938282A4C5E60717),
    .INIT_50(256'hB539C6C6B6B6C695B6C631F7737495D7E77300529462E683411052B573411021),
    .INIT_51(256'h4524D3A260717272626261414141425241413151419351306293416273F77463),
    .INIT_52(256'hEEDDCDDDEDDDDDCCDCDCCBBAA998989897979797A79797979786867676867665),
    .INIT_53(256'h2636373747475868686868679926929292B3A3B3B3A3E58362311010A58CEEEE),
    .INIT_54(256'hA26060E48ADDEDEDFEEEFEFEEEEEFEED9AE5B3F50605E4D4D4E4E5F5F5051616),
    .INIT_55(256'hA8DAEAEADADADADADAC97725C2707192A3A3B4E607182818F3E3E4E4C3B2B2A2),
    .INIT_56(256'hB68453D6D7D7B6D684102121D683F7A4310052C663211011113120593716F477),
    .INIT_57(256'h6162514141515252414141524193624030A38241D6D6537329D608F7F8D784C6),
    .INIT_58(256'hCCCBCBBAA9A998A897979797A797979786867676867675553514D39161728382),
    .INIT_59(256'h687878578937829292B3A3A3A393C47272005239CDEFDECDDDFEFECCABBCCCCC),
    .INIT_5A(256'hFEEEFEFEEEEEFEED9AE4B3052726E5C4E4E4F505162626364747484848585868),
    .INIT_5B(256'hDAC97725C26081A3C4C4F61728282817E3D3E3F4D3C3C3C3C3926071E559BBED),
    .INIT_5C(256'h95942162838383078362A5F7B5522110110041A306898835A8C9EAEADADACACA),
    .INIT_5D(256'h4141415241936240615172834952110894B5F7F739B6D7D7A5427352B5D79542),
    .INIT_5E(256'h9797979797A7979787867676867675553504D471717293736262515151626252),
    .INIT_5F(256'h92B392929282B45120844ACEDECDCDFEFEDCCCEDEDDDCCCCCCCBBBBAB9A9A8A8),
    .INIT_60(256'hBB05D315474705E4F50506162637374748585858585858686878795789487282),
    .INIT_61(256'hE5E6173949382818C3D3D3E4F4E4D3D3B3C3B37161B348CCEEEEFEFEFEFEFEFE),
    .INIT_62(256'h07D6B5946310101021214193D558EB9898C9EADADADADADADAC98735B26082A3),
    .INIT_63(256'h40725128B52018A520D618081808D7A573A542524294D62142D6946352529483),
    .INIT_64(256'h978686868686755535F4C4617282B48283625151626262413141516241936231),
    .INIT_65(256'h836AEFDEDEFFDDCDDDEDEDCCCCDCCCBBCBCBBABAB9B9A9A89797979797A7A797),
    .INIT_66(256'h16162627373747474748485848585868687979477958717192A382828272A330),
    .INIT_67(256'hC3E4E4F40504D3C3C3E4D4A26061F59BFDEDFEFEFEFEFEFEEC36E41547572605),
    .INIT_68(256'h31314152C405FDB9A8C9DADADACADBEADAB89825A25082B4F618293949492818),
    .INIT_69(256'h532919F808D6A584C66252733231187400429494735231626373313184204221),
    .INIT_6A(256'h6604B35161C4F5A38282516141735252414151515183523120425218B5B57B31),
    .INIT_6B(256'hDDDDDCCCCCCCCBCBCBCABABAB9B9A9A8A8A79797A7A7A79797A7977665657676),
    .INIT_6C(256'h585858585859585868897857798A727292C3B371828282729BCDFEEEEEEEEDDD),
    .INIT_6D(256'hE3E4D3D3A250B379DCEDFEFEFEEEEEFEFD790446575736262617172727374758),
    .INIT_6E(256'hA8C9DADBDBDBDBDBEAB89735B25092D517292939493807F7D3E4F4F4152504E3),
    .INIT_6F(256'h947373631074A553115231213152734152624252836352426210312149E5ECCA),
    .INIT_70(256'h929361614173625241415262529352314221D7B5736AF6A4D7B6F8E829B673C6),
    .INIT_71(256'hCBCABABAB9B9A9A8A8A79797A7A7A7A7A7A79786757565556614A35182F415B2),
    .INIT_72(256'h6888785768898271A281B3614082626ADDFEFFFEEEFEFEEDDDDCCCCCCCCBCBCB),
    .INIT_73(256'hBBECFEFEFEFEEEFEFDBA46576767462626171717273748585858585849585868),
    .INIT_74(256'hEAB89735B250A3F6394A3A393917D6C6E4F4F4F415352504F4F4E4F4C381B247),
    .INIT_75(256'h427300104252B542212141424183313131201000D5B399A9A8C9EAEBDBDBDBDB),
    .INIT_76(256'h414151625283523100214A4218C5E69419C7E8E71994A5B57373633253A56321),
    .INIT_77(256'hA8A8A7A7A7A7A7A7A7A7A7968686755556049250B21536C39282515141735251),
    .INIT_78(256'hA2719251405117FFFFFEFEEEEEEDEDEDDCDCCCCCBBBBBBBBCACABAB9B9B9A9A8),
    .INIT_79(256'hFEEC68576777573727171728283858585858584848585868787888686879A361),
    .INIT_7A(256'h495A4A3A28E6A48405F4F4F4043535250404F4F4E4B2B2F479DCFEFEFEFFEEFF),
    .INIT_7B(256'h20204242218341312031211051D499A9A8D9EAEBDBDBDBDBFAB99825A250B417),
    .INIT_7C(256'h10328C744A41B50829F8F8C6E7A5C6637383425294843200847310317341D673),
    .INIT_7D(256'hA7A79797A797865545048250D34646E482724151316252414141416252735220),
    .INIT_7E(256'hFEEEEEEEEEEDDDDDDCDCCCCCCBBBBBBABABABAB9B9B9A9A8A8A7A7A7A7A7A7A7),
    .INIT_7F(256'h27272728384858585858585848585868786888685779D4508271716141B4FEFE),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_11_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_11_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module vga_rom_blk_mem_gen_prim_wrapper_init__parameterized17
   (p_7_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_7_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_7_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFF1F0F3E07FFFFFFFFE07FFFFFFFFFF870000218000000007FFF1F8CFC0FFFF),
    .INITP_01(256'h00306000000007FFF1F0F1F07FFFFFFFFE07FFFFFFFFFFC70000318000000007),
    .INITP_02(256'hFFFFFFFFFFCF000031E000000007FFF1F039FE7FFFFFFFFE0FFFFFFFFFFFCF00),
    .INITP_03(256'hFEFFFFFFFFFE1FFFFFFFFFFFCF000031A000010007FFF1F019FE7FFFFFFFFE0F),
    .INITP_04(256'h000003FFF1F01CFFFFFFFFFFFE1FFFFFFFFFFFCF800052A000010003FFF1F00C),
    .INITP_05(256'hFFCFC0000F0000000003FFF1F00CFFFFFFFFFFFE1FFFFFFFFFFFCF800058E000),
    .INITP_06(256'hFFFE3FFFFFFFFFFFCFE0001C4000000003FFE1F00EFFFFFFFFFFFE3FFFFFFFFF),
    .INITP_07(256'hE1E0013FFFFFFFFFFF3FFFFFFFFFFFC7E001C00800000003FFE1E0073FFFFFFF),
    .INITP_08(256'h010000000003FFE1E0011FFFFFFFFFFF7FFFFFFFFFFFC7E004000000000003FF),
    .INITP_09(256'hFFFFFFFFE7F000020000000003FFE1E0018FFFFFFFFFFF7FFFFFFFFFFFE7F000),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFFE3F000000000000003FFE3E001C7FFFFFFFFFF7FFF),
    .INITP_0B(256'h0003FFE3E00061FFFFFFFFFFFFFFFFFFFFFFE3F800182000000003FFE3E000E3),
    .INITP_0C(256'hF1FC00000000000003FFE3E00071FFFFFFFFE7FFFFFFFFFFFFF3F80018400000),
    .INITP_0D(256'h01FFFFFFFFFFFFF8FC00000200000003FFE3E00038CFFFFFFE01FFFFFFFFFFFF),
    .INITP_0E(256'hE0000C03FFFC0001FFFFFFFFFFFFF8FE00000000000007FFE3E00018C7FFFFC0),
    .INITP_0F(256'h1400000005FFE3E0000401FFF80001FFFFFFFFFFFFFC7E00000800000005FFE3),
    .INIT_00(256'h0505F4F4041525351504F4F4F4D3B2C326BBFDFEFEFEEEFFFEED784767785737),
    .INIT_01(256'h31203110A4069998A8D9EAEBDBDBDBDBEAC998148150C4285A5A5B3A18B46242),
    .INIT_02(256'h4AB6D7A6A5B5746394A563A552742142843120317321D6943131524231636341),
    .INIT_03(256'h45F48250E34556148261415141627251414141726273521010537BA59410624A),
    .INIT_04(256'hDCDCCCCCCBCBBBBABABAB9B9B9B9B8A8A8A8A7A7A7A7A7A7A7A79696A7A78665),
    .INIT_05(256'h585858585858586879688978577905407251724151ACFFEEEEEEEEEEEEEDDDDD),
    .INIT_06(256'h252504F4F4E4D3C3F489FDFEFEFEEEFFFEFD9A68896847372727272838485858),
    .INIT_07(256'hB9DAEAEBDBDBDBDBDAB998047140C5385A6B5B3AF783211005050504F4F41525),
    .INIT_08(256'hC694948442955384520010316331D694213131313131634131212100B4164777),
    .INIT_09(256'hA261515141627251415141727272411020A59D08531183083AD7E8C7848473B5),
    .INIT_0A(256'hBAB9B9B9B9B9A8A8A8A8A7A7A7A7A7A7A7A796969696867645048260F3454525),
    .INIT_0B(256'h796889785779264061406220D5FFEEFFEEEEEEEEEDEDDDEDDCCCCCBBBBBBBABA),
    .INIT_0C(256'hE457DCFEFEFEFFFFEEFEDCBBAA68472627272728384848485858585858586868),
    .INIT_0D(256'hDAB998047130B4395A6B5B2AD662101005051505F4E3F41535351504F4F4F4E4),
    .INIT_0E(256'h211020734241D6B531313131312152523142310072272677B9DAEBEBDBDBDBEB),
    .INIT_0F(256'h41514183827252200084AD5A106321D6F82A09C7746394C6C684845253847473),
    .INIT_10(256'hA8A8A8A7A7A7A7A7B7A7A6A6969696864504917013443435C371514131527251),
    .INIT_11(256'h40304141ACEEFFFFEEEEEEEDEDEDDDDCCCCCCBBBBBBBBABABAB9B9B9B9B8A8A8),
    .INIT_12(256'hFEFEFEDCDC9A7937272727273848484758585858586868687979896858894750),
    .INIT_13(256'h5B6B5B2AD6521021F5F5050504E4E40435352515040404F4F426AAFDFEFEFFFE),
    .INIT_14(256'h41313131312131524200313162274777B9DAEBEBDBDBDBEBDAB998147120A439),
    .INIT_15(256'h31528C4A1142313908091995749563A594B5526342423232313110941020D6F7),
    .INIT_16(256'hB7A7A7A7A6A696964504817024544445E4825141215272515151519393836230),
    .INIT_17(256'hEEEEEEEEEEFEEDCCCCCCCBCBBBBBBACABAB9B9B9B9B8A8A8A8A8A7A7A7A7A7A7),
    .INIT_18(256'h272727273838483748585858686868687989896858895750401031A4FFFFFFEE),
    .INIT_19(256'hF5F4F50505F4E40425253525140404F4F40478ECFDFEFFFEFFFEEDDDFDDCBB48),
    .INIT_1A(256'h4252103130069977C9DAEBEBDBDBDBEBDAC987155020B5285B5B4B2AB5411010),
    .INIT_1B(256'h09D719B65363A5D69494733231105232526220632110C5186231212131313131),
    .INIT_1C(256'h5504A28034865445F4926151415262516141517282728320214229290021C608),
    .INIT_1D(256'hDCCCCBCBBBBBBABAB9B9B9B9B8B8B8A8A8A8A7A7A7A7A7A7A7B7B7B7A7A6A696),
    .INIT_1E(256'h384858585868686868796979686878713010207BFFFFEEFEEEEEEEEEEDEDDDDC),
    .INIT_1F(256'h04354635151404F3040436BAFDFEFEFFFFFEEEEDFDFEECAA3716273727373838),
    .INIT_20(256'hB9DAEBEBDBDBDBEBDAC987145020B5296B5B4B19A5311000F5F5F5F50505F4E3),
    .INIT_21(256'h63736331421042313163314221109408E7310021212031104142314230C47888),
    .INIT_22(256'h25C38161515262515151517293839320214AD65A95A518A52AD709954231A5D7),
    .INIT_23(256'hB9B9B9B8B8B8B8B8A8A7A7A7A7A7A7A7A7B7B7B7A6A6A6966614C38034867566),
    .INIT_24(256'h6869687978787881201073BDFFFFEEEEEEEEEEEEEDEDDDDCDCCCCBBBBBBABABA),
    .INIT_25(256'h14043589ECFDFEFEFFFFFEFEFEFFFECC48162737273738383848585858686868),
    .INIT_26(256'hDAC987045030C5296B6B3B0995200000F5F5F5050505F4E40425353525241403),
    .INIT_27(256'h21635220211073E7D6944221213121313131425241825788B9DAEBEBDBDBDBEB),
    .INIT_28(256'h51727262514182205229C64A1984D6D63A0929C66342B6C64252422152202121),
    .INIT_29(256'hA7A7A7A7A7A7A7A7A7B7B7A7A6A6A6966614D3702475868656F4A28151515151),
    .INIT_2A(256'h2000F7FFFFFFDEDEEEEEEEEDEDDDDDDCDCCCCBCBBBBABAB9B9B9B9B8B8B8B8B8),
    .INIT_2B(256'hFFFFFEEEFEFFFEED6826272727373838384858585868686868586979797878B2),
    .INIT_2C(256'h5B5B3B0994200000E5E5F5F50505F5F4041425353525140314142567BAFDFEFE),
    .INIT_2D(256'h42A48431212121312131425241924787C9DAEBEBDBDBDBEBDAC987045041D639),
    .INIT_2E(256'h620031D67B291808A6F8E8D795B6C6B5315242106321102121627321213173C6),
    .INIT_2F(256'hB7B7B7B7A6A6A6967624D370036586867624D392615151514162617272728341),
    .INIT_30(256'hEEEEEEEDDDDDDDCCDCDCCBBBBABABAB9B9B9B9B8B8B8B8B7A7A7A7A7A7A7A7B7),
    .INIT_31(256'h8937262727373828384858585858585858585879796878D320106AFFEEEEEEEE),
    .INIT_32(256'hC4D4D4F5050505F404041546462514142424354699ECFEFEFFFFFEEEFEFEFEFD),
    .INIT_33(256'h2131214252C45777B9D9DADACACADBDBDAC977F45041E6495B5B3B0994201000),
    .INIT_34(256'hA509F8E8E7C65331326363216331204131427331214184B54231526342313121),
    .INIT_35(256'h8634E47103668686764503B27141415241626272514162627394C6392929C695),
    .INIT_36(256'hDCCCCBBBBABABAB9B9B9B8B8B8B8B8B7B7B7A7A7A7A7A7B7B7B7B7B7A6A69696),
    .INIT_37(256'h384848485858585858485979796878E42041BDFFFFEEFEEEEEEEEDDDDDDDCCCC),
    .INIT_38(256'hF4F41435462524242434454678CBFDFEFFFFFEEEEDFEFEFD9A47373727383838),
    .INIT_39(256'hB9D9DADACACADBDBDAC977F45051E64A6B6B3BF884201000C4C4D4E4F5050505),
    .INIT_3A(256'h327383216241214131316241315284A452213163634221313131103162D56877),
    .INIT_3B(256'h765523E292513152415293B4B4D5D5070718D6A574632173B6D7E8D719952110),
    .INIT_3C(256'hB9B9B8B8B8B8B7B7B7B7A7A7A6A6B7B7B7B7B7B7A7A6A6968645E481E3668686),
    .INIT_3D(256'h584859696968780520A4EEEEFFEEEEEEEEEEEDDDDDDDCCCCCCCBBBBBBABAB9B9),
    .INIT_3E(256'h244445556799ECFEFEFFFFEEEDFEFEFDAA573737273728283838484858585858),
    .INIT_3F(256'hDAC977F45062F74A6B6B3AE873100000C4C4D4E4F5F5F505F4F4042535252434),
    .INIT_40(256'h414241413152638431423121323111212131213162B36788B9DAEBEBDBDBDBEB),
    .INIT_41(256'h5252A4C5E617939331104211941021D6E7B6D7B6E86301112173943152312031),
    .INIT_42(256'hB7B7A7A6A6A6B7B7B7B7B7B7B7A6A6A69655F492C2568696867544F3B2613142),
    .INIT_43(256'h2028FFEEEEFEDEEEEEEEDDDDDDDDCCCCCBCBBBBABABAB9B9B9B9B8B8B8B8B7B7),
    .INIT_44(256'hFEFEFFEEEDFEFEFDAA5747372737282838384848585858584848696968687816),
    .INIT_45(256'h6B5B2AD763000000D4D4D4D4E4F5F505F4F4F40425252424344455555678CBFD),
    .INIT_46(256'h42214263212142212131423162825798B9DAEBEBDBDBDBDADAC977F35062F74A),
    .INIT_47(256'h41314200A510A508D795D7C6C6A5748410639531423120215273214142424273),
    .INIT_48(256'hB7B7B7B7B7A7A7A6A67605A2B256769696864403C37231414172D59351833083),
    .INIT_49(256'hEEEEDDDDDDCDCCCCCBBBBBBABABAA9A9B9B9B8B8B8B8B7B7B7A7A7A6A6A6B7B7),
    .INIT_4A(256'hBA5747472727282838484848485858584848695968687826308BFEEEDEFFCDFE),
    .INIT_4B(256'hD4D4C4D4E4F5F50505F4E3F414242413343445555667BAFDFEFFFFFEEDFEFEFD),
    .INIT_4C(256'h1031213162D477A8C9DAEBDBDBDBDBEAEAB967E47151F73A5B4B3AD732110000),
    .INIT_4D(256'h84A5C6C695649532845363632152312073313131315252524221317363312121),
    .INIT_4E(256'h967604F49104879686854514D3926151416262516262515162203131847319C6),
    .INIT_4F(256'hCBCBBABABAB9B9B9B9B8B8B8B8B8A7A7A7A7A7A7A7A7B7B7B7B7B7B7B7B7B7A7),
    .INIT_50(256'h4848484848484849494858797957782693CDFFDEEEEEDEEEDEDDDDDDDDCCCCCC),
    .INIT_51(256'h1515F4D2E3141414143445454566B9FCFEFEFFFEEDEDECCB8868574737272838),
    .INIT_52(256'hC9DAEBDBCBDBDBEAEAC967E47273083A5B4B2AC621100010C4D4D4D4E4E4D405),
    .INIT_53(256'h9543537342421041624152523141426262211031638473311021214182D498A8),
    .INIT_54(256'h86866625E4B37150405151415252524162526294D6E7E77442C6D7F7D7F86301),
    .INIT_55(256'hB8B8B8B8B8B8A7A7A7A7A7A7A7A7A7B7B7B7B7B7B7B7B7A7978635F4A1E37686),
    .INIT_56(256'h494848585847793707EEEEEEEEEEDEDEDEDDDDCDCDCCCCCCBBBABABAA9B9B9B9),
    .INIT_57(256'h041424354556A8FCFEFEFFFECCAA9A8978786868472728284858585849494949),
    .INIT_58(256'hD9C867D37293183A5B4A29B621101011D4E5D4D4E4D4D4F4052504D3D3F41414),
    .INIT_59(256'h5231526242314263424131313152636321212152A4E4A998C9DAEBDBCBDBDBDA),
    .INIT_5A(256'h41414141415252314120735A39F8A521527308B6745321638521115394315262),
    .INIT_5B(256'hA7A7A7A7A7A7B7B7B7B7B7B7B7B7B7A7A78666F4B2B245667596764514D38151),
    .INIT_5C(256'h9BFFEEEEEEDEDEDEDEDDDDCDCDCCCCCBBBBABAAAA9A9B9B9B8B8B8B8B8B8B7A7),
    .INIT_5D(256'hFEFFFFFEBC896867787878785838384848585859595949483837372616366837),
    .INIT_5E(256'h4B4A29A531101010D4E5D4D4E4D4C4E4F42515E3D3E3F41404041435454587DB),
    .INIT_5F(256'h623131312121314231212152B4D39987C9DAEBDBCBDBDADAD9B866D371A4183A),
    .INIT_60(256'h5241301839B5635232295331210142B6A6212121A52031315231425263524252),
    .INIT_61(256'hB7B7B7B7B7B7B7A7B7968715D39104667686755534E392615130414131414130),
    .INIT_62(256'hDEDDCDCDCCCCBCBBBBBABAAAA9B9B9B9B8B8B8B8B8B8B7A7A7A7A7A7A7B7B7B7),
    .INIT_63(256'h78888878584848494848484848483827160605F5E4053758EEFEDEEEEEDEDEDE),
    .INIT_64(256'hB4C4C4D4E5E4D4D4F4051504E3D3D30414040424354577AAEDFEFFFEDC8A6867),
    .INIT_65(256'h31212062B4C37887C9DAEBDBCBDBDADAE9B866E482B4184A5B4A299531101010),
    .INIT_66(256'h42C63200225384D7B63253116341002142213152736342426341313131313131),
    .INIT_67(256'hB6A68746E381B346767675655504A282714030413141413062311094D694D621),
    .INIT_68(256'hBBBABABAB9B9B9B9B8B8B8B8B8B7A7A7A7A7A7A7A7B7B7B7B7B7B7B7B7B7B7B7),
    .INIT_69(256'h38382727271606F5E5D4D4C3C3C3F569FEEEEEEEEEDEEEDEDEDDCDCDCCCCBBBB),
    .INIT_6A(256'hE4F4051504C3C2E30404F3F304355678CCEEFFFFEDAA68676788999978583838),
    .INIT_6B(256'hC9EAEBDBCBDBDADAD9A856E482C5286B6B5B29842110101093A3B3D4E5E5E4D4),
    .INIT_6C(256'h95953263313131312121314263623142425263422020314141312073B3E45698),
    .INIT_6D(256'h677675757524D3A3725130313141413110623141D694D65342213242323208E7),
    .INIT_6E(256'hB8B8B8B8B8B7A7A7A7A7A7A7A7B7B7B7B7B7B7B7B7B7B7A7B6B6966604A271F4),
    .INIT_6F(256'hD3B2B3C3C3B3C39AFEEEFFEEEEDEEEDDDDDDCDCCCCCCBBBBBABABABAB9B9B9B8),
    .INIT_70(256'h0404E3D2E3044668ABEEFFFFFEBB685757789999895838170706F6E5E5D4D4C3),
    .INIT_71(256'hD9A856D372E6396B6C6B2973201020208282A3D4E5E5E5D4E4E4F40505E3C2D3),
    .INIT_72(256'h1031424263523141525242423131312141411093A3052598C9EAEBDBDBDBDBDA),
    .INIT_73(256'h9261303041313141313141526242B5958474632163F8E7D795B6118421205220),
    .INIT_74(256'hA7A7A7A7A7B7B7B7A7B7B7B7B7B7A7A6B6B7A68635D360A225567585755504C3),
    .INIT_75(256'hFFEEFFEEEEDEDEDDDDDDCDCCCCCCBBBBBABABAB9B9B9B9B8B8B8B8B8A7A7A7A7),
    .INIT_76(256'h79DCFEFEFEDC8978899999795827F6D5B4B4A4A3B3B3B3B3C3C3D3C3D4C3B3DC),
    .INIT_77(256'h6B6B297320102020727193C4D4E5F5D4D4E4E4E40505D4D3E3F4E3D3C2D30436),
    .INIT_78(256'h6331316252212031313100939316F487C9EAEBDBDBDBDBDAD9B856D372F74A6B),
    .INIT_79(256'h3031414131212153E7A5957408F8E7A584111031215231312142524263633131),
    .INIT_7A(256'hA7B7B7B7B7B7A7A6A6B7B78676147171E4357675757534E3A272403041202041),
    .INIT_7B(256'hDDDDCDCCCCCBBBBBBABAB9B9A9A9A8A8B8B8B8B7A7A7A7A7A7A7A7B7B7B7B7B7),
    .INIT_7C(256'hCBBA894716D593626272728292A2B2C3D3F4F4E4F5D4C4FEFFEEFFDEEEDDDEDE),
    .INIT_7D(256'h726182B4D4E5F5E4C4E4D4C3F415F5D3B2D3E3E3B2A1C20547BBFDFEFEFDAA99),
    .INIT_7E(256'h313121628226C277C9EBFBDBCBDBDADAD9A856D382F75A6B7C6B088341415151),
    .INIT_7F(256'h7395D608D619E795320032215321313142315242427321315231524262412121),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_7_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_7_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module vga_rom_blk_mem_gen_prim_wrapper_init__parameterized18
   (p_3_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_3_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_3_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFE3F00000C00000005FFE7E0000600FFF000A3FFFFFFFFFFFFFC7F0000),
    .INITP_01(256'h3FF001E3FFFFFFFFFFFFFF1F00003000000007FFE7E00003007FF000E3FFFFFF),
    .INITP_02(256'h03FFE7E00100001FF001E7FFFFFFFFFFFFFF8F80000000000003FFE7E0010100),
    .INITP_03(256'hE1C0000000000003FFE7E00080401FF001C7FFFFFFFFFFFFFF87C00080000000),
    .INITP_04(256'hFFFFFFFFFFFFFFF000002000000003FFE7E000402007F00087FFFFFFFFFFFFFF),
    .INITP_05(256'h00601801FF000FFFFFFFFFFFFFFFFC00002000000001FFE7C000400003F00007),
    .INITP_06(256'h00000001FFEFC000700000FF800FFFFFFFFFFFFFFFFF80004000000001FFE7C0),
    .INITP_07(256'hFFFFFFFFF0000000000001FFEFC0007000007FC00FFFFFFFFFFFFFFFFFE00000),
    .INITP_08(256'hFFF01FFFFFFFFFFFFFFFFFFC000002000000FFEFC0003C000FFFF01FFFFFFFFF),
    .INITP_09(256'hFFFFC0001C000FFFF01FFFFFFFFFFFFFFFFFFE000000000001FFFFC0003C000F),
    .INITP_0A(256'hFF000000000000FFFFC0000F000FFFF01FFFFFFFFFFFFFFFFFFF000004000001),
    .INITP_0B(256'hFFFFFFFFFFFFFFFF800040000000FFFFC0000F000FFFF01FFFFFFFFFFFFFFFFF),
    .INITP_0C(256'h000000000000000000000000000000000000000000000000800F000FFFF01FFF),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hA7A7A6A69655E3608104676555655514C38251403031313151203152313142A5),
    .INIT_01(256'hBABAA9A9B9B9B8B8B8B8B8B7A7A7A7B7A7A7A7A7B7B7B7B7B7B7B7B7B7B7B7A7),
    .INIT_02(256'h41516182A2C3D3E404F405F4E4B348FEFEEEEEEEDEDEDEDDDDDDDCCCCCBBBBBA),
    .INIT_03(256'hD4C4D4D4D40516E4D4C3C3D3C291A1D31689FDFEFEFDDB9ADBFDBB37A3724131),
    .INIT_04(256'hC9EAEBDBCBDBDBDAD9A856C393076B7C7C6B08947282839361617292C4F5F5E5),
    .INIT_05(256'h115311523111312142316342526342424221413142314152313121318237F446),
    .INIT_06(256'h50A2256676866534E3A372413020303141314141312073D7D773C6E729087432),
    .INIT_07(256'hB8B8A7A7A7A7A7A7A7A7A7B7B7B7B7B7B7B7B7B7B7B7B7A7A7A7B6B6A68624C2),
    .INIT_08(256'h050515F5F5C49AFFFEEEEEEEDEDEDDDDDDDDDCCCCCCBBBBABABAB9A9A9B9A8A8),
    .INIT_09(256'hE4C3B2C3B2A291A2E347DBFEFEFDDC9ACBFEFD79A340102041517293B3D4E4F4),
    .INIT_0A(256'hD99846D3A3187B7C7C5B08B5A4B4B4C451627293B4D5E5F5D4B3B3C4C4E40505),
    .INIT_0B(256'h313252426342524242314131313141623131212083262535C9DAEBDBCBDBDBEA),
    .INIT_0C(256'hF4C3A2714130202020413120412094E784B6083AD6A500103163523131212121),
    .INIT_0D(256'hA7A7B7B7B7B7B7B7B7B7B7B7B7B7B7A79797A6A6B6A666149170A22566555476),
    .INIT_0E(256'hFEEEEEEEDEDEDDDDDDDDCCCCCBCBBABABAB9B9A9A9B8A8A8B8B8A7A7A7A7A7A7),
    .INIT_0F(256'hA1E378FCFEFEECAAAAFDFE9AA3302041517293B3D4E4F405151505E5D4D4EDFE),
    .INIT_10(256'h7C4A08D6C5C4C4C4617282A3B4D4F506E5B3B3C4C3C3E405F5D3B3B2B3B2A281),
    .INIT_11(256'h31315241313131413121313193F53635B9DAEBDBCBDBDBDAD99846D3C4287B7C),
    .INIT_12(256'h20312020423163A5C6F7E7D68431523142426310422121313252424263314131),
    .INIT_13(256'hB7B7B7B7B7B7B7A79797A6A6A6A68645048150B23666655514E4A38261412020),
    .INIT_14(256'hCDDCCCCBCBBBBABABAB9B9A9A8A8A8A8B8A7A7A7B7B7A7A7B7B7B7B7B7B7B7B7),
    .INIT_15(256'hDCFDFD8AA34040417293A3C4D4E4F505051505D4B306FEFEEEEEEEDEDEDDDDDD),
    .INIT_16(256'h727282A3B4C4E506F5D4B3B3B3A3C4F5F5F4C3B2A2B3A2918191F499ECFDFDCB),
    .INIT_17(256'h3121313183E53615CADAEBDBCBCBDBDAD99836D4C5396B7C7C4B18F7E6D5C4C4),
    .INIT_18(256'h08B6848473428442426321636321412152632142634231213141524131413131),
    .INIT_19(256'hA7A7B7A6A6A6966535F49160911466563505C392614130203131314141312184),
    .INIT_1A(256'hBAB9B9A9A8A8A8A8B8A7A7A7B7B7B7A7B7B7B7B7B7B7B7B7B7B7B7B7B7B7A7A7),
    .INIT_1B(256'h93A3B4C4D4E4F5050505F5D4A369FEFEEEEEDEDEDEDDDDDDCCCCCCCBBBBABABA),
    .INIT_1C(256'h06F5D4B3A3A3B3D4F505F5C3A2A2A2A29170A20568BBECEDFDFDEC79B3827272),
    .INIT_1D(256'hCADBDBDBCBCBDBDAC99836D4D5396B6C6C4B19F7F6E5D5D483727293A3C4D5F5),
    .INIT_1E(256'h7342428484212121848421527363312121415241315241413131211072F53604),
    .INIT_1F(256'h654504925070D2241415F5C48251313121203142213121945373C6C663845231),
    .INIT_20(256'hA7A7A7A7A7B7A7A7B7B7B7B7B7B7B7B7B7B7B7A7B7B7A7A7B7A7A7A7A6A6A686),
    .INIT_21(256'h05F5E5C4B4CCFEFEEEEEDEDEDDDDCDCDCCCCCBBBBBBABABAB9B9B9B9A8A8A8A8),
    .INIT_22(256'hE4F505E4B3A2A2A2A28181A2E4278AECFDFEFD89E4B3B3B3A3B3C4D4E5E5F5F5),
    .INIT_23(256'hC99836D4E5395B6C5B3A08E6E6E5C4C493827282A3C4D5E5F606E5C4B3A3B3B3),
    .INIT_24(256'hA58431529473413121425241316252423142211041E51515CADADBDBCBCBCBDA),
    .INIT_25(256'hC2D3D3C4A3624120202031312121428421741984746352639421638463211042),
    .INIT_26(256'hB7B7B7C7C7C7B7B7B7B7B7A7B7B7A7A7B7A6A7979696A68586552515E4A28080),
    .INIT_27(256'hEEDEDEDEDDDDCDCCCCCCBBBBBABABABAB9B9B9A8A8A8A8B8A7A7A7A7A7B7B7B7),
    .INIT_28(256'hA2A28282A3C41689FCFEFC89F4E4D4D4C4C4D4E5F5F5F5F5F5E5D5B4F6FEEEEE),
    .INIT_29(256'h5B3AE7C5C5C5A3938383838293B3D5E5F506F5D4C4A392B3C4D4F5F5E4B3A2A2),
    .INIT_2A(256'h21525252316241414131212131C4E436CADADBDBDBCBDBDAC99836D4E6395B6C),
    .INIT_2B(256'h313131212110524242D718B6743142C6734200B521214294A5844242A5733131),
    .INIT_2C(256'hB7B7B7A7A7A7A7A7B7B7A7979696A696757656351504E3C29090808182725120),
    .INIT_2D(256'hBCBCBBBBBABABABAA9B9A9A8A8A8A8A8A7A7B7B7B7B7B7B7B7B7C8C8C8C8C7B7),
    .INIT_2E(256'hAAECCB6704050505E5E5E5E5E5E5F5F5E5E5C4B427FFFEEEEEDEDEDEDDDDCDCC),
    .INIT_2F(256'h628383727293C4E5F50606E5C49282A3B3B3E40606D4B3A2A2B3A292C3B3C326),
    .INIT_30(256'h4121211131839247BAFBEBEBEBDBDBCAC99825E4F6496B6B6B29E7B5A4936262),
    .INIT_31(256'hA529D6C6636363C6421163A5213163C6D6953132944242312163524231624152),
    .INIT_32(256'hA7A7A79696969696968676766655443403E2B181605040302041211131103231),
    .INIT_33(256'hB9B9B9B8A8A8A8A7A7A7A7B7B7B7B7B7B8B8B8B8B8B8B7B7B7B7B7B7A7A7A7A7),
    .INIT_34(256'h05F5E5F5F6F5E5E5D5D4D482ACEEFEFEEEEEDEDDCDCDCCCCBCCCCBCBBABAAAB9),
    .INIT_35(256'hF5061606E5C4A281A2A3D4F5F5E5C4B3A2C3D3D3C3C3D3E32567783615252515),
    .INIT_36(256'hB9FBEBEBEBDBEBDAB99826F506496B6B5B29D6A494735252627272727293B4E5),
    .INIT_37(256'h2100D684421084D6C6841011846332212173525252626241203132111162A368),
    .INIT_38(256'h8686868686756555342403D3B29261413020213121103184D683D6B57331C663),
    .INIT_39(256'hA7A7B7B7B7B7B7A7B8B8B8B8B8B7B7B7B7B7B7B7A7A7A7A7A7A7A7A696969696),
    .INIT_3A(256'hD5C4B4C4DDFEFEDEEEEEDEDDCDCDCCCCBCCBBBBBBABAA9A9B9B9B9B8A8A8A8A7),
    .INIT_3B(256'hA2A2B3D4E5F5E5C3B2C3D3E4F4F4F4F4F4253525253636261605F5F6F6E6E5D5),
    .INIT_3C(256'hB99836F5176A7C8C6B18B5837362525261626272728293C4E5060606F5E4B382),
    .INIT_3D(256'h948411107384212131844252525262313042322232729215A9EBFBEBEBDBEBDA),
    .INIT_3E(256'h55554524F4D39271613031211031317384C5C6B53294A5421063D6A52121C6C6),
    .INIT_3F(256'hB8B8B8B8B8B7B7B7B7B7B7B7A7A7A7A7A7A7A7A6969696969696868686867675),
    .INIT_40(256'hEEDEDDCDCDCCBCBCBBBBBBBABABAA9A9A9B8A8A8A8A8A8A8A7A7B7B7B7B7B8B8),
    .INIT_41(256'hC3C3D3E405151404041414253636363626161606F6F6E5D5C4B49306EEFEEEDD),
    .INIT_42(256'h8C29A5626252525251616162727282B4D5F506161605C492A3A3A3A3B3E5E5D4),
    .INIT_43(256'h536342425241624130311122426271C388EAFBFBEBDBDBDAC99836F5498BADAD),
    .INIT_44(256'h615151412041213183E6841174C6730021A5D652216318849494211163B51021),
    .INIT_45(256'hB7B7B7B7A7A7A7A7A7A7A7A6969696969696868686868675656555452504D3A2),
    .INIT_46(256'hBBBBBBBABABAA9B9A8A8A8A8A8A8A8B8B8B8B8B8B8B8B8B8B8B8B8B7B7B7B7B7),
    .INIT_47(256'h252525354635353626262606F6F6E5D5C4B48248EEEEEEDEDEDEDDCDCDCCBCBC),
    .INIT_48(256'h6161516272627293C4E506161716E5B3A3A3A3A392B3D4E4D4D4D4F415252514),
    .INIT_49(256'h414121322141821588DAEBEBEBDBDBCAC98836067ABDCEBEAD4AA46252515252),
    .INIT_4A(256'hC5947310B58463104294A51021F7D673B5A5211073E721117442525252524162),
    .INIT_4B(256'hA6A6A6A6A6A69696969686868686757575756555453404E39271614120106283),
    .INIT_4C(256'hA9B8A8A8A8B8B8B8B8B8B8B8B8B8B8B8B8B8B7B7B7B7B7B7B7B7B7B7B7A7A7A7),
    .INIT_4D(256'h36362606F5E5E5D5C4B4939BEEDEEEDEDEDDDDCDCDCCBCBCBBBBBBBABABAB9B9),
    .INIT_4E(256'hA3C4F6061716F6E5A393A3A3A3A3C4E5E5F4F4F4153646463545353545464646),
    .INIT_4F(256'h88DAEBDBDBDBEBDAB9873626ACCDBDADBD4A9452524152418272616262515182),
    .INIT_50(256'h52C6424242188463A5A5312163E7424273317363636241625141323221419236),
    .INIT_51(256'h96868696969686757575656555452404E3B371302051D6B5B573527374733253),
    .INIT_52(256'hB8B8B8B8B8B8B8B8B8B8B7B7B7B7B7B7B7B7B7B7A7A7A7A7A6A6A6A6A6A6A6A6),
    .INIT_53(256'hB4B4C4DDFEDEDEDEDDDDDDCDCCBCBCBCBBBBBABABABAB9B9A9B9B8A8A8B8B8B8),
    .INIT_54(256'hD5A393B3B4B4B4C4D4E4F4F405365667455656454556565636262606F5E5D5C4),
    .INIT_55(256'hB9874626ACBDADADBD5A945252315231B3A382726251416272A3D5F616271706),
    .INIT_56(256'h94B5423142C66363523184837362526251202121115271F478DAEBEBDBDBEBDA),
    .INIT_57(256'h8675756565543413E2D3A25061D5E763A45221318484313173F75231D6B58452),
    .INIT_58(256'hB7B7B7B7C7C7B7B7B7C7B7B7A6A6B7B7B7A6A6A6A6A6A6969696969696968686),
    .INIT_59(256'hDDDDCDCDCCCCBCBCBBBBBABABABAB9B9B9B9B8A8A8B8B8B8B8B8B8B8B8B8B8B8),
    .INIT_5A(256'hB3D4E4E404355677777766565666666746261606F5D5C4C4B4A3E5FEFEDEDECE),
    .INIT_5B(256'hBD4A945252315231E4E4B372615141516283B4E506372717F6C4A3B3B4B4B4A3),
    .INIT_5C(256'h314284736352725162314211106272E457CAFBFBEBDBDBDAB9874616ACACADBD),
    .INIT_5D(256'h03D3A26151E6C673944131526384422173086310D6C6526394A5423152C67473),
    .INIT_5E(256'hC7C7B7B7A6A6B7B7B7B7A6A6A6A69696A6969696969686868675757565553413),
    .INIT_5F(256'hBBBBBABABAB9B9B9B9B9B9A8A8B8B8B8B8B8B8B8B8B8B8B8B7B7B7C7C7C7B7B7),
    .INIT_60(256'h878666666666667747261605F5D4C4B4C4A3F6FEEEDEDECEDDDDCDCDCCCCBCCC),
    .INIT_61(256'h05F5C372615141416282A4D516372716E5D4B4B3A3B4B4A3A3D4E4F404355676),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_3_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_3_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module vga_rom_blk_mem_gen_prim_wrapper_init__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    addra_15_sp_1,
    clka,
    addra);
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  output addra_15_sp_1;
  input clka;
  input [15:0]addra;

  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [15:0]addra;
  wire addra_15_sn_1;
  wire clka;
  wire [15:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  assign addra_15_sp_1 = addra_15_sn_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hE48E0569015432535809F61B661DAA79052E6FFFE60F6E0E3EBCEBE5F5AF8300),
    .INIT_01(256'h6FFFE60072F50FAFFFF9A6AF98405BFFFEAAAEB0044E950FA9500FFAA5554053),
    .INIT_02(256'hAEB4047BA53FA5500FFAA9554003E0BE05690150152629F829E186EDA55D0465),
    .INIT_03(256'h02540889D1ED281054AEA55A14A16FFFE600B2A103ABFFF942AF93805AFFFAAA),
    .INIT_04(256'hB2A100EAFFFA69AEA4281ABEAAAAAE7400EBA40FA5503FEAA554000CE0FA4119),
    .INIT_05(256'hA50EA5503FEA95500000E0FA801952A4748CC0B8F0FA655CAA5646A5AFFFE60C),
    .INIT_06(256'hE1ADA79EB759E5556211AFFFE200BE503CEAFFEA556EE44D16BAAAAABEB400BE),
    .INIT_07(256'hB3E95E6BA56706AAAAAAAAA802EA950FA540FFAA95400000E4CA801545987BB3),
    .INIT_08(256'hFEAA55400000E8CFD01555AC70FC2041529976542154567D6FFFE200BE500FFA),
    .INIT_09(256'h7953D9551A69AFFFE200FD00003EAFF9591AE9A846AAAAAAAAA808FA950FA540),
    .INIT_0A(256'hF9B9456AAAAAABA90AEA950FA503FEA955000000E8CF24056908A0E541900ED5),
    .INIT_0B(256'h0000E88F3405665DCC7A3E00CDD56D5291511A65AFFFE105BD00000EAFF9989A),
    .INIT_0C(256'h1689ABFFE105BD00FC0FABFAAB46F969816AAAAAABA90BAA940FA503FAA55400),
    .INIT_0D(256'hAAAAAA9616AA943EA503FAA554000000E88F39026506DFF33E97C1D55D61AF94),
    .INIT_0E(256'hF9025FC7CE49293ED2E55961D7D51689AFFFE109CD00FF03ABFAAA21F969C16A),
    .INIT_0F(256'hE119CCC0FF03ABFA6ADDBA6AD16AAAAAAA970AEA943F950FFA9550000000E88F),
    .INIT_10(256'h0EBA543E940FFA9540000000FD4FFA415C6F495899AEC695556C655116BAAFFF),
    .INIT_11(256'h19AA454A8A91A1A89B5819AAAC3FE119FCC03FC0A6AAAAB9BD59D56AAAAAAE94),
    .INIT_12(256'hFFC0EAA9AAA4BE15816AAAAAAEA83AB6543E540FEA55400000000D000A916222),
    .INIT_13(256'h500FEA54500555140A243A90155086ADB52C8364D5BE9BD5168AAFCFE109FB80),
    .INIT_14(256'hC0A1EAABD1CD16CE6FC3E11EFA40CFFCF96EAEA3690E016FFAAAABD499AA50FA),
    .INIT_15(256'hAAA369E4016FFAAAAA945AA650FA503FA955001555100D140E901454592B467B),
    .INIT_16(256'h0005555402000F9000140FE01892B75BAFABA96F56016FFFA12DE640CFFFCD6F),
    .INIT_17(256'hE556563D6FFF912DA540CFFBCE5BAA9E69D305ABFEAAA405A6A650E940FFA955),
    .INIT_18(256'h1AABFAA543B226AA53E903FEA9540015555407490F90001450B5E334EA5A9BFB),
    .INIT_19(256'h00840FD0001480E3FED9F1E196FAE65546386FFF913EB540FF3FF396EAAD1A20),
    .INIT_1A(256'h6FFF913FF440AC0FFCD6E56CDA741AAAE94FEA5B6AA953E500FEA55400155555),
    .INIT_1B(256'h9555AAA943A503FA95500005555400824FE400142290EC09ACAA46FAAE555705),
    .INIT_1C(256'h000106A957A5B59D1AE6EA54541D6FFF9D03F7005B03FC26F41B8AB41BE950EA),
    .INIT_1D(256'hF7005B03FF3AA90776845A90FA556AA7AAA943A40FEA9540000555540010FFF5),
    .INIT_1E(256'h4F940FE9554000051554047073F9000105573EA7A6665AF5DB9150D9AFFE9117),
    .INIT_1F(256'h7677D9959AB59A9416E4AFFE911B334047C4CECE6A01E145E5395555AEF9AA95),
    .INIT_20(256'h3FC3EA4091088C50016AFFEDAAA54F903FA9550000055555014423B940004115),
    .INIT_21(256'h5400001555550148083E5001010F21FBB6455ABA999655FBAFFE916B30AA06C4),
    .INIT_22(256'h6EEA995655E3AFFE9DBB31FF06C13FF0E6403D3B464005AFF33AAAA54E903EA9),
    .INIT_23(256'h004837415AFFC3F2AAA50E50FEA550000055555500120338A40000438C4ABD40),
    .INIT_24(256'h5515000380C3E400005E29C7FC416AE9A9555A17AFFE9DBB210F1AC53BAC3950),
    .INIT_25(256'h5906BFFA9DCB324F56F14E98095405CD72456BFFFF9AAA950E43FE9540000055),
    .INIT_26(256'hAFFFFE9AAA953A4FFE9540100555400040039020F90000548B8BF6D5C6E56A55),
    .INIT_27(256'hF807BE40011510633815073A696559D6FFFA9DCB339F56B15E9B0254022F0146),
    .INIT_28(256'h9E0BE24E95B053A6C395407412ABAFFFFE8AAA94390FFA550000155540004003),
    .INIT_29(256'hAA94390FFA5400005555400000FF3F801A80011DEE906CD65B4A69656992FFFE),
    .INIT_2A(256'h005FC87F366D9F8A6E65654CFFFE9E0BED09A56C6795B0E5A05E25AABC0FEA1A),
    .INIT_2B(256'h596C64D1AD7AA597CDBFFF0FFAAAAA50E90FEA5500015555400040F3C3E40010),
    .INIT_2C(256'hFA55001555555000003C00FA4000105BF403D2B32FBE7E7A9475FF3E9E0FD835),
    .INIT_2D(256'h9DE4EA494ABE542BFFFF5F5FC8E5156C6938580E6A45D8CF3C03ED9AA943A943),
    .INIT_2E(256'h56C36AA5B3CC0003EB1AA50FA503EA5500555555500000000FFEA55001596728),
    .INIT_2F(256'h55555000003C0FFFBEA4002983DB42AF9A5A8AAD6568BFFF5F9CC79515585A49),
    .INIT_30(256'hFAAE51A5BF3E9FE51295015B1A9D55B3AAFAAF3C1403E569A50E950FAA555555),
    .INIT_31(256'hFF3C1403A75AA53E940FAA55555555555000000C0FFFAFA400165A70ACD9AA26),
    .INIT_32(256'h0CCCFFFEAAA9000DE68DDA91EA093EAB5558BF3E9C455255005616A2556CFAFE),
    .INIT_33(256'hBFFE80856145004686A4966C3FF3FFFC140FA65A943E540FAA55555555555000),
    .INIT_34(256'hAC9A543A503FAA555555555550003FCFFFFFAAA5402EDC0BFFE5FE0F23FB9559),
    .INIT_35(256'hAAA510608A050234BFF0E0FA84277FFE50816144A50171B9E6AFFEB0FFFC000F),
    .INIT_36(256'h6D44F9006DBA3ABEFEB003FC003FA1AA503A503FAA555555555550003FFFFFFF),
    .INIT_37(256'h50FFAA555555555550000FFFFFFFAAA4007DBBC91200AFF0B0EE9427303E50B1),
    .INIT_38(256'h0000000000000000000000000000000009006CBE3ABEBEBC0FFC003AE56A503A),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra[12:0],1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(addra_15_sn_1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h02)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1 
       (.I0(addra[15]),
        .I1(addra[13]),
        .I2(addra[14]),
        .O(addra_15_sn_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module vga_rom_blk_mem_gen_prim_wrapper_init__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [14:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h001FFFFE1FF4FF2A000060CFA580403E380000000000000000001FFFFF3FFFFF),
    .INIT_01(256'h00000000000000001FFFFE1FC01F2E000000CFA600003E380000000000000000),
    .INIT_02(256'hBF4200007C780000000000000000001FFFFF1FC00F82000001CFA200003C3800),
    .INIT_03(256'h0FE00108060003DE82000BFCF80000000000000000001FFFFF0FC00110000083),
    .INIT_04(256'h000000003FFFFF07E003040680073E80007FFCF80000000000000000001FFFFF),
    .INIT_05(256'hFCEC0000000000000000003FFFFF03F0630206804FBD0000FFFCE80000000000),
    .INIT_06(256'hA0000CF20060FFF9F00000000000000000003FFFFF03F8FD0100004E7D0160FF),
    .INIT_07(256'h7FFFFF83FFFF0050301FF60070FFF8F00000000000000000003FFFFF03FFFF00),
    .INIT_08(256'h00101F000000037FFFFF83FFFF00287079F400F1FFF8F0000000001C00000001),
    .INIT_09(256'h0FFDFFF8C0000000181F00000003FFFFFF82FFF000102077E80FF9FFF8E00000),
    .INIT_0A(256'h1FE0000400E7D01FFCFFF8800000003F3F00000003FFFFF9823FF0000800BFC8),
    .INIT_0B(256'h000007FFFFF9820FF0008203FFC00FD4FFF8800000003F3F00000003FFFFF982),
    .INIT_0C(256'hF00000007FF80000001FFFFFF98000E7018107C9A00FCEFFF0C00000007F3E00),
    .INIT_0D(256'h4793C0001FFFC1FC00000083C00000001FFFFFF980007F00008DFBA0031FFFE0),
    .INIT_0E(256'hFFF9008073000023B7400097FF01E00000009E8F8000000FFFFFF90000770000),
    .INIT_0F(256'hFFF1FC000007FFFFF90D8470000013C6800003FF01C0000001FFF0F000000FFF),
    .INIT_10(256'h01FF038000003FFFC3EE000006FFFFF98D8E380000084F000003FF0180000017),
    .INIT_11(256'h1C0000010E000001FF03FF80018FC707FE000007FFFFF10D8F3C0000040C0800),
    .INIT_12(256'h74C3FFFFF106858D00000018000000FE03FF80000FF80F7E1F006FFFFFF1080F),
    .INIT_13(256'hE4C81FFF07FF00A6F3FFFFF100848F01008116000000FE03FFD80C0FFC03FF00),
    .INIT_14(256'hC80000001E83FFF1501FFF0FFF00EEFFFFFFF180448F000080380000047E83FF),
    .INIT_15(256'hF1804447100000281000000783FFDEC80FFF0FFF00E5FFFFFFF1804447000000),
    .INIT_16(256'h7FF40FFAFFFFFFF18244270C00001030000007C3FFDC0007F83FFE07A7FFFFFF),
    .INIT_17(256'hCFE3FFEFE0CFF87FE003F2F8FFFFF18346228600000800000087E3FF728007F8),
    .INIT_18(256'h850C0003000003CF23FFFFF98FFC7F8001F9F0FFFFF1830690A6080006000003),
    .INIT_19(256'h3FFFFFF9878408E38000030000044E63FFFFFF77F8FF4000FC73FFFFF9878608),
    .INIT_1A(256'h7FE7F1FEF0007E3FFFFFF9870484F7E000018100044F63BFDFFFCEB8FCF0007C),
    .INIT_1B(256'h8000089FE3FF7F1F7B78FFF020FF1FFFFFF98786A32BF00002820008CFE3FD7E),
    .INIT_1C(256'h8786F0FA7000006000189FE3FBFFC3C099FFF8107F0FFFFFF98786B37DF00009),
    .INIT_1D(256'hD8013FC7FFFFFB8706F8F93000002000109DE3DEFE81C055FFF8003FCFFFFFF9),
    .INIT_1E(256'hE38FFD80000EE7FC00FFC7FFFFF38786FCF9B00030500020DDE361FE18100CF7),
    .INIT_1F(256'hB000083C00408E671FFFF00105777F00FFE7FFFFFB0F87FF1D7000101200409C),
    .INIT_20(256'hFFFFFB0786FF0FA800000C08808EC22FFFF0000C9BE701FFEFFFFFFB0787FF8F),
    .INIT_21(256'h017FA070803FD7FFFFFB1F86FF679000000381008EA65FFFE0001F46E3807FD3),
    .INIT_22(256'h81009D207FFF8001FFE931007FFBFFFFFB1F847FF3EC00000CB4009CA6FFFFC0),
    .INIT_23(256'hC47FFEF0100007C7819DA0FFC78000FEF400207FF5FFFFF90FC43FFFE6000002),
    .INIT_24(256'h007FF3FFFFF10FC4FFFFFA100023F3809DE5FF870001FCFCC00077F1FFFFF10F),
    .INIT_25(256'hFFC000817E8640A0FBE4FFFFE18FCCFFFF7980000FF890C826FF830001F38C00),
    .INIT_26(256'h80000FCE5CC073FF8000EE7F6030083FE5FFFFE18FC6FFFFBCC0000FFCE8C047),
    .INIT_27(256'hFFE18FC6FFFFCE600007C7AA401BFE00007DFF9018083FFCFFFFE18FC6FFFF9C),
    .INIT_28(256'hFFB167013FF9FFFFF18FCCFFFFC600000FE1E5481FFC10019FFFC00A0167F8FF),
    .INIT_29(256'h7B482B800C0FFEFFD26E809FFB7FFFF18F8EFFFFE7300007F1F120272C1801F9),
    .INIT_2A(256'h7FFFF1900003F01C0DC200070FFF3CE1B300DFFBFFFFF18F8E7FFFF310000FF0),
    .INIT_2B(256'h6FFAFFFFF19F8CFFFFF98D0003F46005E8003BFFFF1C10FF807FFAFFFFF18F8C),
    .INIT_2C(256'h0FFFCE6100EFE00FF2FFFFF19FCF7FFFF8E20007E0001C48080E7FFF86003FC1),
    .INIT_2D(256'h2007EC00008FEFC3FF002007E7F81FF2FFFFE19F8FFFFFFCE50007E000002FC9),
    .INIT_2E(256'hF91FCCFFFFFF7A00018E000864FFE77C030907F3F03FE2BFFFF19F8CFFFFFE63),
    .INIT_2F(256'h1FFC6C9B829FFFF91FCCFFFFFF5980031000001A7FFFEE060C0FF9FD3FC29FFF),
    .INIT_30(256'h000BE7FFF000013FFE377B039FFFF91FC7FFFFBF9D40024104000EC7FEF00001),
    .INIT_31(256'hFFFF9E702158074141F97F6000081FFF19FF0397FFF91FC7FFFF3FDCA02154BE),
    .INIT_32(256'h068FFFF11F87FFFFFFFF40000446C000FD004038000FFF819F63CFFFF91F86FF),
    .INIT_33(256'h2824E004C3E12E0686FFF11FC7FFFFFFFF9700181FC01F3F8088000486C7821F),
    .INIT_34(256'h0016D6D00087C2F872E899F1F10C0687FFF11F87FFFFFFEFA7004329000F1FC1),
    .INIT_35(256'h1FC7FFFFFF639500239310000351D719A6AF7018000487FFF11F87FFFFFFE78B),
    .INIT_36(256'hC0348C6CCFFFE11FC7FFFFFF00CC0025E404000098F261F19CC0390C4C87FFE1),
    .INIT_37(256'h0000938C062965E00CCEE88FFFF11FC7FFFFFB00EC0027FB0000006E15C59F2B),
    .INIT_38(256'hE0003620035DC10000490764D377F70730288BFFF11FC7FFFFF300E000037F00),
    .INIT_39(256'h9FFFF11FC7FFFFE000342000B666001F7523165C69790332600FFFF11FC7FFFF),
    .INIT_3A(256'hEF4F9A7C004811BEFFF11FC7FFFF80003B2003CDD9097FFED1FA7F2D3C011A50),
    .INIT_3B(256'h10A78EED1FFEFEFBBD8F5400ED613EFFF11FCFFFFF80003A20018F92467FFE73),
    .INIT_3C(256'hCC7FFF00001D8000734EB21FFFFC6475F7670127E63FFFF11FCEFFFF00003C80),
    .INIT_3D(256'hC70264FDFFF11FCCFFF800000F60000C192A0FFFFFB5C430F7808AE57DFFF11F),
    .INIT_3E(256'hFFFFA017F64717EF114AFFFFF13FCCFFF800008FE000041C791FFEE2FFF2FCF1),
    .INIT_3F(256'hE385A00003A3EC7FFFFA443E5F93FF8189FFFFF13FCCFFE0670105A800011BB1),
    .INIT_40(256'hFFE13FCCFFF862A006E00000A0F41FFFFF33E69E9670D09DFFFFE13FCCFFE06F),
    .INIT_41(256'h0129455401BFFFFFF33FCCFFFCC00002D00001095C03FFFF889DFD3C9C5033FF),
    .INIT_42(256'h80884801CE3D4206CE060503BBFFFFF33FCCFFFE800302F00401805803EE3FF6),
    .INIT_43(256'hFFFF00000DF80600DC4101C60F1B064A83020B72FFFFF23FC4FFFF000003E006),
    .INIT_44(256'h07FFE5FFF23FC5FFFF003E7CF00040C87800E12F99808552BE0BF7FFFFF33FC5),
    .INIT_45(256'hE069FCC22FBC8447BFF7FFFA3FE5FFFF000FFEF0020158B300F0FF9CC3FB39AF),
    .INIT_46(256'hFC780241709001E005BD9217BE9E431FFFFFFA3FE5FFFF00FFFCFC0241509301),
    .INIT_47(256'hFB3FE4FFFFFFFF7E76004050E101E007A46EECDC03A9FEFFFFFB3FE4FFFF07FF),
    .INIT_48(256'h7E0AE27EDFFFFFFB3FE5FFFFFFF81F760000E16001E003AC326D56F7BCAFFFFF),
    .INIT_49(256'hA12003C00CCD0C16082BDEC2FFFFF33FE5FFFFFFE01FFC0188812003E001CC0C),
    .INIT_4A(256'hFFFFE03FFE00DBE0300B8039D4990047CD5FC8FFFFF27FE5FFFFFFE01FFF01DA),
    .INIT_4B(256'h860FFFFB7FCDFFFFDFF0FFFE90C9A08BFF06BCAE6132979690041FFFF27FE5FF),
    .INIT_4C(256'h68C6701903C35A84BFFFFB7FCDFFFF0FFFFFFF906AA03BFF0317EA21BC8F9FB4),
    .INIT_4D(256'hFB4050E3F17F3FA71F7A0E145C72B9BFFFFA7FCDFFFF07FFFFFF9072E13CFF0A),
    .INIT_4E(256'h7FC8FFE007FFFFFBC050E005BF710405DDC0002E85A48FFFF27FC4FFF007FFFF),
    .INIT_4F(256'hB07AD3349AFFE17FC87FF00FFFFFFFC014E000E7608400EC20583920779BFFE2),
    .INIT_50(256'h1C01E195413359A31C7DD548FFE17FC87FFCCFFFFFFF8014E0161261170074D0),
    .INIT_51(256'hFFFFFFFFE01B203FB9677EE0C12C32849397E8FDE17FC87FFFFFFFFFFFC03420),
    .INIT_52(256'h181FF33FC8FFFFFFFFFFFFC019203C89666FC2309002ADC9D02CDFE37FC8FFFF),
    .INIT_53(256'h9B0CF60019BB8A4C0FF37FE8FF1FFFFFFFFFC019203E2842579402D6011DB165),
    .INIT_54(256'hE017B040C8401397C66B00076BEC9A0FF07FE8FF07FFFFFFFFF01DA00E7740DE),
    .INIT_55(256'hE87F0077FFFFFFE807B0A9CF40CE5FE7350019BBA72257F07FE8FF03FFFFFFFF),
    .INIT_56(256'h1F65AA52CFE07FC81F001FFFFFFFF805B0F99D4000F8B750801E094FC615E07F),
    .INIT_57(256'hB5878000E32C141DC932B2B9F13DC87F000FFFFFFFF80DB0E19544880063D780),
    .INIT_58(256'hFFFFFF702D20B3AD878000E3186027E230A8B5E13DC83F0007FFFFFEF02F20F3),
    .INIT_59(256'h2C313FC83F0001FFFFFF7C013093AC878001E39740210620F243713DC83F0003),
    .INIT_5A(256'hC0CBB03E709137C4733FC83C0001BFFFFF7C04B0938C87C001C18DB006AC39AC),
    .INIT_5B(256'h4190838E80E003C0845002C81BBBCE723FC83CE0009FFFFF384290832C87E003),
    .INIT_5C(256'h7FFE004FFFFFBE091083CF807007C3824012203B21341A3FC83FF800CFFFFFBA),
    .INIT_5D(256'h506EC9F2A03FC83FFF004FFFFFBC0010430F007807C3D238CE2071E9ED0A3FC8),
    .INIT_5E(256'h40787F8790A44AB0F6F902F03FC83FFF8627FFFFF40810438900781F83916459),
    .INIT_5F(256'hFFFFFF081043DD433FFF07106600C820CDF1F27FE83FFF8737FFFFFD09104389),
    .INIT_60(256'h2B7FE83F1FE30BFFFFFE100023D5013FFF0F004C0111FCD775507FE83FFFC313),
    .INIT_61(256'h101D03126F902B767FE83F1FF309FFFFFF110023C681BFFF0F002C00A8F1C2A5),
    .INIT_62(256'h0013F9E67FFF0FB01E81A3222A28727FE83FEFF00DFFFFFF890013D6893FFF0F),
    .INIT_63(256'h0FFC04FFFFFF080001E8C17FFF1FA00C89840A2A96727FF4030FF804FFFFFF08),
    .INIT_64(256'h5697AA727FF400FFFE447FFFFF0A0C0CED00FFFC1FA0842284AD57E9327FF400),
    .INIT_65(256'hFFF03FE00135A1AC0889707FF2007FFE667FFFFF0E1400EDF1FFF81FA0C15888),
    .INIT_66(256'hFFFEBA1521E9AFFFE03FE001F926A1EE8A727FF20003FF267FFFFF5C1506E87F),
    .INIT_67(256'h7FF60001FF027FFFFEAA0523E98FFFC03FF0017826B9AB8BB27FF20001FF027F),
    .INIT_68(256'h047F40A6E5EE127FF40000FF027FFFFE0A0541FD87FF003FF10422C2AB81C6B2),
    .INIT_69(256'h214F4000000F71000E1E6D428FA2FFF40000FF827FFFFE0C1550D3EF00001F71),
    .INIT_6A(256'hFFF27FFFFE8017007D1FFC000F72040223EB25A63AFFF60000FFC27FFFFE4C15),
    .INIT_6B(256'h89F43CFFF30000FFFA3FFFFEF01600F01FE7201F72000E0860205EBEFFF60000),
    .INIT_6C(256'h60FE50000676194FADEEFFF30000FFF83FFFFFF08E003FCE38207E72004F75E3),
    .INIT_6D(256'hFFF08A00170401C1FE5000451EE3DCD115FFF700F83FFC3FFFFFF08A007EF200),
    .INIT_6E(256'hE700FF07BC3FFFFFF48A000FFCE000FC7000B187518DDFCBFFF700FF1FFC3FFF),
    .INIT_6F(256'hC0BD6B263A38CFE700FF80AC3FFFFFF49A0017C30001F86000D84373DBE78EEF),
    .INIT_70(256'h03F3E601F00000001F29623A2AFEE780FFE0A43FFFFFF49E000DF00003F00000),
    .INIT_71(256'hE33FFFFFF0880017E0FC03E0000004197196306E7EE780FFF8A73FFFFFF48A00),
    .INIT_72(256'h371A7FE780FFFFE33FFFFFE1180A43C01F03C0000000A4ED5714327FE780FFFF),
    .INIT_73(256'h05000007F7BD57771A7FE780D8FFF23FFFFFE10D0651C01F020000000776DEDF),
    .INIT_74(256'hE1ED07E3F03C380900044751D33FE3627FE70080FFFA3FFFFFE10D06F3803F0E),
    .INIT_75(256'h00047FFE9FFFFC37ED07E3F8F8C018000447DD47FFFAB27FE700F1FFFE1FFFFF),
    .INIT_76(256'h4E096FFAA57FE900013FFFDFFFE1B77D0FE3E0780F300004E3F47D6FFAAE7FE7),
    .INIT_77(256'h9FFE006000046CD616AEF23BFCC80301DFFF0FFC0197FD869387FF40E0000463),
    .INIT_78(256'h00020013FD01C19FFC0060000454A4DE01E21FFDC807E047F70FF00017FD81F3),
    .INIT_79(256'h349DD0B6F037B7200E07907D0707CFF800600004663AEB69B4031FC809F063A7),
    .INIT_7A(256'h01046CBE40F9BC4BFFD0ECB01FF3D3E01FF07D8603CF100060000458C21E0AB4),
    .INIT_7B(256'h4A407F8F00016307143BD022E04E12FFD1D8BB8DF393C0FFF47C849F8F000163),
    .INIT_7C(256'h7FE2BF510FFFE442A1FE0F000062CE144FBCC5AC6817FFD1203FC0FF5101FFF4),
    .INIT_7D(256'hCE6DFC8B7FD2B0FEF11F103FFFF867A1F80FC0086657E46D19164780317FD1C0),
    .INIT_7E(256'hC00146560436F4C58F340D7F5377FFF80F783FFFF82561E00FC0006677F6B332),
    .INIT_7F(256'h7FFFFA03C3E01FC0014216044E68CE1634097F5374FDF98F907FFFFA03C3E01F),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module vga_rom_blk_mem_gen_prim_wrapper_init__parameterized4
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [14:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFE00001FFFFFF35FFFF9F203FFFFFFFC7FFFFFFFFFFFFFFFFFFE00000FFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFE00001FFFFFF31FFFFFF203FFFFFFFC7FFFFFFFFFFFFFFFF),
    .INIT_02(256'h607FFFFFFF87FFFFFFFFFFFFFFFFFFE00000FFFFFF7DFFFFFE203FFFFFFFC7FF),
    .INIT_03(256'hFFFFFF07F9FFFC40FFFFFFFF07FFFFFFFFFFFFFFFFFFE00000FFFFFF0FFFFF7C),
    .INIT_04(256'hFFFFFFFFC00000FFFFFF03F97FF880FFFFFFFF07FFFFFFFFFFFFFFFFFFE00000),
    .INIT_05(256'hFF13FFFFFFFFFFFFFFFFFFC00000FFFFFF01F97FB081FFFFFFFF17FFFFFFFFFF),
    .INIT_06(256'h7FFFF203FFFFFFFE0FFFFFFFFFFFFFFFFFFFC00000FFFFFF00FFFFB101FFFFFF),
    .INIT_07(256'h8000007FFFFF003FCFE207FFFFFFFF0FFFFFFFFFFFFFFFFFFFC00000FFFFFF00),
    .INIT_08(256'hFFEFE0FFFFFFFC8000007FFFFF001F8F8407FFFFFFFF0FFFFFFFFFE3FFFFFFFE),
    .INIT_09(256'hFFFFFFFF3FFFFFFFE7E0FFFFFFFC0000007FFFFF000FDF8C0FFFFFFFFF1FFFFF),
    .INIT_0A(256'hFFFF0003FF101FFFFFFFFF7FFFFFFFC0C0FFFFFFFC0000007FFFFF0007FF480F),
    .INIT_0B(256'hFFFFF80000007FFFFF0001FC101FFFFFFFFF7FFFFFFFC0C0FFFFFFFC0000007F),
    .INIT_0C(256'h0FFFFFFF8007FFFFFFE00000007FFFFF0000F8263FFFFFFFFF3FFFFFFF80C1FF),
    .INIT_0D(256'h384C7FFFFFFFFE03FFFFFF7FFFFFFFFFE00000007FFFFF000072243FFFFFFFFF),
    .INIT_0E(256'h0000FFFFFF00001C087FFFFFFFFE1FFFFFFF800FFFFFFFF0000000FFFFFF0000),
    .INIT_0F(256'h0001FFFFFFF8000000FFFBFF00000CB8FFFFFFFFFE3FFFFFFC0000FFFFFFF000),
    .INIT_10(256'hFFFFFC7FFFFF800003EFFFFFF90000007FF1FF00000731FFFFFFFFFE7FFFFFF0),
    .INIT_11(256'hFF000002F3FFFFFFFFFC007FFF700007FFFFFFF8000000FFF0FF000002F1F7FF),
    .INIT_12(256'hCB3C000000FFF87F000003E3FFFFFFFFFC007FFDF0000F7FFFFF90000000FFF0),
    .INIT_13(256'h1B27E00007FFFF790C000000FFF87F000000E5FFFFFFFFFC0027FBF00003FFFF),
    .INIT_14(256'hAFFFFFFFFFFC000ECFE0000FFFFF31000000007FF87F000001CFFFFFFFFFFC00),
    .INIT_15(256'h007FF83F0000004FFFFFFFFFFC0021B7F0000FFFFF1A000000007FF83F000000),
    .INIT_16(256'h7FFFF00D000000007FF81F0000003FFFFFFFFFFC0022FFF8003FFFF858000000),
    .INIT_17(256'h3FFC0017FF30007FFFFC0D070000007FF81F0000001FFFFFFF7FFC0089FFF800),
    .INIT_18(256'hA2000007FFFFFC3FFC000FFE70007FFFFE060F0000007FF80FC000000FFFFFFC),
    .INIT_19(256'hC00000007FF807F0000007FFFFF83FFC003FFF8800FFFFFF038C0000007FF807),
    .INIT_1A(256'hFFF801FFFFFF81C00000007FF803F8000003FFFFF83FFC407FFFF140FFFFFF83),
    .INIT_1B(256'hFFFFF07FFC007FFFFC00FFFFDF00E00000007FF800EC000001FFFFF03FFC00BF),
    .INIT_1C(256'h7FF800FB800000FFFFE07FFC01FFFFFF01FFFFEF80F00000007FF800FE000000),
    .INIT_1D(256'hFFFEC0380000007FF800F9C000007FFFE07FFC03FFFFFF91FFFFFFC030000000),
    .INIT_1E(256'hFC17FFFFFFF6FFFFFF00380000007FF800F9C000003FFFC03FFC0BFFFFFFECFF),
    .INIT_1F(256'hA000001FFF807FF80FFFFFFEF9FFFFFF0018000000FFF8001D4000003FFF807F),
    .INIT_20(256'h000000FFF8000FB000001FFF007FFC3FFFFFFFF0FFFFFE0018000000FFF8008F),
    .INIT_21(256'hFE803FFFFFC004000000FFF800679800000BFE007FF83FFFFFFFE07FFFFF8004),
    .INIT_22(256'h7C007FFCFFFFFFFE000FFFFF8008000000FFF800F3E800000486007FF83FFFFF),
    .INIT_23(256'hF800FEF2000007FE007FFC7FFFFFFF0007FFFF800A000000FFF800FFE4000005),
    .INIT_24(256'hFF8008000000FFF800FFFB000007FF407FF8FFFFFFFE00013FFF8808000000FF),
    .INIT_25(256'hFFFFFF7E80007FDF040D0000007FF000FF79000007FFC03FF8FFFFFFFE0000FF),
    .INIT_26(256'hC0000FFFB03FFDFFFFFF1180002FF7C00D0000007FF800FFBC80000FFF603FFB),
    .INIT_27(256'h00007FF800FFCE400007FFDE3FFBFFFFFF82000017F7C0040000007FF800FF9C),
    .INIT_28(256'h000164FEC0040000007FF000FFC620000FFFFEBFF7FFEFFE6000000DFE980400),
    .INIT_29(256'hFCEFFFFFF3F00000026F7F60068000007FF000FFE720000FFFFFBFEFFFE7FE00),
    .INIT_2A(256'h00FFF1980007FFFFF7DFFFF8F0000001B3FF20068000007FF000FFF3100007FF),
    .INIT_2B(256'h90060000007FF000FFF9880007FFFFF9D7FFC400000000FFFF80068000007FF0),
    .INIT_2C(256'hF000000000FFFFF00E0000007FF000FFF8E40003FFFFE337F7F1800000007FFE),
    .INIT_2D(256'h0003F3FFFF70103C00000007FFF7E00E0000007FF000FFFCE60007FFFFFFD036),
    .INIT_2E(256'h00FFF000FFFF7B0003F1FFFF98001880000107FFFFC01E4000007FF000FFFE62),
    .INIT_2F(256'h1FFFFF607E400000FFF000FFFF590003E1FFFFE400000000000FFFFEC03E4000),
    .INIT_30(256'hFFF400000000003FFFFF80FF400000FFF800FFBF9D800180FFFFF10001000000),
    .INIT_31(256'hFFFF9E4001987FFEBE00000000001FFFFF80FF400000FFF800FF3FDCC000907F),
    .INIT_32(256'hFE000000FFF800FFFFFF6000C43FFFFF01000038000FFFFFE09F400000FFF800),
    .INIT_33(256'h0003E007FFFFF1FE000000FFF800FFFFFFA000583FFFE0C08000000086FFFFE0),
    .INIT_34(256'h0069CFFFFF7801C0022FF9FFFFF3FE000000FFF800FFFFEFB000FF1FFFF0E040),
    .INIT_35(256'hFFF800FFFF639800744FFFFFFC22D4387EBFFFFFFFFC000000FFF800FFFFE790),
    .INIT_36(256'hFFFF739C400000FFF800FFFF00C8001E13FFFFFF000FE02F9CFFFEF3BC000000),
    .INIT_37(256'hFFFF6103DE7967FFFF3118400000FFF800FFFB00E8001A06FFFFFF8002FC1FEF),
    .INIT_38(256'hE000340000602FFFFFB002E4EF77FFFFCF98000000FFF800FFF300E4001D80BF),
    .INIT_39(256'h800000FFF800FFE0003600033813FFE08902D663F9FFFFCF90000000FFF800FF),
    .INIT_3A(256'h3CD066FFFFF7F0000000FFF800FF80003A00000E3CF68000827D60DDFFFFE7B0),
    .INIT_3B(256'h00478F32E001351A7031DFFFF3E0000000FFF000FF80003B00000FF73980016A),
    .INIT_3C(256'hF000FF00001D0000034E45E0001955180CFFFEF9E0000000FFF000FF00003D00),
    .INIT_3D(256'hFFFD60000000FFF000F800000F80000419C1F0000C6F18CF0FFF7DE0000000FF),
    .INIT_3E(256'h00005D1C0861FFFFFE40000000FFF000F800008F8000081D82E0011A840C430F),
    .INIT_3F(256'hE387C00001239B8000040FC061EFFFFE84000000FFF000E0670107C000041BCA),
    .INIT_40(256'h0000FFF000F862A007C00001A713E000003C0161E97FEF80000000FFF000E06F),
    .INIT_41(256'h015682BFFE80000000FFF000FCC00003E000008E33FC00003C00C2C3FFEF0000),
    .INIT_42(256'h008427FE00028E00B5803FFC00000000FFF000FE800303E000008E37FC00003C),
    .INIT_43(256'h00FF00000DF00000902FFE0000870EB5003DF441000001FFF800FF000003F000),
    .INIT_44(256'hF800180001FFF800FF003E7CF800009027FF000003827A0101F408000000FFF8),
    .INIT_45(256'h000600E3B00103F850080001FFF800FF000FFEF80000006FFF000001C3740100),
    .INIT_46(256'hFC7C0000204FFE000200C1F00101FCC0000001FFF800FF00FFFCF80000004FFE),
    .INIT_47(256'h00FFF800FFFFFF7E740001205FFE000018621203187E61000000FFF800FF07FF),
    .INIT_48(256'h4104193F00000000FFF800FFFFF81F74000100DFFE000010344208087F500000),
    .INIT_49(256'h009FFC000C31062907193FFD000000FFF800FFFFE01FFE0001209FFC0000301C),
    .INIT_4A(256'hFFFFE03FFF0001408FF4003EA80C2D0019BF0B000001FFF800FFFFE01FFE0001),
    .INIT_4B(256'h87F00000FFF000FFDFF0FFFF000140440000C350070D0001CC85E00001FFF800),
    .INIT_4C(256'h1BF001460C1EE587C00000FFF000FF0FFFFFFF0000400800020FE44387000CC2),
    .INIT_4D(256'hFF8002000F00385CE400800891E0FBC00001FFF000FF07FFFFFF000000C2000C),
    .INIT_4E(256'hFFF000E007FFFFFF80020003807FC00220E01893D847F00001FFF800F007FFFF),
    .INIT_4F(256'h6082FE0FF00000FFF000F00FFFFFFF80020000587F0001106030816E2FFC0001),
    .INIT_50(256'h160EFE2A004C3000824B0FF20000FFF000FCCFFFFFFFC00200082C7E04008870),
    .INIT_51(256'hFFFFFFFFC0040010067899101E180102ACC7E80000FFF000FFFFFFFFFFC00200),
    .INIT_52(256'hEA0000FFF000FFFFFFFFFFE00600177679DE31DF1C0102B661042000FFF000FF),
    .INIT_53(256'hE7F7060004BE4D108000FFF0001FFFFFFFFFE0060013FF7DCDE3F50C0002BEF0),
    .INIT_54(256'hF00A8007C77F1F7FFB86000E3E3D124001FFF00007FFFFFFFFE0028018767FC0),
    .INIT_55(256'hF000007FFFFFFFF00A8007C67FCFFFF9C700003E6A1E6801FFF00003FFFFFFFF),
    .INIT_56(256'h070E7B8DC001FFF000001FFFFFFFF0088007867F00F8B82300040EC4191801FF),
    .INIT_57(256'h8EFF8000FC11C0059A38C8BE00FDF000000FFFFFFFF000801F8E7F80007C2280),
    .INIT_58(256'hFFFFFF7800804F9EFF8000FC24C01E6410D44600FDF0000007FFFFFEF800800F),
    .INIT_59(256'hEFC0FFF0000001FFFFFF7804806F9EFF8001FC18E0109810CFC380FDF0000003),
    .INIT_5A(256'hFF04701C000C7BFF80FFF0000001FFFFFF7804006F9EFFC001FE02E0145008F3),
    .INIT_5B(256'h00007F9CFFE003FF07F02C0006DFD781FFF0000000FFFFFF3C02007F1EFFE003),
    .INIT_5C(256'h0000007FFFFFBC00007FDDFFF007FC01B85C0002FBE7E1FFF0000000FFFFFFBC),
    .INIT_5D(256'h201C47AAF1FFF00000007FFFFFBE08003F1DFFF807FC01E82C0008F559F1FFF0),
    .INIT_5E(256'hBFF87FF8005C1720045F9BE1FFF00000063FFFFFFE08003F9DFFF81FFC019842),
    .INIT_5F(256'hFFFFFE09003FD9BCFFFFF8000C0B90064FE981FFF00000073FFFFFFE09003F9D),
    .INIT_60(256'hF0FFF000E0030FFFFFFF01001FD9FEFFFFF0104B0F600E6F7DE1FFF00000031F),
    .INIT_61(256'h0020000001773789FFF000E0030FFFFFFF00001FDB7E7FFFF0104C83301B6FBF),
    .INIT_62(256'h000FE201FFFFF0001001800C753F81FFF00010000FFFFFFF18000FCB76FFFFF0),
    .INIT_63(256'hF00007FFFFFF98000FE33EFFFFE01000C0C22C79BB81FFF800F00007FFFFFF98),
    .INIT_64(256'h0C3B7781FFF800000047FFFFFF9A0007E1FFFFFFE01001FCC4217E77C1FFF800),
    .INIT_65(256'hFFFFC01000C1064432F581FFFC00800067FFFFFF9A0007E2FFFFFFE010078F42),
    .INIT_66(256'hFFFFC80003E64FFFFFC01000900101F1B681FFFC00FC0027FFFFFF8A0003E71F),
    .INIT_67(256'hFFF800FE0003FFFFFFD80001E66FFFFFC0000004400DF417C1FFFC00FE0003FF),
    .INIT_68(256'h0064491FFA33E1FFF800FF0003FFFFFFF80001F267FFFFC000009CF08FFE5BC1),
    .INIT_69(256'h00FF7FFFFFF0000413F87F5D5371FFF800FF0003FFFFFFFC0001F00FFFFFE000),
    .INIT_6A(256'h0003FFFFFFF40000E0E000FFF000002CC3EF1A52D1FFF800FF0003FFFFFFFC00),
    .INIT_6B(256'hBE0A4FFFFC00FF0003FFFFFFF400007FE000FFE0000009EBC81F82D9FFF800FF),
    .INIT_6C(256'hFF0000000B9079BA13C7FFFC00FF0001FFFFFFF400007F0FC7FF8000000451E3),
    .INIT_6D(256'hFFF400003707FFFE00000005F8E3BF1FA3FFF80007C001FFFFFFF400003E03FF),
    .INIT_6E(256'hF80000F841FFFFFFF000001FFF1FFF00000000E0052F19D1FFF80000E001FFFF),
    .INIT_6F(256'h000D08198DF3CFF800007F51FFFFFFF000000FFCFFFE0000000041186D11D1EF),
    .INIT_70(256'h07F3FFFE00000000EE221D8DF1FEF800001F59FFFFFFF0000007FFFFFC000000),
    .INIT_71(256'h1DFFFFFFF0020003E0FFFC000000006D72098FF1FEF800000759FFFFFFF00000),
    .INIT_72(256'h8CE1FFF80000001DFFFFFFE0020003C01FFC000000000862488FE1FFF8000000),
    .INIT_73(256'h000000001C01C88C61FFF80000000CFFFFFFE0020003C01FFC000000003C40C8),
    .INIT_74(256'hE0020001F03FC0000000003A23800C31FFF800800004FFFFFFE0020001803FF0),
    .INIT_75(256'h000C0000FFFFFFF0020001F8FF00000000000207800471FFF800100000FFFFFF),
    .INIT_76(256'h1A4F000412FFF000030000FFFFFE70020001E07FF0000000004327000401FFF8),
    .INIT_77(256'h1FFFFF80000000306A010C41FCF00000C0007FFFFE7002000807FFFF00000000),
    .INIT_78(256'h7FFDFFF40200BE1FFFFF8000000030EE1F0C42FDF00000C0007FFFFFF002002C),
    .INIT_79(256'h0B9DE00E0010005FF1FFF40202F80FFFFF8000000550D31708191FF007002000),
    .INIT_7A(256'h00000F02608D100DFFE01C0008008C1FFFF4020BFC0FFFFF80000003802E5F18),
    .INIT_7B(256'h001F800FFFFE80000004C873DEA80BFFE0380004008C3FFFF4020F600FFFFE80),
    .INIT_7C(256'h0000000EFFFFF4003E000FFFFF8000000900FC33700DFFE0E00002000EFFFFF4),
    .INIT_7D(256'hF7020005FFE1800001004FFFFFF8007E000FFFF78000000EE17938480FFFE0C0),
    .INIT_7E(256'hFFFE800000070CFE420009FF610700010047FFFFF800FE000FFFFF8000003F0A),
    .INIT_7F(256'hFFFFF807FC001FFFFE8400003281FCCB0005FF61070200802FFFFFF803FC001F),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module vga_rom_blk_mem_gen_prim_wrapper_init__parameterized5
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [12:0]addra;

  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [12:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:4]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h8C8C955DDDD55511951CCCC52E262D805084808D0804C8C481E2AEE2A2D0D195),
    .INIT_01(256'h44044D4C0C4CCC4404484008C0F594D6FEE2AE119111D1849CC890594840800C),
    .INIT_02(256'h9999DDDD1519D5D40000477BB7773B66EA62A62E62D951D951D9995551DD119C),
    .INIT_03(256'h11D5555115188C1E66B6580C550C440880848084C9626AE26A59115199D15555),
    .INIT_04(256'h8C4CCC84040C8CC8C93A10D27E2295DA2D91411584C808590440440C4000D919),
    .INIT_05(256'h1919D5D44C00DBB7FB73FA66A62EA2EA6E9551D551DD999551D9DD5088048044),
    .INIT_06(256'h511844D6EAB6DC8C15504C40C80844400D226A2266A1959D59D155519999DDDD),
    .INIT_07(256'h0800CC08417FC10EA332199A6559191D48C90C99844480844084C11D11155551),
    .INIT_08(256'hCC446F33BB7FBB6E62EA62EA2D951D95511D995551DDD945C8C8C8844C848440),
    .INIT_09(256'h2AB298C41155C008C8808884005A2A6EAA2EA555559D111D5599DDDD11191994),
    .INIT_0A(256'h483B058FE372115AD99904408C8D8C96C44C848404CC855D55155555911C4046),
    .INIT_0B(256'hBB73336A62EA62EA2D511D9511D995555111D99DC8CC4844048440404C48404C),
    .INIT_0C(256'h1C05040844C8C8800CDEA66A6AE2AA51555D111D5599DDDD155919D8C00D3F3B),
    .INIT_0D(256'h2E72595ED9D0CCC08CC008DAC404448C48CCC5AD5515555599D0C41E2662DCC8),
    .INIT_0E(256'hA6E662A6D951D95511D9551155111D9DC48C41C04448C004C0C4C40804AA8426),
    .INIT_0F(256'h485C084C4449A2622A2AE2EDD95D9D1115959DDDD511959484C673FFB773FB2E),
    .INIT_10(256'h9D584C088040089224000C88C0C0C4915115555199DCC4526A6E54805100404C),
    .INIT_11(256'hD91DD9511DD955111111DD99084C85C040C8C004448440C802EF19AA3A3ADDA2),
    .INIT_12(256'h40C16EAE62A6622219595D1115959DDDD1D5D99C004777B7B773F72EA2E62E62),
    .INIT_13(256'h004C0C919900484448444891555995519998C8966E261C409515948040CC8C4C),
    .INIT_14(256'hDD9951111111DD99088C4D48504CCCC88C4040C8026B29EEB3FA9D2A5D808C40),
    .INIT_15(256'h62A6A6E2DD155D11559559DDDD15199C00133377B73FB72EA2A62A6D951D9551),
    .INIT_16(256'h4D18440848048C5D551555559994C01A6A22DC4011159904484CC04C4005D6AA),
    .INIT_17(256'h1111D99908CCC944DC00888C04C44444C0CEF6AA266A66AECD4C04C00C400451),
    .INIT_18(256'h91D11D115995599DD9D9555C04EBFFBB773FB72A62A6EA2D951D951DD9951111),
    .INIT_19(256'h480005D91D9DDD115950C49E2A229C404481994C4400004048045A6A22A22EA6),
    .INIT_1A(256'h4C40C1849484848484444004055AAA61A262EA1C051008C840880C1508C44884),
    .INIT_1B(256'h99955599D9191118087337F773FFB6EA62A2EA2995D9511D995111115151DD99),
    .INIT_1C(256'h1DDDDD115950CCD26F2E5840004C595040CC00884C4011AA22E2EEEA59115115),
    .INIT_1D(256'h08C80488808889D996D5590D6A26B58C09D0C80C88CC445DC04000884CC8011D),
    .INIT_1E(256'hD955111409BB3BB333FB72EA2E62E6D951D951DD9511DD1155511D9940484584),
    .INIT_1F(256'h1550C0126FE68400448C15504084808C0C8C0956E226EAEE9D155D159995159D),
    .INIT_20(256'h404555CC4440DC0EEAEA2D00899448C8C08C84018084080808444CD151151151),
    .INIT_21(256'h0A3BBF3733FB72A6EA2EA6D551D511D9551DDD1155511DDD4C8485884C44CC40),
    .INIT_22(256'h6AAE00049888C155800800C4484C401EAE22A6AA9D555D159995159DDD91D551),
    .INIT_23(256'h44441C9A6A6EAA19C51804C0400800090040488008000499111A651D155CC056),
    .INIT_24(256'h33FB72E6A62A6295519511D9511DDD111155111DD90C455D918884088CDCC0C4),
    .INIT_25(256'h8844C15904C0CC4C884C005AA226A2269D555D15599559DDDD91D9994AFB33BB),
    .INIT_26(256'h59AA611595D4484C8844888400C84C04C84401D95115165D5110CC96A2690044),
    .INIT_27(256'hA2E62E991D9511D95511115959955555DD84441D1C48C840444C44CC8888592A),
    .INIT_28(256'h400C88800C48CC592E6A6255D5DDDD1955999DD11DD59DDD8B377B373FB76EA2),
    .INIT_29(256'h915D4088C8408C4CC088458CC408C5955515162D1150005AE22D8C8C4D88C885),
    .INIT_2A(256'hDD9511D951111155599559551D80C4951500408CC8C8080C0085A2619A6E26D4),
    .INIT_2B(256'h048040912E625D119511DD15999D1111199559115BFBFB3B3FB72EA26EA2E955),
    .INIT_2C(256'h8CCC08000C8444444000156115111119DD180CD6AEE14CC0C1C8C40C09800088),
    .INIT_2D(256'h51111155999959511DD084D5D50488C0004880048806626DDDA215DD1C00D44C),
    .INIT_2E(256'h22A61D5C1599515DD9D155195D9D5D9DA3BFF73B3FB72E6E2E62D951D99511D9),
    .INIT_2F(256'hC84844C4C0005C19551111D9DDD8C0922EED8C88C1C8C404C94C440C40008CC5),
    .INIT_30(256'h99D99951195048CD1180CC488C044CCC04C2AD5D0A5CD0D218841C88880C0808),
    .INIT_31(256'h19DD9591D9999919D1D088553F3BF7773F72EA2E2E619551D99511D955115599),
    .INIT_32(256'hC0C41815551111D9D9D0089E2EA18840044C1844845CC004800C4C41AEAEE11D),
    .INIT_33(256'hD911C809D1004084CCC408CC80055DE48D4C05DA50100C00004444000C4CC888),
    .INIT_34(256'h51D95D08000C8C05FBBBB7B33B72E6EA2E62D95199511DD95155559959D99951),
    .INIT_35(256'h551111D9959000DAE661004400CD11848C09C088848844CD9662A95D9515D955),
    .INIT_36(256'h1544884000C04484000C55E1CC0951EA1549888400C40CC00804CC8CC4C0D9D1),
    .INIT_37(256'hCC04408EFB3BB7BFFB3EA2E6EA61951D95511D951115555959999951D9DD848C),
    .INIT_38(256'h9148016A2A64C044448C111484855CC4448C48009222259955599D59195D4C0C),
    .INIT_39(256'h4CCC400800C0C091919CD6A611054C4CC8440C8CC4404440C88DDD8595551119),
    .INIT_3A(256'h3B37B37FFB3A62A2A61D95199511D951111555995999955DD1D9D8C8C4C8C844),
    .INIT_3B(256'hEA64C0000C04D15848485004C0C0C08CDDAEA69915519999840C84004488088E),
    .INIT_3C(256'hC08C40406951A2A994CC488C40C4008808CC40C4480D450D99551119D994012A),
    .INIT_3D(256'hF72A6E6262D951D9951DD951555599995999555D91159C000C588CC880C80C84),
    .INIT_3E(256'h0880859D0D8CCD08C8C888C0C9E6E29D5D5D9084888888C08440080B3733BF33),
    .INIT_3F(256'hD1EAE2610C08008C4CC40C088400CC0044048DC5D1D511D5919881EE3EAC4040),
    .INIT_40(256'hA19551D9951D9559111559999995555551D99D884C1C08404408C000C4040409),
    .INIT_41(256'h9040491C0008C8C809266AD1D21DC84048C4C4C0C40CCC5BFFB7733F77EA2A6E),
    .INIT_42(256'h000CC0C40C04C40444C408C44804C5449DD91119D19809623669CC00CC0C0591),
    .INIT_43(256'h51D95555555599DD9955555595D999C808499448C40088C440484CC12D666A10),
    .INIT_44(256'h84C0C0C4C0926D54D2AD8C044C808048049010E3FBB773FF73E62A2E619551D9),
    .INIT_45(256'h80C0044404C044CC884C0DD89D99555DD18CC5A632254444804001999CC00C99),
    .INIT_46(256'h55599DDD9955555591D959188C48D4C10CCC0CCC880CCCD596A3E68C80C88404),
    .INIT_47(256'h8C5A66D9D5298844C44C48C04D90CCBFBB7733FB73A2E6EA5D911D9551955551),
    .INIT_48(256'h8C48444CC0809558DD99555DD14C8DE63E615D48C0C809951C80CCCD1C080C04),
    .INIT_49(256'h9955555591D9595880080DD4C40080C8C4CC04456EAE59D8448C4848080008C8),
    .INIT_4A(256'h55610CC4C4C048088C88CDFB77733FBB3F6EA2A51D91D9555D9999515999DDDD),
    .INIT_4B(256'h808051901D999519D14006A672E1158844C80895D9CC40055DCCC08800899E59),
    .INIT_4C(256'h955D599C4080881180C480CC440884016299D990404084C4C94400404C4C8C04),
    .INIT_4D(256'h4C088C48CC888EFF77333FB7FA2A6E951D51D9551D9999519999DDDD99555555),
    .INIT_4E(256'h51DD9519D1408AA27225DD0C0440C41955484084591888848808D191EEE98000),
    .INIT_4F(256'hCC80048C800088000C80080D5D6655D8D4015000114CD4844C0C488888888D98),
    .INIT_50(256'hC4484F7B7733FB73B6E62A51D951D955D9559951999DDDDD9955555551519990),
    .INIT_51(256'h9544DA66EA695DC04C8C84151110844CC994048C484CC01EE62988884C8C0048),
    .INIT_52(256'h40C0444CCC480005856911D1D401408415C8DDC8004C0800C04889905D9D991D),
    .INIT_53(256'h7333FB3FB2A6EA51995D9511D999955599DDDDDD995555551D11888C98084088),
    .INIT_54(256'hA25991C0440C0C0995D804C4081584CCCC00448DE6E5C00008C1554884001737),
    .INIT_55(256'h4840488042E21C459445004991445DC8448008CCCC4009455D9D951D95441A66),
    .INIT_56(256'hA2A2EA11551D55119DD99999DD1111DD995555551155CC90C558084088C8448C),
    .INIT_57(256'h8008448595554C0048C1184CC88888C4161DC0480400558C48C0D3B77333FB3F),
    .INIT_58(256'h52E6159180110C55E1C0D448808088C4C084C0011599E55551CC9EAEA615DC84),
    .INIT_59(256'h951D951DD99D9DDD111111D999955555111D9889955508C84CC0CCC8CC808808),
    .INIT_5A(256'hD5D110CC8049D14080CC404C8D114DC4D44D1D984CCC23FF773FB7FA62A6E62D),
    .INIT_5B(256'h8095081E15C09D044D84084888440401D559955D5104DEAA6259044408848049),
    .INIT_5C(256'hDDDDDDDD11111DD999955555111D999995440C80C8C08080CC4C8CC5ADED9C15),
    .INIT_5D(256'hCC840D5CC080440048D481051DD151D408483BF3773BB3EA2EA2E6E95119511D),
    .INIT_5E(256'hD10CD948C14844C4C0400CC91199915D5144DA6BAE980804C4448C8D95959D40),
    .INIT_5F(256'h51111D9955955151111D98899944440C884C0448CC004C8D1E29095885E54051),
    .INIT_60(256'h448404C44CC41009595111D4C04D3BBF73FB7FA6EA6EA2D91DD95111DDDDDD11),
    .INIT_61(256'h04000C4CC84044809DDDE55991081EBF761C80448CC044C45D9D9D480044C054),
    .INIT_62(256'h55955111111D99899544440C8C8404480088C804DE5015D4459945A1DD805DC8),
    .INIT_63(256'h44081CC55DD511D480CD77B333B73E62A62A62D5DDD9555111111111511DDD99),
    .INIT_64(256'h4CC4C8499D99A5559141E37372D84C4488804048D99D19180444CCCD40044C8C),
    .INIT_65(256'hDDCD89C9444440C88C844C48084480CDD59C994C49180EE9D50C9A4014844088),
    .INIT_66(256'h5DD5DD80804673773FB73A62A62A62D91DD995555111111151DDDD9555551111),
    .INIT_67(256'hDD5555595D9D2BFBB694084C00C00CCCCD191D11400848811C8844944884C009),
    .INIT_68(256'h4444840CCC84008080404C599D8D1D00C1804E5559845A4498900888CC488CCD),
    .INIT_69(256'h0087B373FB73FA62A6EA61D911DD99955551111111DDD99555511111DCC8CDC8),
    .INIT_6A(256'h1DDD67B7B6500408848008808C11D519080C0000888800D1C408C48D9991950C),
    .INIT_6B(256'h0C840C4CC488CD21DD0C15889AD46D19994C89598C194404CCCC00C819955159),
    .INIT_6C(256'hFB73FA6262E621D951DD995555511111DDDDDD955551DD111C88C88444444440),
    .INIT_6D(256'hB6000448C840C8880049DD91188C04048084889111504481D95190884CD7B773),
    .INIT_6E(256'h8084855DDC8C4544921CA2D1D50C8919C01900CC4488CC0855EEA1195DD92EBF),
    .INIT_6F(256'h62A61DD9511D955555511111DDDDD9955511DD1111C8C884844004000C84404C),
    .INIT_70(256'h95C4CCC80C05DD9DDC0CC4484084888D9D008485151D9C444C5B7373B773FA62),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:4],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module vga_rom_blk_mem_gen_prim_wrapper_init__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [14:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00000000000000C00000001FC000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000C00000001FC0000000000000000000000000),
    .INIT_02(256'h1F8000000000000000000000000000000000000000000000001FC00000000000),
    .INIT_03(256'h000000000000003F000000000000000000000000000000000000000000000000),
    .INIT_04(256'h00000000000000000000000000007F0000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000007E00000000000000000000),
    .INIT_06(256'h000001FC000000000000000000000000000000000000000000000000FE000000),
    .INIT_07(256'h00000000000000000001F8000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000003F80000000000000000000000000000),
    .INIT_09(256'h000000000000000000000000000000000000000000000003F000000000000000),
    .INIT_0A(256'h00000000000FE0000000000000000000000000000000000000000000000007F0),
    .INIT_0B(256'h0000000000000000000000000FE0000000000000000000000000000000000000),
    .INIT_0C(256'h000000000000000000000000000000000000001FC00000000000000000000000),
    .INIT_0D(256'h003F8000000000000000000000000000000000000000000000001FC000000000),
    .INIT_0E(256'h00000000000000007F8000000000000000007FF0000000000000000000000000),
    .INIT_0F(256'hFFFE000000000000000000000000007F000000000000000003FFFF0000000000),
    .INIT_10(256'h0000000000007FFFFC10000000000000000000000000FE00000000000000000F),
    .INIT_11(256'h00000001FC0000000000000000FFFFF800000000000000000000000001FE0000),
    .INIT_12(256'h0000000000000000000001FC0000000000000003FFFFF0800000000000000000),
    .INIT_13(256'h001FFFFFF800000000000000000000000001F80000000000000007FFFFFC0000),
    .INIT_14(256'h70000000000000003FFFFFF000000000000000000000000000F0000000000000),
    .INIT_15(256'h0000000000000030000000000000007FFFFFF000000000000000000000000000),
    .INIT_16(256'h80000000000000000000000000000000000000000001FFFFFFC0000000000000),
    .INIT_17(256'h0000000FFFFFFF80000000000000000000000000000000000000000007FFFFFF),
    .INIT_18(256'h400000000000000000001FFFFFFF800000000000000000000000000000000000),
    .INIT_19(256'h00000000000000000000000000000000001FFFFFFF0000000000000000000000),
    .INIT_1A(256'hFFFFFE0000000000000000000000000000000000000000003FFFFFFF00000000),
    .INIT_1B(256'h000000000000FFFFFFFF0000000000000000000000100000000000000000007F),
    .INIT_1C(256'h00000004000000000000000000FFFFFFFE000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000006000000000000000001FFFFFFEE0000000000000000),
    .INIT_1E(256'h000FFFFFFFF9000000000000000000000006000000000000000007FFFFFFF300),
    .INIT_1F(256'h40000000000000001FFFFFFFFE0000000000000000000000E280000000000000),
    .INIT_20(256'h000000000000F040000000000000001FFFFFFFFF000000000000000000000070),
    .INIT_21(256'hFFFFC0000000080000000000009860000004000000003FFFFFFFFF8000000008),
    .INIT_22(256'hFE0000007FFFFFFFFFF0000000040000000000000C10000003780000007FFFFF),
    .INIT_23(256'h0000010C000003FF000000FFFFFFFFFFF8000000040000000000000018000003),
    .INIT_24(256'h0000060000000000000004000007FF800000FFFFFFFFFFFE0000000600000000),
    .INIT_25(256'hFFFFFFFFFFFF800000020000000000000086000007FFE00001FFFFFFFFFFFF00),
    .INIT_26(256'h000007FFF80003FFFFFFFFFFFFC00000020000000000000043000007FFF00001),
    .INIT_27(256'h0000000000003180000FFFFC0007FFFFFFFFFFFFE00000030000000000000063),
    .INIT_28(256'hFFFE980000030000000000000039C00007FFFF000FFFFFFFFFFFFFF000000300),
    .INIT_29(256'hFFF01FFFFFFFFFFFFD900000010000000000000018C00007FFFFC01FFFFFFFFF),
    .INIT_2A(256'h00000E600007FFFFF83FFFFFFFFFFFFE4C000001000000000000000CE00007FF),
    .INIT_2B(256'h00018000000000000006700007FFFFFE3FFFFFFFFFFFFF000000010000000000),
    .INIT_2C(256'hFFFFFFFFFF000000018000000000000007180007FFFFFFFFFFFFFFFFFFFF8000),
    .INIT_2D(256'h0003FFFFFFFFFFFFFFFFFFF8000000018000000000000003180003FFFFFFFFFF),
    .INIT_2E(256'h000000000000840003FFFFFFFFFFFFFFFFFEF80000000180000000000000019C),
    .INIT_2F(256'hE0000000018000000000000000A60001FFFFFFFFFFFFFFFFFFF0000000018000),
    .INIT_30(256'hFFFFFFFFFFFFFFC0000000008000000000000040620001FFFFFFFFFFFFFFFFFF),
    .INIT_31(256'h0000618000E7FFFFFFFFFFFFFFFFE00000000080000000000000C0230001EFFF),
    .INIT_32(256'h01C000000000000000008000FBFFFFFFFEFFFFC7FFF000000000800000000000),
    .INIT_33(256'hFFFC1FF800000001C000000000000000004000E7FFFFFFFF7FFFFFFF79000000),
    .INIT_34(256'h00703FFFFFFFFE3FFDD00600000001C00000000000000010400060FFFFFFFFBF),
    .INIT_35(256'h00000000009C6000383FFFFFFFFC2BC7C14000000003C0000000000000001860),
    .INIT_36(256'h000000038000000000000000FF3000380FFFFFFFFC001FC06300000003C00000),
    .INIT_37(256'hFFFFFE00218698000000078000000000000004FF10001C01FFFFFFFC0003E010),
    .INIT_38(256'h1FFFC80007801FFFFFFF801B008800000007800000000000000CFF18000E007F),
    .INIT_39(256'h000000000000001FFFC80003C00FFFFFFEC02980060000000F80000000000000),
    .INIT_3A(256'h0020010000000F000000000000007FFFC40001F003FFFFFF600080020000000F),
    .INIT_3B(256'h0078701FFFFFC80400002000001F000000000000007FFFC40000F008FFFFFF90),
    .INIT_3C(256'h000000FFFFE200003CB10FFFFFE60A00000000001F00000000000000FFFFC200),
    .INIT_3D(256'h00009E00000000000007FFFFF000001BE607FFFFF30000000000001E00000000),
    .INIT_3E(256'hFFFFFEE00000000000BC00000000000007FFFF70000007E207FFFFFD20000000),
    .INIT_3F(256'h1C78000000DC07FFFFFFF00000000000780000000000001F98FEF8000003E407),
    .INIT_40(256'h0000000000079D5FF8000000580FFFFFFFC00000008000780000000000001F90),
    .INIT_41(256'h008000000078000000000000033FFFFC000000700FFFFFFFC00000000000F800),
    .INIT_42(256'h00701FFFFFFFF0010000000078000000000000017FFCFC000000700FFFFFFFC0),
    .INIT_43(256'h0000FFFFF2000000601FFFFFFFF801000000003800000000000000FFFFFC0000),
    .INIT_44(256'h003000000000000000FFC183000000601FFFFFFFFC0100000000300000000000),
    .INIT_45(256'hFFFFFF00400000002000000000000000FFF001000000E01FFFFFFFFE00000000),
    .INIT_46(256'h03800000C03FFFFFFFFF22000000002000000000000000FF0003000000E03FFF),
    .INIT_47(256'h0000000000000081880000C03FFFFFFFFF90000000000000000000000000F800),
    .INIT_48(256'h0000000000000000000000000007E0880000C03FFFFFFFFFC800000000000000),
    .INIT_49(256'hC07FFFFFF3FEF0000000000000000000000000001FE0000000C07FFFFFFFFFE0),
    .INIT_4A(256'h00001FC0000000807FFFFFC07FF2000000000400000000000000001FE0000000),
    .INIT_4B(256'h0000000000000000200F00000000803FFFFF003FF80000080302000000000000),
    .INIT_4C(256'h040FFE800000000000000000000000F000000000018007FFFC001FFC00000001),
    .INIT_4D(256'h0000018000FFC00003FF400002010400000000000000F800000000018001FFF0),
    .INIT_4E(256'h0000001FF8000000000180007F800001FF00000020380000000000000FF80000),
    .INIT_4F(256'h000100000C00000000000FF0000000000180003F800000FF8000029000000000),
    .INIT_50(256'h081F001C003FC0000180000C00000000000330000000000180001F8008007F80),
    .INIT_51(256'h00000000000180080F803C003FE0000140001400000000000000000000000180),
    .INIT_52(256'h7400000000000000000000000180080F803C000FE000014000F0000000000000),
    .INIT_53(256'h0003F8000340303F0000000000E0000000000001800C07803E000FF000014000),
    .INIT_54(256'h000100003F80E00001F80001C0020D8000000000F800000000000100078F803F),
    .INIT_55(256'h0000FF80000000000100003F80300000F80007C014018000000000FC00000000),
    .INIT_56(256'h00F004003000000000FFE0000000000300007F80FF0740FC0003F03800E00000),
    .INIT_57(256'h7F007FFF003E00026407074000020000FFF0000000000300007F807FFF807C00),
    .INIT_58(256'h000000800300007F007FFF001F0001980F03F800020000FFF800000100030000),
    .INIT_59(256'h1000000000FFFE000000800300007F007FFE000F000C600F003C00020000FFFC),
    .INIT_5A(256'h000780000003800000000000FFFE000000800300007F003FFE000F0008000700),
    .INIT_5B(256'h0700007F001FFC000380100001002000000000FFFF000000C0050000FF001FFC),
    .INIT_5C(256'h00FFFF800000400700003E000FF80003C0200005041800000000FFFF00000040),
    .INIT_5D(256'h0003B04500000000FFFF80000040070000FE0007F80001C04000070286000000),
    .INIT_5E(256'h0007800000E008000BA06400000000FFF9C00000000700007E0007E00000E00C),
    .INIT_5F(256'h0000000600003E00000000007000000BB00600000000FFF8C00000000600007E),
    .INIT_60(256'h00000000FFFCF00000000E00003E000000000030008003908200000000FFFCE0),
    .INIT_61(256'h001F80001688C000000000FFFCF00000000E00003C0000000000330000069040),
    .INIT_62(256'h00001C00000000000F80001788C000000000FFFFF00000000600003C00000000),
    .INIT_63(256'hFFFFF80000000600001C00000000000F000017844000000000FFFFF800000006),
    .INIT_64(256'h3BC00000000000FFFFB80000000400001E00000000000600021E800000000000),
    .INIT_65(256'h00000000031E003BC10200000000FFFF980000000400001F0000000000023004),
    .INIT_66(256'h00000400001FF000000000010F807E004100000000FFFFD80000000400001FE0),
    .INIT_67(256'h000000FFFFFC0000000400001FF000000000008F8172006000000000FFFFFC00),
    .INIT_68(256'h0003B0E0000000000000FFFFFC0000000400000FF80000000000470170002000),
    .INIT_69(256'h000080000000000021E180A02000000000FFFFFC0000000000000FF000000000),
    .INIT_6A(256'hFFFC0000000800000000000000000011FC10E00100000000FFFFFC0000000000),
    .INIT_6B(256'h600180000000FFFFFC0000000800000000000000000010F437E00100000000FF),
    .INIT_6C(256'h00000000046F86600000000000FFFFFE00000008000000F0000000000008EE1C),
    .INIT_6D(256'h0008000008F8000000000002271C600040000000FFFFFE00000008000001FC00),
    .INIT_6E(256'h0000FFFFFE00000008000000000000000000033FFAF00020000000FFFFFE0000),
    .INIT_6F(256'h00F2F7F00000300000FFFFFE0000000800000000000000000001BEE7B0082010),
    .INIT_70(256'h000C00000000000070DFF00000010000FFFFFE00000008000000000000000000),
    .INIT_71(256'hFE000000080000001F000000000000328FF00000010000FFFFFE000000080000),
    .INIT_72(256'h0000000000FFFFFE000000180000003FE00000000000339FB00000000000FFFF),
    .INIT_73(256'h0000000003FE300000000000FFFFFF000000180000003FE0000000000003BF30),
    .INIT_74(256'h180000000FC0000000000007FC7000000000007FFFFF000000180000007FC000),
    .INIT_75(256'h0003FFFF00000008000000070000000000003FF87000000000000FFFFF000000),
    .INIT_76(256'hE7F0F0004C00000000FFFF000000080000001F8000000000003FD8F000580000),
    .INIT_77(256'hE0000000000001CFF1F00006030000003FFF80000008000007F8000000000000),
    .INIT_78(256'h8000000800007FE0000000000003CF31E00021020000003FFF8000000800001F),
    .INIT_79(256'h10620001000FFF800000080001FFF0000000000002EF3CC00020E00000001FFF),
    .INIT_7A(256'h000000FD9F0200100000030007FF000000080007FFF00000000000047FD18000),
    .INIT_7B(256'h003FFFF00000000000093F8C0110040000070003FF00000008001FFFF0000000),
    .INIT_7C(256'h0001FF80000008007FFFF00000000000127F0240800200001F0001FF80000008),
    .INIT_7D(256'h0000000A00007F0000FF8000000400FFFFF00000000000127E8200000200003F),
    .INIT_7E(256'h000000000028FB000000020080F80000FF8000000401FFFFF0000000000004FD),
    .INIT_7F(256'h00000403FFFFE0000000000029FE000000020080F800007FC000000401FFFFE0),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module vga_rom_blk_mem_gen_prim_wrapper_init__parameterized7
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [14:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h9B25CC4E6892E12F24018BF7710000875579FE2F002FFB3F0F9B252CEBC887EC),
    .INIT_01(256'hE7C00876013F1FFD25E3C0B900FBDE20001777BE0000A4847EFEFE082F313F0F),
    .INIT_02(256'h82F3E20879B5AEC35898E0C02F77FD6F1FB0D963FF0A00009925160000B9853E),
    .INIT_03(256'hE7A7E1AF0FFEE50CB0E7CFF2F4BEC3989CE0CC0E6FC1CB0801D79FB1B30E0862),
    .INIT_04(256'hDF0071589A1F1268D7F34BE7FC4EE7C2CF032EEE3E0F019CC0FC007F58CBF845),
    .INIT_05(256'h9C5C7E3FF5DEC6DF0071589AF0BA6CD7F34014C03E8C55CCF0B35E7E3FE49EC4),
    .INIT_06(256'hAB909AE2FF80C3D1E680077A7EFC3CCF9E839A6710F216715368000CE9248CF8),
    .INIT_07(256'h9A7EEFD082F8EB2739C960FF3C81C1EAA903C340C33EFF9CC19A7F6FFB8EF91F),
    .INIT_08(256'h2C9F20267F80068A78E5C1BDF8E88E7F5BC1FF3E01696BA90043833F267F8C83),
    .INIT_09(256'h8BDF00844B29C07EBF60BEF3C03E0A7853C3AA7C47C67FF531E03E00784B0F01),
    .INIT_0A(256'h40E0087A5D18329F8F83E55DABC0C7B7639EF144060E78F7D3381F001D9EBB7F),
    .INIT_0B(256'hE00EFC0A7F5DFC3930E7DE4AA69D8F8CFE37DD89E04740C3C3F04E3E0E7FECFF),
    .INIT_0C(256'hBC611DCC408AF1F08F6609116D421AC19789A5330AE180F99F5D8901AC40C3F9),
    .INIT_0D(256'h793A20E41EF6D79CC0655B69CF35908F998A316C6265C91F234E46CACCF8F9D7),
    .INIT_0E(256'hF9ECF8FD34EBD829D8FF131F0C259CC67371A6F9C533069993F16CA25D78F6F1),
    .INIT_0F(256'h1A24AB0020670B7F207D48E044158ACDD7097F19059CC284B9E4C30A7820FF1B),
    .INIT_10(256'hC367DC4C3FEF3F94B8EFF48666277F207E3D6E851557DE6F8C07131DD97FF918),
    .INIT_11(256'h7B11B6E728E3C7F9DEFCB230AEF404694CFACFB90A62BFBE294DDFBD057085C7),
    .INIT_12(256'h6D0172C2A2CD7B289021917919C73810FFDB77AB2712BC05E9FF466442FB9FD2),
    .INIT_13(256'h1F1DBBC57D8501EF01CA8792ED6282DC1A6347F1F66848F75F206713E6958B19),
    .INIT_14(256'hF6F015EFB30F4657D061D6CDDCCD6003CA0095B539966CA6F6B0B11669362C5D),
    .INIT_15(256'h6514297D55094EE400D6C9CA8ED65DE07D34F785A89A06059F6535BEFBDE773B),
    .INIT_16(256'h456D62C203E58EE50468BE07A14D7300F6DEA9C8B3715A472D46BE7E391386DF),
    .INIT_17(256'h01F84E7114A5EA07D2BD6201C5C46514353360B85ABBC076B907F88160A8859E),
    .INIT_18(256'hD6DBB09B9F912A0F8071FA174B8FA4BABB2E00067C6517EA2A260E429B84F2BF),
    .INIT_19(256'h83050871A969B35A18199BA22D3ABE574E4D1BE6B1B888E832A2850193A94DCE),
    .INIT_1A(256'hE0F083FA097BC5C1049D718B0902B1FD4F8734740B9ED5CF7CBAEA28451539E5),
    .INIT_1B(256'h8E398D86563CB41B2F3FAD8A9E10C00C9B938F19989AA7BE200730C07E12B168),
    .INIT_1C(256'h8731FD1CD1AB7F1031A546F7767F63EDA053A642C526EB0F538F1133C22F6FD3),
    .INIT_1D(256'h4BAA80EB69C051AF618EE24E8D27E2F0DDE2F16636A39B749BC71EA877EB9C71),
    .INIT_1E(256'h6B8BCE78CFF5CA57CF002B68E090B7E1378E6EFADE1492B5FEE09E60E3742587),
    .INIT_1F(256'h60F31774F9DCD62CFC96CC5A43B4E1F944DDAD3DCA1922BA8F855E3644A3601C),
    .INIT_20(256'h1D9C2033F313E78CF495FCFE153684CC440F78D8433E0A1F90FC1CA417F3BA70),
    .INIT_21(256'h380C5917B342B926FC2562F088814F3B6D253B0D2201D3830E9ED3D4FA0CCA8D),
    .INIT_22(256'hBA035862916C922672B1FA89BEA09E712542FFE3EFACB22F54B5714A880ADF8F),
    .INIT_23(256'h2B634C4EB56F13BAC2B81DFF33CF1E75700AB3A70650CE2233AA3831279D4A97),
    .INIT_24(256'hBF1D8F2F000D192F83C13F7AAF7F265019DE64E7EEC54F95C5A51B7DA99F1B17),
    .INIT_25(256'hFADA70B53065A114F0391215B2EA0033708DDAC7639846075799DD81E1D12C77),
    .INIT_26(256'h863D8D784219CA2F79266C758CE5D6AD54EE1531F88F781FC8EC281FFDE165DF),
    .INIT_27(256'h321405CF870ED0C7850FBDEE7FEDE0B544682CEEAD41D9E028160C110ECE1FE2),
    .INIT_28(256'h8D3156BA9B0BB53014252F900025B04AD513942BF26327CA664491167FB8A567),
    .INIT_29(256'hC9815A8518DDF94FD54186201B6920147CECB8C08843C69605656AA6BA02D96B),
    .INIT_2A(256'h40F01F47842042F903D45F610698D0EE0DEE8DDBBBA184DBA9C0E0923EC5E333),
    .INIT_2B(256'h850686F09ABAD09CF1F4C12B4B3D2DA2CB992823313B1DE37833FBEB818C8304),
    .INIT_2C(256'h4EE8B0EB1F16846C0A96F0F2BAD1C17C0F994A870E2E6420D8F91E1EE7564691),
    .INIT_2D(256'h57F18988191156CEFB0157C0916BD09C1CF0FEBAC987383FCCA7CCADE29AE02C),
    .INIT_2E(256'hCCBA468700FFA7851DF609704AA4570F42BE3A219CCE0B58F0E3BACD87007F55),
    .INIT_2F(256'h46EDE6279EB2F04ABE3DC100FF1388A7BA086FF3C0CC2B13ECCDAE28D5CC78F0),
    .INIT_30(256'hF640D23B5881675019CD14DBBEF0C27E31FE00FF646D2781ED90B02FDA76777E),
    .INIT_31(256'h8036A078F47516EF2AD83CAEA0AEEE80271A1A2FF0427CD13F00FF63136B14BF),
    .INIT_32(256'h830BFF41B23338F0346F964235257EF97F6143E4CE34F145BEC44C3AB882F33C),
    .INIT_33(256'h9D9695177283F8E30AFFEFF035F0F03472D201A662F91D9D436BF85F52607A2D),
    .INIT_34(256'hAB2BBB5C2734E5ABC42A58885FBF0D73FF0EF056F000003E619CA9D3E8D1BDBD),
    .INIT_35(256'hFD2806FF408C7CC01AD8FD372790AC3BEBF8117302730D8F1EF87720000019F6),
    .INIT_36(256'h75E1F77B7C837F7D2A8EFFE0C67B4B427CD2177D730303FCAB4B67E2401603FF),
    .INIT_37(256'hC8D2F0E751253986A981A380838F7D3A8EFC71F7EF291B4A711B8BDDCF6BDDB6),
    .INIT_38(256'hC0F0D9D242671C6E8C54558B1B0CE5E1EABFAA2698623712F8F17EE19AA79286),
    .INIT_39(256'h478D99703FCFFF80E0187E4F069A991C026C2C35138E96F7307B8F98703F76FF),
    .INIT_3A(256'h81713626836EA97285DD7D3B34FF03C0F2826B50415B7E04A1DAE3F65EB65A81),
    .INIT_3B(256'hF05C38CBE8CB5A47A5D9544A118F63A6FC7D307CF40781F45F2A039A15F0DDAB),
    .INIT_3C(256'h5B1DE13E0F9D2AF129C7AAEF0F11C464F76814576D43877D70367EF01F07D513),
    .INIT_3D(256'h5CC86454D9396259ADF33C0F1F83352C69F6C4B27162856FFF6A8E74708F3970),
    .INIT_3E(256'hE3E7E0E8993AB67C63D72E1E1A6E3EB0F3F80F8EA5044CED3514400A6EBFE890),
    .INIT_3F(256'h849BF323E35138A7C519F62F6174517B42AE7E026E39D0CFE0FE9B0AE3C3AF5B),
    .INIT_40(256'hFE83E64691E3E01F83CECED12F7C5A75FFDB9E6C6555780766FF02E63091E7E0),
    .INIT_41(256'h8C7B678638B81DF074F246B0E7C0FC0102DA38E8046073849EC4A27E54E4886D),
    .INIT_42(256'h1620AC62885849417BF0EDB2BAE6C074F25630E7F000DC9C951CC37DB504C099),
    .INIT_43(256'h70E7F003D9E3DE74163C5CA7A14F0746CACDE84BEA00FCF25F30C7E0034CAE6E),
    .INIT_44(256'h10C7163F72C2563C73F0FFC4A4864638EBCB013FB4AB874B66EC162200FD705E),
    .INIT_45(256'h1BE971940BD591941F691F62C28E3CF3FC179BED07D83F420B063E6E8B58902F),
    .INIT_46(256'hE3424B187D6885B4959F06171588D6A5360086CE869C3AFC1C3492996F2522C3),
    .INIT_47(256'h810F951F9FF3006C19A62D94D9A75860CDE68FE33807090C309F8F959CDD3A8D),
    .INIT_48(256'h8F6E036CE337FC210F169F38F7AF0F5A71C148B15A6E4AAFC771C824685067FC),
    .INIT_49(256'hD6419DB2E891F8E51D286B74A83C210F161E0716D1E0A1E8787A3AA32D8C1D18),
    .INIT_4A(256'h3E2629338F51225ACE250B0E300AF5FF81A8F7680073BFB60CE009E481E34E86),
    .INIT_4B(256'h1EE5679CAD190C384C10FFF0C0BD849FAE1ABC65402ABB12A5DFB867E2B1D900),
    .INIT_4C(256'h93F7F3585DC11095B200C42DA1B623B11B272FEBC7CD461B05E447C71522FDF9),
    .INIT_4D(256'h75E3646B78D497615195F5D8B21F4F5770E729E0BFA8791E015369441F2D1360),
    .INIT_4E(256'h2DB44DD8B7EC00A34906F6861737F819E983A3A60D386C32BE29F99311341E01),
    .INIT_4F(256'h72CB7CBEC21953AD7FBCCF47F40074EFAB05C392A5446EEABE377FA27C74C35A),
    .INIT_50(256'h5D1F2E241B2C23FD2696CEC7EF21AD39DFD8BFF1FCECBF53CB56C106022F6749),
    .INIT_51(256'h317FFE1B43919C5B9619351C310E0A3709648EE5C755535D0640F27E9A246FB4),
    .INIT_52(256'hC9EB409576F07A9E3EFF8A8094C846FCFCC2A5DABFF58BE2359A723F55465970),
    .INIT_53(256'hC45C23536BB9AD5DD7D8C27E4405539CDFC9F0F649344B5C9931C9C721216EF6),
    .INIT_54(256'h3EB683139C8991D3AA601AC0A7E0E042406A7F49A62CC68766188BA3D8281324),
    .INIT_55(256'h8E271B8E1720E725F3097259E3C750E55D1FFFE4835836216EA848856C27CDEC),
    .INIT_56(256'hFFB23CC7BFA46299F7CFDD160077164BE0CCE319F9809FBB150DB796D991246A),
    .INIT_57(256'h98AFA0E4A069FC8E3A10C01C2E6A4134F83216F372A31A4C97F888EE073F1EE7),
    .INIT_58(256'hC80FFDFC83260CF97D476863194FBD71AA476DA76A82D5CFC5DE0FFDEAFC7FFE),
    .INIT_59(256'hA0F4A203E818F5A607F5EECB88F64BCD96A980D0DA891B452C9C542282E5EA9A),
    .INIT_5A(256'h8EDE87C66705A08387A401F7EC6BF4C0E5BDBF79D6B6EE2B0EFF2E406643913D),
    .INIT_5B(256'h346CC3779ABCC0B6274380904AC98B767D4150E86EA3E0A50405C191B3285522),
    .INIT_5C(256'h30EAFE257820652DCA000575A53857A191FE41F5658D59DBF4D07B9748F0214F),
    .INIT_5D(256'h180322944CC4496FE3BDBA782079A952C1FBAEFBE494CBA5E69C58EF91EF42EE),
    .INIT_5E(256'h1DAB5D65600E4BCC3257D7C964F65FCF18739FFC74A2D243C14184B41D9BB274),
    .INIT_5F(256'h3C7F68D94FC781EC394EC742A906AFA34278407B7C143F6069BEFCF585D20828),
    .INIT_60(256'hDF74F8981CF059603FB2C20966DE97464AC75190D7726BA373AA3F5D95FEA876),
    .INIT_61(256'h6BE0ACE04CB6148174B948FE654870039ABCBDF98687C85A85DA61C5B448832B),
    .INIT_62(256'h62971AA36E23993E6194AA57FFA7FAB4A8D63FFA8A3E0193F2AE6943BABFB385),
    .INIT_63(256'hC0FA1893C030C781FFA1C2EE33A34F3E4FC2C796A398B44C9BF0F904BF80BBBB),
    .INIT_64(256'hA7529EE38EDC99F0F9884977ECD974AD01FB258C76A9FE40880D21E8C68E6520),
    .INIT_65(256'h8C634BDF94BDF806C607048EA69001C0764963EE5BE5FEA11354DA6FC86E8132),
    .INIT_66(256'hC10DCBF15293533BA153C1BB8A55484A245B8EA26F8140E0CF01EF237932D374),
    .INIT_67(256'h4D5BD30CC770B7409A804BA93706C751575615A7B4FFF80AB79CF4D981C32ACF),
    .INIT_68(256'h4F0214AD88887548ED480E5F95B744962649BE0E034CB1F57D9EFBDA11F3B670),
    .INIT_69(256'hF78E092FF4E6018FC694F297B19648F24C1E7ED537C6D004474DB96170F3F64E),
    .INIT_6A(256'h1EB17877F7131AA97AB725E87FAA67FAAB29513C99ABD506FF7E833784620419),
    .INIT_6B(256'h24E371058F9CFF18BEEF65AF332B9C8F52876236DB0A3DB8C9B0D4350D993F1F),
    .INIT_6C(256'h324CF4D69555450808B601A6D6FC83A1FF210CA50AD8022F90470056A0DB3A7C),
    .INIT_6D(256'h2C23A1D27C0EAFCBBB01348A3B1440EA006501990EC329FC0B0CD4CCC6776072),
    .INIT_6E(256'h9B7107375C8F782D0113FE5F78106A5E9E3EA9BD9741548F067DEDF0FF52FE0D),
    .INIT_6F(256'h57DB80E70D817481C1FFC1524E7E3D84A56F50DB2959AE7ECD1319CEA5B11D64),
    .INIT_70(256'hC5672E4B3DAE067D92E9E046EEDC94D63F4C56BC7605B59FBB4FB4075E18A010),
    .INIT_71(256'h22F41F87B235227898D239DF6FD6BD46DAC9E7CCF197E1C228A3E0FFAEDAFA23),
    .INIT_72(256'h7ED7E15A199832EF927789C74B1E5D10BD5D8AADDE940F44F3257CE197815DF1),
    .INIT_73(256'h447D3856FAD746E0EDE1447AB2DB2B90FE81DB9FFABF13FF334E5ADE97998E53),
    .INIT_74(256'h209B10450A4CDD6C3FA52E78AB2EDD69714A03644E0E78C0F5C826F9DF915A4B),
    .INIT_75(256'hA7A650195E3EE5ABF34B2184A7A7F58DE09DEA0C7CADB7E7F86043AEE608DFEC),
    .INIT_76(256'h5C92103CA4001BD02A2CFDA2054918045AA48CF0A4054E617CE451656760EE95),
    .INIT_77(256'hA31344F5C6EE7B449B2183DFE723522AD9D5F2711B01512B246B25CDFD15A064),
    .INIT_78(256'h70C86A0EE6F9B7CFDABFD827A2B9AC31C2AF3E3975F3A883F522ED00E3338643),
    .INIT_79(256'hC0926B25651DB5681C37E61D9FAC7F021ACAC75B2BCDD130E841E049A3FAE6B2),
    .INIT_7A(256'hBFA5691201250C78BD6B6287F9D33FD8D51A9A12283A025C6E28DA62FE39C1F7),
    .INIT_7B(256'hEB24501FA53ECE1E958978593CC115FE408BA1E2C3C47542938BB967F1828E51),
    .INIT_7C(256'hE56ED1B7ADA783EB925BF8B6FE9152348EFA2F6CFBDC1E1004A0ED1EFE92405C),
    .INIT_7D(256'h9F4B50D0A0F38930B5182386DB6028E3AAC9720548CC70884FF640652E1DCA92),
    .INIT_7E(256'h89F23808C3F8FFA4782DCFE0DC32531FCFA4FCD77DF090576CC1BEA1A6045C81),
    .INIT_7F(256'hAF0FFCB186AD54C1C36A0D618C957E7CC7CEF88CA42B4D5A6E218FA8A445E894),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module vga_rom_blk_mem_gen_prim_wrapper_init__parameterized8
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [14:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h9AC6301506D01E5AFBFE1CD50C0000BA9CF9FE76002000000F9AC6103026C01F),
    .INIT_01(256'hFFC0087000001FFEC603959640049FFFFFF8D52000009A0CFFFEE6082000000F),
    .INIT_02(256'h7241E000004C7FFFD818E0C0007FFE8C1FA5D64000C3FFFF61ED000000838CFF),
    .INIT_03(256'hF038003BF001060FE1E030068D7FFF981CE0CC007FFE0C0824D0200042F1F703),
    .INIT_04(256'hDF00717F1CFF25781800C3F803890D63C0FCC91DFFFF001CC0FC007F7F0CF864),
    .INIT_05(256'hD73DFFFF651EC6DF00717F1CF0AD7C1800E01B3FB52F77C3FFDB3DFFFF651EC4),
    .INIT_06(256'h59EF572EFF83FF90117FFF797FFCFFCFFFFC1C7F25EE1801938FFF8445B683FF),
    .INIT_07(256'h1C7ECACF840090EFC69E02FF03FF901976FFC07FFFFFFFFFFE1C7F4AE7880181),
    .INIT_08(256'hEFE0C0E7FFFFF80C78C0DE860090C280CD8EFF01FFB81876FFC3FCC0E7FFFFFC),
    .INIT_09(256'h8000FF2D38F63FFFC0807FFFFFC00C7866DC9380B8B48068A1E001FFA938F0FE),
    .INIT_0A(256'hC0FFFFAE61DD2180007C4C3C743FC7C0807FFFFBF80C78C2CC80E0FFB6E09253),
    .INIT_0B(256'hFFF1000C7F6BE3F83F1F9D7379728000005EBC761FC780003FFFF1C00C7FCAE0),
    .INIT_0C(256'h7C1FF83E80879EFF70000DF14BEDE61E8CDA36C658E00001D63C76FE6F800007),
    .INIT_0D(256'hF41EA01C1E07127C3F7BB124509A7F70660CF14AED83160FA0FC64283CF80112),
    .INIT_0E(256'hF9CAEFA39B0610880B770F1F0F327C39FCE97B104AFCF9661CF14AAD9C170E20),
    .INIT_0F(256'hA6ABFDFFFF980C7FCAEF2D4F0219675677077F1E127C3D7E7F04F39FFFFF001C),
    .INIT_10(256'h3F78123C0017CDF1342BF87999047FCAEE65AF83F91AFCBF83FF1C12380006D0),
    .INIT_11(256'h950E77FBFEFFC007E0128E00962BA3B1B0C330000C7F55AE5161C07E53349DC0),
    .INIT_12(256'h2E017CFC34DD5DA50F1E92F77FC007E011C7072F271BD15F860046787F158FF4),
    .INIT_13(256'h2B343C096FA7FEA601F3F824FD5FE5380BF7ECF1F0678011C309351C0B10A3F6),
    .INIT_14(256'hC3F011E1F0E1C1B751BE1860FA325103F3FF21ED0759B52F9153F1106630C2C3),
    .INIT_15(256'hB1EC019D20F7A67900D0C239E1C1CE9ABE38566277D007F9FFB1ED8700928F90),
    .INIT_16(256'hF5F1ECC703F9FFB1EC00C3227050A500F0C49BE180F43C86361760EFF913F8FF),
    .INIT_17(256'h77E1CE66CC8608F7E35ED101F9FFB1EC0C8C9670D67000F08453E180E9610614),
    .INIT_18(256'hE589045B1F910237E1FF5A1ECC79B7DB5ABF00F87FB1ECD95AF9FC7A3C04F08E),
    .INIT_19(256'h03F9FF774854CF52A6BEC042E12857F1E1BCFC49F27F6E08C923F9FF1548541D),
    .INIT_1A(256'h181C3343F263EE01F87E776A547AF3525F268CB02156F363B6C1E236C6E601C1),
    .INIT_1B(256'hD9F87A2E71DF650393AAC1F3BEE000F07C156E44D81624AEA50DF054D631AD7C),
    .INIT_1C(256'h6E64C2FF2EAEFB84F087AED06A9FBEB8EE90383EF906F3F0956E44C70AA44798),
    .INIT_1D(256'h7CAB3F53F1FF976E2488BBEF0A2B43F06F4ED0BEA23F189AD8785F3EC7F3E397),
    .INIT_1E(256'h5B6ECB7F9F64177489FF53F0FF166EA434B06F716B54F39D4ED0BCC0E427F5DF),
    .INIT_1F(256'h6EC6737872D15E9A7CD10F8355134111FEC2B1FE14E965831EB5AF6F62D2ACAE),
    .INIT_20(256'hE1FF36EFA5030D10C4F9F3E6C69ED7D8830FB8C91825D3E1B6E1FF36EFA58314),
    .INIT_21(256'hC2F21D58DD7C82F8FF36FEA580074408F16B723C8A5DB9000EDFD94AE651F48F),
    .INIT_22(256'hAA00A8BA748F331B6C1CB06DC0B4607E36DEAAE0E5A5AFB0640E10AAF5351F0F),
    .INIT_23(256'h6AE3CC966BFFAEDC57286F04C3FE036A129165D85C20F034EFEAF8F185D3D74C),
    .INIT_24(256'h8D79090FFF29E96A83C00BCFDFA37643286CC007F00688A809877C1889E02DEF),
    .INIT_25(256'h2406191F073015ACEB8267F83F6A4903F0501F97EBC6C12E5B571F97E212CAE0),
    .INIT_26(256'hEF038E0C6D35EEC1D29F943B6801CBECC78FF8BD68C900FFF42D1F96906A8457),
    .INIT_27(256'hFD84904978FFD6170304355FA882017B420E1A3909BA97D309F98C804830FFEE),
    .INIT_28(256'hA5CBE89D2591F1FF8490697FFFEF40869E5011DDCE02D9357AC7BE087126D871),
    .INIT_29(256'h828FFF7E7292D0D003F046ACB51BFF8490AA7F3FEB738F76448750497BEA289F),
    .INIT_2A(256'h3F0FFDECC3B3638C84EBE0D88836E328C0EB7B8FE97E94B4EE3F1FF7008E6243),
    .INIT_2B(256'h15F2E50F54CF467F0E7E57C969198AF23598C5B45911CF37A6258C497E94EC42),
    .INIT_2C(256'hF07FBD9B5FB3EB6706350F24CF463E83FFF70A1808382CCFCD6DD3E14913AC0E),
    .INIT_2D(256'h158C3F8FC5BB4A3DFC01B5E8A336EB5F3F0F28CF4E78C7FF6BF5B3FAFF93DA12),
    .INIT_2E(256'h16CFC878FFFFBAB7D7740FAB55464ADBC1D76441ADD2B0FB0F34CF4A78FFFFF6),
    .INIT_2F(256'h1F18C37D26D90F14CB8A3EFFFF724B4FBD0F9EFA75A6DC45B0593976B68A1B0F),
    .INIT_30(256'hDD8FC4874FB015A957938FA3950F144B8601FFFFE42DE8268ED2CBA45F198E82),
    .INIT_31(256'h7FFFB6D6C9B12F6C86EA1F7DEDF97B2B4D6E63550F944B4600FFFFEFA18771AE),
    .INIT_32(256'hCE2400166D8607FFFBF7BBB0A690ED04196256D27BC5F153D67427C5566D4503),
    .INIT_33(256'hD5FE22CD16B5BB314400386F850FFFFBFBDEF8FCC2FD1CFF0ECD728F8B0816FE),
    .INIT_34(256'hDEBE008AC78E09722FACA39DDD94D37400D86FC70FFFFFFBACF9723A9F1F5653),
    .INIT_35(256'h6F91FF00BFFED68DAF3BE7C729484CA47006579FC2BFDA70C86FC6DFFFFFFD3A),
    .INIT_36(256'h313CE4EC737C28EF90FF001FFFB6852D2A73E730F7C0E7FC6F82B80F6071FC28),
    .INIT_37(256'h30127D860CDA02C14DCD983F7C58EF80FF038EFF8FC668E6A2E3820A1EF58FAC),
    .INIT_38(256'h3FF09207E02D624A0C4053A0DD30E356696F31F94EFF894B070EFE4167CE1187),
    .INIT_39(256'h88704EEF813F007FE070D9B4A489801CEA38BE869E1B2D7CE3F0704EEF818F00),
    .INIT_3A(256'h20A44D3A912A1ECC780AE281F400FFC073E1D57CA4487E2E0118642EBA232813),
    .INIT_3B(256'hD0FE3BB9F0002140E26DF233C97FDC782BE281FC0BFF805B91B1005FFEFF79BB),
    .INIT_3C(256'hAEFD1FFE0041DECC71B86CF7EE6F07AD60820ADE1CBC782BEF87FE0FFF00343C),
    .INIT_3D(256'hD41142D9202BFFAE610FFC005C7E3952036FF7A474DAC78E42A407A03D702BEF),
    .INIT_3E(256'h03AA282D798E4A31D24A8FE129FF88700FF800C63958B33BF5E744E7FE74CEB2),
    .INIT_3F(256'h8076ED7F23DFC0C03F35D0A1A74EFFAE2A8F8129FF89303FE00073177F756432),
    .INIT_40(256'h0129FFCF701FE00079D7BFDAA85A638E8FFC232134819786070029FF89701FE0),
    .INIT_41(256'h4E51B27844C76E0FAAEFCF701FC0007DF6BB80BF04660C4AF58A792384E2D70E),
    .INIT_42(256'hB5CA6C63B31E7B351969258720773FAAEFCFF01FF0002612B1683B55EB0E6AF2),
    .INIT_43(256'hF01FF00057D10815CEAC9F692FAA06DDA533D25073FF2AEFCFF03FE000AD2D18),
    .INIT_44(256'h2877FAFFA6DF5EFC0FF0FFB1C9083B164F332830201303ABB4353273FF2B6FCE),
    .INIT_45(256'hB4B043B1396752E3FACDFFB6DF0EFC0FFC1807EF482CA5087321F08E2AC90584),
    .INIT_46(256'h103CE05B6D68399ADD6EC2BA7D722CAA87FFD6DF0E7C07FFE00C23D2397CB87B),
    .INIT_47(256'hD71F1FFF80030FE3A7244FC3683BDD36A20E757F795677ADFFD79F1F7CC2FC01),
    .INIT_48(256'hE4728B6ADAFFFFF71F9E7F00FF9C00D86403F3D0634CB08E087DE153068BFBFF),
    .INIT_49(256'h04D31EC3104AC4ACFD0A1558F1FFF71F9EFF07EEB30034B5A266F2C24E931DF6),
    .INIT_4A(256'hC1E1E63073BA5E1F6D3E8520C4BBD1475557EE77FFA79F3EFFFFF823004D33D8),
    .INIT_4B(256'h0B6F9F17818EFF0733F0FF986CDDE1DC7C4DF86583A91F007692AD9F36914EFF),
    .INIT_4C(256'h9CC9238C696A0B1D43FF0F01AE771F7FFBFF0FA56A9E6E7F281F027DA1A2B26B),
    .INIT_4D(256'h7A8EC9132A14DA8BDF6B761D88483CDEFF0F01EE7F98FFFFFF476671EE44D6E7),
    .INIT_4E(256'h01793338781FFFE47ECDD5CFA096BA2A656C7137101829FD36017F7F30FBFFFF),
    .INIT_4F(256'h2010202E27066781F6833F380FFFFAC82DD9D1D477C35F4FC32F13526F143C6E),
    .INIT_50(256'h14583B4FA049711FEBD67279E03781BE4007800E037C58421242772D301C0F8F),
    .INIT_51(256'hF10001FF975CC036A4AEC6DC07D33E66FAD2BFBD17E9F4C301C00C812C9B519A),
    .INIT_52(256'h908CE8A9F0CFAE7E01007E9D5B1096CCCCA669D1A7C000A638A7D4D7E9F0C7FD),
    .INIT_53(256'h612B53247C879C2E1DE8BCF8DFB13F83203C4C30805D924ED1D659F1C7A7ADE7),
    .INIT_54(256'hA30D294C0AB1E2EF17D034254F873FAE683CF8D9311FC1781DF430B90E5C63F3),
    .INIT_55(256'h77EFFD8DF0001E761C04B99D5DAA3AB9D5A0E9A6BE0BBE483C78D87C43E0301E),
    .INIT_56(256'h6149BD388A4D3C6610FF64F0000ECC36E5CEB54B1687B2D710AE29E9EE934D3C),
    .INIT_57(256'h626A270629784844AAB21C02443CE60CF812F0000F4264E6D625CC24C9B839CC),
    .INIT_58(256'hB40003AF9FCAC6FBA99FF2A9C60349B97F6785B43CA7CCFF11A400036D4C1234),
    .INIT_59(256'h1D147CA6E71C039A000BEEE1FCCC781896B32ADED27279FE891DD47CA7ECFE60),
    .INIT_5A(256'hD327DD560E75C2875478A6F00C3A6AC01BB50C1D6C5619BE15523FEDF40412FA),
    .INIT_5B(256'hF0A13A0CCF52EADBE61A88790510289521E6B0F03B0DE01B2C8E0DEA4BDCEA36),
    .INIT_5C(256'hF0E3FF12F81F863B96BA1BAAD3D29A6A8044CDE92410D42352307C92F7F01F04),
    .INIT_5D(256'hD4CEDC9E7FA7E920ED3CB9F81FA6149E7B192408361A9F48703455FFEA422348),
    .INIT_5E(256'h7727997BF9F60C5FA7628FA2275F30C058087F03618D0990FD411CC61B41D8F0),
    .INIT_5F(256'hFC00F408097E14BC5673F9FC68529720DF605523D33300404C7E03E2D5095BE3),
    .INIT_60(256'h3B2757B7E0180EE0007F9C4EFE1A319073F9A9D925BF6AD3324C67F2B3003003),
    .INIT_61(256'h88BD03B8D39304B927592700090AF0007F3CFACB2185D863FB5F7B112E13AE33),
    .INIT_62(256'h74410C829FC2E33A4E756F27A488F1674631000C1EFE00761AF92B55809FC2FB),
    .INIT_63(256'h3F038C7FC0DC731620735C5FC2C13419F4868EBC917567F9780F02887F805751),
    .INIT_64(256'h48EF80F1548D400F0107390017FC3C6AF7BB660E06A17AB60E249341F3542960),
    .INIT_65(256'h8FBC0AD012C739F871D75054D040FE008F39001524708AEEF3C71C0E808AE861),
    .INIT_66(256'hC0F6D4294B74FCFC3E02926CB0908ABDCC0954D42FFE8089BF0014BCBD0CB43C),
    .INIT_67(256'hD648BCFF00438FC063815DAF1C97386E06FF5D87373E6A1BEB46C2BFFE004DBF),
    .INIT_68(256'h1DC3C18C58086BD35C30FF80218FC46B937F95AD8A30CE8745E4EA6380CFD699),
    .INIT_69(256'hDA038CCF09954A2C9558F35FB39CD35737FF80018FC62DAD2D61CF407F0D85C4),
    .INIT_6A(256'hE14CDF760D2CD3DC77FCF331069F6C5B44CDF4CA9193B4BBFF80558F841DA171),
    .INIT_6B(256'h2AA243D9B20DFFE74D5F645D59DB2C9B40DDB306E84CFD1E0FD19604D1B30F1F),
    .INIT_6C(256'hA478E032CA658D66073A1D9347FCFF535F20FEE9E12A92952A560744401385F8),
    .INIT_6D(256'hFE14972E890625EDC3E6F1FFB0A886125499B2CEFEFFD55C00FECC9DAED54871),
    .INIT_6E(256'h571E00F7FA5F07FE12377A6862F58C99D7AC92104F19C41618CEAA0FFFF85E02),
    .INIT_6F(256'h9BA92DF26980D8741E0021F61E07FE9325E39A9C189D360F152DB59C7AFCB2D8),
    .INIT_70(256'h549240F243F8692E36735DF0C4C02E0DC020F6AC0FFE93214F609AFC9B2EBE51),
    .INIT_71(256'h20AC007F3EA29B0D891B228CB9B96E0201A24137E12EDC3FD8A1A8007F67E8A0),
    .INIT_72(256'h625AE1AB24F7F3E3AE08794B57A94FB056645B39314F5CDC21D228E12E3C23F1),
    .INIT_73(256'h4A7E77CE45BBE95131E1B2C5F23BE5AE00794282058103D73B9B7B314FD570C8),
    .INIT_74(256'hEF27ACE74695B417387E9E6D62E1EF5861B6847A3EE34EC00E4143794A00536B),
    .INIT_75(256'hE3D90FF99000F85A2F6AC3B3CD1500087ABFDC0A1C08B8E72A641A9EE28EC001),
    .INIT_76(256'hF38AE616D94F7CF53D431A7006736C2F36005E284ADE89FB3F07FEE5EC7FEF41),
    .INIT_77(256'h94E41E1ADFC22391EB288EBE1F5BC88AE824AFFA131EF6F43A13366FD69AC2E2),
    .INIT_78(256'h80EFE6525A22B1BBDCA6D63FCE84FE378E0E2B863854E5500478F6002E9755CF),
    .INIT_79(256'hBDDF1163B98203A3E31385433AE87BFC24DE1F97265320617F557E2FF1FD3B06),
    .INIT_7A(256'hA44DE55751CD026BB21C80C6732186C4CC1DC0B25D84FC61CD341715C2385F8E),
    .INIT_7B(256'hBC8F6B4ADE43DAA86DAC98A85F5F33F03E55E8333114D3C17DC2881A4AFCC3F1),
    .INIT_7C(256'h169AFED0639F9F83C205ADCF43C5256CF7ED97618733FF6DA66B573033493FD9),
    .INIT_7D(256'h6A7DC8A8E06EB687B89FB0BE3BB0D7F2336D4C4C6250BCB16476BF04EFFD4408),
    .INIT_7E(256'h3E1E7CD1240F1547D62C6CE0EF1404025FE3BC37FFCCC164497E4F4798C7176A),
    .INIT_7F(256'h60FFAB67C4C9997E00901401A4FADDFFC6DCE085EA4E970A04607FE6CA66CCD9),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module vga_rom_blk_mem_gen_prim_wrapper_init__parameterized9
   (p_39_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_39_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_39_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFF07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFF),
    .INITP_07(256'hFFFFFFFFFFFF007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFF00),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFFFFFFFFFF),
    .INITP_0A(256'hFFFF0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0007FFFFFF),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFF0001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'h3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFF00007FFFFFFFFFFFFF),
    .INITP_0E(256'hFFFBFFFFFF00001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFF0000),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFBFFFFFF00000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'h353524141404143587A8C9DADADADACAC9C9B9B9B9B9B9B9B9B9B9C9C9C9C9C9),
    .INIT_01(256'h8787878786868686868787868687867676666656564535352525253535353525),
    .INIT_02(256'h8787878787878787877776778787878787978787878787878787878787878787),
    .INIT_03(256'h8766353435454646566666767677777676767676767676878776869797867687),
    .INIT_04(256'hFEFDCB99A9A9A9B9B9B9B9B9B9B9A9A9B9B9B9B9B9B9A9A9A8A9B9B9B9B9A898),
    .INIT_05(256'h76666666565656565656565656565666665646564636262625F447CBFEFEFFEE),
    .INIT_06(256'h77A8C9DADADADACAC9C9B9B8B9B9B9B9B9B9B9C9C9C9C9C9CADAB96655766576),
    .INIT_07(256'h8687878686877676766666565645353525353535353535353525251404031445),
    .INIT_08(256'h8777767787878787878787878787878787878787878787878787878786868686),
    .INIT_09(256'h5666666676767676767676767676768786768687878686878787878786878787),
    .INIT_0A(256'hB9B9B9B9B9B9A9A9B9B9B9B9B9A9A9A9A8A9B9B9B9A998887756352535454656),
    .INIT_0B(256'h5656565656565656666656564636362615F447CBFEFEFFFEFEFDBA9999A9B9B9),
    .INIT_0C(256'hCAC9B9A9A9B9B9B9B9B9B9B9B9C9B9B9CACAA966556565767666666666565656),
    .INIT_0D(256'h767666565645353535353535252524242425251404F314457698C9D9DADADACA),
    .INIT_0E(256'h8787878787878787878787878787878787878786868686868686868686867676),
    .INIT_0F(256'h7676767676768686768687878787878787878787868787877776767687878787),
    .INIT_10(256'hB9B9B9B9A9A9A9A9A8A9B9B9B9A9988766563535354546565666666676767676),
    .INIT_11(256'h5666565646363625150568DDFEFEFFFEFEECAA9999A9B9B9B9B9B9B9B9B9A9A9),
    .INIT_12(256'hB9B9B9B9B9B9B9B9051557675656557676766666666666666656565656565656),
    .INIT_13(256'h35252524242424242425241404F304457697C9D9DADADACACAC9B9B9A9B9B9B9),
    .INIT_14(256'h8787878787878787878686867686868686868676867676767666666655454535),
    .INIT_15(256'h7686878686878787878787868687878776767677878787878686878787878787),
    .INIT_16(256'hA9B9B9B9A9A98877564535353545465656666666767676767676767676767686),
    .INIT_17(256'h0537ABFEFFFFFEFEFDBA99A9A9A9B9A8B8B8B8B9B9B9B9B9B9B9B9B9B9B9A9A9),
    .INIT_18(256'h5060C31546676666767676666666666666565656565656564656565646463515),
    .INIT_19(256'h25251414040314357697B9D9DADADACACACAB9B9B9B9B9B9B9B9B9B9B9B9B9C9),
    .INIT_1A(256'h8786868686868686868686868676767676766666554545353535253534353535),
    .INIT_1B(256'h8787878686868787767686878787878786868787868687878787878787878787),
    .INIT_1C(256'h4535253545455666566676767686867676767676767676867687878676878787),
    .INIT_1D(256'hDBA998A9A9A9B9A8B8B8B8B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9A9A88767),
    .INIT_1E(256'h767676766666666656565656564646464656565656452515067AEEFFFEFEFEFD),
    .INIT_1F(256'h7697B8D9DADACACADACAC9B9B9B9B9B9B9B9B9B9B9B9B9C9614060A204677766),
    .INIT_20(256'h8786768686767676767666665555453524242434343535353524140404031445),
    .INIT_21(256'h7686878787878787868686868686878787878787878787878786868686868686),
    .INIT_22(256'h6666767676868676767676767676767687878787878787879787878686868787),
    .INIT_23(256'hB8B8B9B9B9B9B9B9C9C9C9C9B9B9B9B9B9B9B9A9A89877562525353545455666),
    .INIT_24(256'h6656565646464646464656565535251548BCFFFFFEFEFEFCBA9898A9B9A9B8A8),
    .INIT_25(256'hCACACAB9B9B9B9B9B9B9C9C9B9B9C9C951406161A20546777676767666666666),
    .INIT_26(256'h7676666555554535242424243434343435251414040314457797B8D9D9CACACA),
    .INIT_27(256'h8696979686868686979787878787878787868686878787868786768686767676),
    .INIT_28(256'h7676768686868676878686878786879797878786868686877686878787868787),
    .INIT_29(256'hC9C9C9C9C9C9B9B9C9B9B9A8A888664525253545454556666676767686868676),
    .INIT_2A(256'h4646455545242536ABEEFFFFFEFEFDDB99A898A8B9A8A8B8B8B8B9B9B9B9B9B9),
    .INIT_2B(256'hB9C9C9C9B9B9C9C9203051515182D44777878776767666666666565656464646),
    .INIT_2C(256'h343434343535453524252414030314458797B8D9D9C9CACACACACAB9B9B9B9B9),
    .INIT_2D(256'h9797979787878787878686868787878687867686867676867676666565554535),
    .INIT_2E(256'h9786868787768797978787868686868776868787878686879696979686868696),
    .INIT_2F(256'hC9B9B9A898876645252535454545566666768686868686867676868686868676),
    .INIT_30(256'hDDEEFFEFFFFEECA998A9A8A8B9B8A8C9B8B9B9B9B9B9B9B9C9C9C9C9C9C9B9B9),
    .INIT_31(256'h41414140414171E4778787777676766666665656565646464636465645243658),
    .INIT_32(256'h353524141403144576A7B8C9C9C9C9CACACACAC9B9B9B9B9B9B9C9C9C9C9C9C8),
    .INIT_33(256'h8686868686868686868686868686767676766665555545453534342434343434),
    .INIT_34(256'h8786868686868686868686868686879786969696969686868686979786868686),
    .INIT_35(256'h3525353546566666667676767686868676767676768686868786867676878797),
    .INIT_36(256'hA8A8A8A8B8B8B8B8B8B9B9B9B9B9B9B9C9B9B9B9B9B9C9C9C9B9B9A898775635),
    .INIT_37(256'hF466987766778776666666565646464636464645451446BBFEFFFFFFFEFDCA88),
    .INIT_38(256'h86A7C8C9C9C9C9C9C9CACACAB9B9B9B9B9B9C9C9C9C9B9C84131314141415171),
    .INIT_39(256'h8686868686868676767666655555454535343434343434343524141403F31345),
    .INIT_3A(256'h8686867676868686869696969696968686869696868686868686868686868686),
    .INIT_3B(256'h6676867676768686867676767686768686868787878787978786867686867676),
    .INIT_3C(256'hB9B9C9C9B9B9B9C9B9B9B9B9B9B9B9C9C9B9B9A8987756353535354545566666),
    .INIT_3D(256'h666656565656464646464645242589EDFFFFFFFFFEDCB988A8A8A8A8A8B8B8B8),
    .INIT_3E(256'hC9CACACACAC9B9B9B9B9C9C9C9C9B9B95141314141313151A204567877666666),
    .INIT_3F(256'h76766665555545353534243434343435342414140303134576A7C9D9C9C9C9C9),
    .INIT_40(256'h8696969797969686868696968686868686868686868686868686868686867676),
    .INIT_41(256'h8686868686867676768687878787768686867676767676768686767676767686),
    .INIT_42(256'hB9B9B9B9B9B9B9C9C9B9B8A89777564535353545555666767676867676767676),
    .INIT_43(256'h463536250457DCFEFFFFFFFFFDBA9898A8A8A8A8B8B8B8B8B9B9B9B9B9B9B9C9),
    .INIT_44(256'hC9C9B9B9B9B9B9B951414141313121415081E457786766776666565656564646),
    .INIT_45(256'h3534343434353535343424141403144586A7C9D9D9C9C9B9C9CADADADAC9C9B9),
    .INIT_46(256'h8686868686868686868686868686868686868686867676767676666655554535),
    .INIT_47(256'h7676868776767676868676767676767686867676767676768686969797969686),
    .INIT_48(256'hC9B9A89887775645353545455556667676768676767676768686868686867676),
    .INIT_49(256'hFFFFFEFEDC9988B8A8A8A8B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9C9),
    .INIT_4A(256'h5141414141313141404071E447676767666656565656464646353515369AFEFF),
    .INIT_4B(256'h353424141403134576A7C9D9D9C9C9B9C9CADADADADAC9C9C9B9B9B9B9B9B9B9),
    .INIT_4C(256'h8686868686868686868676767676767676666666555545353534243434353535),
    .INIT_4D(256'h8676767676767676868676767676767686869696969686868686868686868686),
    .INIT_4E(256'h3535454555666676768686767676767686868686868676767686868676767676),
    .INIT_4F(256'hA8A9A9B9B9B9B9B9B9B9B9B9B9B9C9B9B9B9B9B9B9B9B9B9B9B9A89887765645),
    .INIT_50(256'h51414071D436676766666666565656464546251579EDFEFFFFFEFEECAA8887B8),
    .INIT_51(256'h76A7C9D9D9C9C9B9C9CADADADADADACAC9C9C9B9B9B9B9B95151515141414141),
    .INIT_52(256'h8686868686767676666666665545453535342424343535353434241414031345),
    .INIT_53(256'h8686767676768686868686968686868686868686868686868686868686768686),
    .INIT_54(256'h7686867676767676768686868686868686868787877676868676767676767676),
    .INIT_55(256'hB9B9B9B9B9B9C9B9B9B9B9B9B9B9B9B9B9A8A898877656453545455555656676),
    .INIT_56(256'h676666666656564545351536BBFEFFFFFFFFFDCB998898A8A8A9A9A9B9B9B9B9),
    .INIT_57(256'hC9C9CADADADADADAC9C9C9C9B9B9B9B951515151515141414141303071E44678),
    .INIT_58(256'h66666666554545353534242424343434343424141303034586A7C8D9D9C9C9B9),
    .INIT_59(256'h8686868686868686868686868686868686868686867686868686868686867676),
    .INIT_5A(256'h7686868686868676868687878776767676767666767676768676767676868686),
    .INIT_5B(256'hB9B9B9B9B9B9B9B9B9A898978776554534454555556566767676767676767676),
    .INIT_5C(256'h45242589EDFFFFFFFFFEDCA98898A8A8A8A9A9A9A9B9B9B9B9B9B9B9B9C9B9B9),
    .INIT_5D(256'hCACAC9C9C9C9C9C95151515151515151312131305081F4466766666666564545),
    .INIT_5E(256'h3534242424343434353424141303034486A7C8D9C9C9C9C9C9C9C9D9D9DADADA),
    .INIT_5F(256'h9696868686768686869686867676768686867676767676766666666655554535),
    .INIT_60(256'h7686868786767676767666666666767676767676768686868686868686868686),
    .INIT_61(256'hA8A8989787765545354545555565767676868676767676767676868686868686),
    .INIT_62(256'hFFFDBB887798A898A8A8A8A9A9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9A9A9A9A8),
    .INIT_63(256'h404141415151625252312141403081E45767665656554545451457DCFFFFFFFF),
    .INIT_64(256'h3534241403F3134476A7C8C9D9C9B9C9D9D9D9C9C9C9C9DADADACAC9B9C9C9B9),
    .INIT_65(256'h8686868686767676767676767676767676767666655545343424243435353534),
    .INIT_66(256'h6666665656565656556666768696969696868696868696869696968686867686),
    .INIT_67(256'h4545455555657676767686867676767666667686867676768686868686867666),
    .INIT_68(256'hA8A8A8A8A8B8B9B9B8B8B8B8B8B9B9B9A9A9B9B9B9A9A9A8A8A8989787665545),
    .INIT_69(256'h5242413131415161D4365746454545352525AAFEFFFFFFFFFEDC997887989898),
    .INIT_6A(256'h86A7C8C9D9C9B9C9D9D9D9C9C9C9C9C9DADADAC9C9C9C9C94131313141414141),
    .INIT_6B(256'h7686767676767676767676766555454534343434353535243534141403F31345),
    .INIT_6C(256'h8877676666767676867686868686868686868696868686868686868686868686),
    .INIT_6D(256'h7686868686767676777676767676868686867676665656664646465757677878),
    .INIT_6E(256'hB9B9B9B8B8B8B8B9A9A9B9B9A9A8A8A898989897876655453535455555656676),
    .INIT_6F(256'h82D42646464545451568DCFEFFFFFEFFFDCB988898989898A8A8A8A8B8B8B9B9),
    .INIT_70(256'hD9D9C9B8B8B8B9B9DADADAD9C9C9C9C941313131314141425252413131314141),
    .INIT_71(256'h767676656555555534343434353535342524141403F3134586B8C8D9D9C9B9C9),
    .INIT_72(256'h7776778776767676868696969686868686969696868686868686867676767676),
    .INIT_73(256'h7686868686767676765545565636364658699AABAB9B9A8AAB9A797868686888),
    .INIT_74(256'hA9A9A9A9A8A8A8A8989897878766554535354545555566667676768686868676),
    .INIT_75(256'h26ABFEFFFFFFFEFEDCA98787A8A797A7A8A8A8A8A8B8B8B8B9B9B9B8B8B8B8A8),
    .INIT_76(256'hD9EAEAD9C9C9C9C9414141313141415252525241413131413082D42646463535),
    .INIT_77(256'h34343434343535342424141403F3134586A7C8D9D9C9B9C9D9C9B8B8A8A8B8B8),
    .INIT_78(256'h8686969696868686869696968686868686868676767676767676766565555545),
    .INIT_79(256'h56564646364789BBAC9C9C9C8C8B9C9C9B8A7A8A8A6968788878887766667676),
    .INIT_7A(256'h9898989787665545353545455555666666767676868686868686868686866656),
    .INIT_7B(256'hAA988797A8A7A7A7A8A8A8A8A8A8B8B8B9B8B8B8B8B8A8A8A9A9A9A8A8A8A8A8),
    .INIT_7C(256'h41414141314141525252524141413140304071D43646352569EDFFFFFFFEFEFD),
    .INIT_7D(256'h2424140403F3134586A7C8D9D9D9C9C9DAC9B8A8A797A8B8D9D9EADAC9C9C9C9),
    .INIT_7E(256'h8696969696868696868686868686768676767676656555454534343434343434),
    .INIT_7F(256'hAC8C7B6B6B7B8B9C8B7B7A8B8A69585878788888777777667676868686868686),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_39_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_39_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module vga_rom_blk_mem_gen_top
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [15:0]addra;

  wire [15:0]addra;
  wire clka;
  wire [15:0]douta;

  vga_rom_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* C_ADDRA_WIDTH = "16" *) (* C_ADDRB_WIDTH = "16" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "2" *) 
(* C_COUNT_36K_BRAM = "18" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     15.89039 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "vga_rom.mem" *) 
(* C_INIT_FILE_NAME = "vga_rom.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "40000" *) (* C_READ_DEPTH_B = "40000" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "16" *) (* C_READ_WIDTH_B = "16" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "40000" *) 
(* C_WRITE_DEPTH_B = "40000" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "16" *) (* C_WRITE_WIDTH_B = "16" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2" *) (* downgradeipidentifiedwarnings = "yes" *) 
module vga_rom_blk_mem_gen_v8_4_2
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [15:0]addra;
  input [15:0]dina;
  output [15:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [15:0]addrb;
  input [15:0]dinb;
  output [15:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [15:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [15:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [15:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [15:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [15:0]addra;
  wire clka;
  wire [15:0]douta;

  assign dbiterr = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[15] = \<const0> ;
  assign rdaddrecc[14] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[15] = \<const0> ;
  assign s_axi_rdaddrecc[14] = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  vga_rom_blk_mem_gen_v8_4_2_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2_synth" *) 
module vga_rom_blk_mem_gen_v8_4_2_synth
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [15:0]addra;

  wire [15:0]addra;
  wire clka;
  wire [15:0]douta;

  vga_rom_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
R80NnScBgIZD14acGTeYZyZzlDoMDRJH97QvrM1z3/BPxjYOI5xO+RmLRE3ogivikKxeQqDB3hYo
CtT6MXJE8w==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
pzFf5UkhQCihEthT9/vXIu9qyyEco3ugn72RSG7p68vod9TXq7nS9azLrnGkzXHs3PQFBkq+3+ZG
PNN41vDN58/lK8pIjiAlp2V0xXr8ZRf/QoS3nU9pnZ3CEwxt9CGwUMks2MBnm+VSjWWRxbkUaTxZ
+kjzVWvQpUuyFFsOEs8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
xDcafb3KrEW7vk1Eyiww/9CKbzlKF9C0uKrVBz5bHy5+6GMNsnwfCSkgxU14+VriR3jhdDN7viwB
M3a2pKPouTEOz066rknyw5X/sQ4hniBD3iUl4NQWkHTGym3kv31ZUeZYdl5ODPvzfUJOWUvkAXp/
gf4rtgV5FBbGm8qJS4jxuFSsv4rhcb7t+cae5sULvX9h7Uh0lEoAlNX3YmEW0fWj4bhIgTdzT2gk
C1ytdGU/UAnitwmujc/k+32KWV0i/o3dHRhIc31iawLLSmuBJYefDEaLG6KE8nGHeuho45Se0dhe
7kIaZp4SW1wGf7C0xxqwh1cgZ7+6eWgYBqVY1g==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OrzITnToGC+ryHZVkpDHCj6CgE4vEVrPZ7Z829783FsE2zjugDCdpipuFZ7ikbeX4Bc52TEJ4mFm
0OxylPcCXPIE74pJ186gBXkmldW4bGFMhTmUHJ94bRAsyJjr329fm+j77y2NmfbHMVOsljahWWK4
OMppytgOrZcnsnsORsbXvvikZALiCB2t+Qc4RdHc3/98o+DDvRf+gwTZNX0GMOitJmVVvqxqw6No
K3aHL26WS+5291/TUz7aF7ySSp+k84h+0omwPrcy0Xc3URWaoYbqLrWiEi22RgQYitI1tEsa+afh
tv3h9WNr+65gWTbdbwWyOz1NeXJSaNV/mc+/Lg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
riYGAyaVfIXieMgcJVFsucQ9kUNBkyzgx5CLlDibSmqSJjCaDvK63ymwoZpsGDT9Rugub8H1Y8xX
XUpLlzZGCXrlWs6NgjXfNxVpLlkmz7GswYkQ6KhUkZhRuPh0HrpJPt1ne+1pTM6fzi5LXsyTv6sn
TisWpJPdsnmBDHgM6jupb4Iv3OG7/q/NPck9K59oFLN+AyKeQ/8pEy2j7xpMiFTRlE1OTJj2mjHF
yWQWyURMafr1KK5t9Wu7YuocfKiTo0f6okHNafEo/nNpObW1D/liUJlS5GVguNNbnFjSuun9SM4T
MXhUoU0rVPqSkeCGnTpMMYK0MY5IwmbyZXn/fQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
HyAIbEI1uxEAA90t6+VWFTmyUje1JDZQZoMv6A5VyFWA8tJ80b/Pwhc93aHby8xZos0WjlEANrxF
3hJ/l8XJYMVZWlVytBIRAZYGbhnMBOGo/5sjE6O2Ap0308iwfA50rb1ZITdKRqNiW+PlWkaGC+3R
QMUfNUa7cSm841V7mmc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GUEL70ZQ78wO25wq2V+5JNZcUKzj485nYHAlIxulC+dFYZ1T3bS7X0juNGn/cdIyRbeWgA5z1viA
KyiSR064Z0BmWFsIYHfLEP1CENE6B/DkEgUM//4pBnGxH0CUe8wWHQBcyJQAxQHemECYQ5/QfTqT
96OTv0jwZ8yRjX1vKXS1qZKREGwNAsV3Kgrd9M5oaNz3PuISlyOOLoxPx9Qvu0Z0QYAzZbksLAI6
oekHTbR7CXs/P7+GCnbyf0lD6RFUyKASz8PAAvPi/+knG0A5BGQv9W8rEQ1GlCyJMbWqS7UMYIM5
Aany0Gd6zUtHqzCJMTpR0Gv6o8IS9bMCD8CICQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j4gItOkcOe7ue+Gkkh9C20xUl26YPIeEECPGCB2aOrtmDJEQaKq1YBrcu4zG/uUJXkVbB4crT0+j
oqcgXoppXHU7vPTFozE2sJc2ThTysUErNVwmui51nNTQFWTs2mt18RuKNfA9r93SJ6xMm2r9pM1z
YGDvWyPJ4T5TK7w6o2A5/Kvp2XGyMnNRtUR6jU17U8DsXnJFkHtvf/tH6mu8tp+gtUTLj9aNUZnn
BkM8lw7k9fVcdVPdk2SNlN2xudmtwZ2Zy1QH3UT/wc8wFQ8r0dn8i5rgzVSwU26prHmb0l7x7TJU
b2AoS3KqFu37lQtecq1taGZx+QVcX7u9tEQUDA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZVL8OXPrGLvyuvGhS5enW/71WhE42Bc1uQS67I7ZeUQgXhu7XYFjajIf1aJktpElAafJ/tuwRIoX
oMoJrNd396KDbEDBtuCYFv6PdCfBSzXg+a5wS9VFNi+nAlVfvLZmBsICb5tuR5Ztpz9xWBkElEqM
KIIwTS9v/UYTRRXJkVQWc2fiVL8J8hD8GzKEtDW8jiyholq9mHaJ3e/uZN6NX4Ibpb3pr51Bu2nB
AaFqupp+PeQRk0zhxK/7uNNcOi7u8gODIkMRjBW1YUYkE2zgqDNuPb+LZp3Be38gEDpuXJlo384b
pJoWLa7GHB+neSZ2hGcRQuqB8ggdr0RwBwMz5A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 50816)
`pragma protect data_block
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
sMbzrtM1J+JlHSa7KwLJL1nZjUw1TqAZ3r0TzYE=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
