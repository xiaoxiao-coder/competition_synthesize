// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Nov 14 15:02:24 2019
// Host        : DESKTOP-P038UOU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/competition_synthesize/competition.srcs/sources_1/ip/Shift_RAM_3x3_bit/Shift_RAM_3x3_bit_sim_netlist.v
// Design      : Shift_RAM_3x3_bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Shift_RAM_3x3_bit,c_shift_ram_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module Shift_RAM_3x3_bit
   (D,
    CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "320" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Shift_RAM_3x3_bit_c_shift_ram_v12_0_12 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "320" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module Shift_RAM_3x3_bit_c_shift_ram_v12_0_12
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [0:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "320" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Shift_RAM_3x3_bit_c_shift_ram_v12_0_12_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
PkyhyBb59EPgq8kANKUgNUvJSxwVgcYTKLlfXroHeM6zPnPHm+ATuJPY2OmCojZnDY2A6SHiMUmx
ylnsx6jVAA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XgKClVpS+h3z22aTgNZepCZW5Yffl4m6nNLRjY88G0b6Og6dF7wA3of30X3Vr2BKX5GVSe+jeu6a
q3D7Qa0T3sEnO1qnWdbom/P31G6nS7/pQCPaLh+suxznQX2imRfhfTkmY1B9wExxZtZBbss2GPfs
EFGX8a+efiUiZLAKaSE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYMHL9qwz9VPPAbHAyLFK1YM6t0YBJUbhdak6y3IQta7KscLfLakFo9QXv7rXKj3R5WEjx6Vg+9K
QUgoa/uCYy+n2t004DDpVeDamNuGIrJU3WXV9mo6tEi21Rm+kIG+CFgVuqLY9JSjwI3dhmEqYYtS
wC2GIO6hKaV0keq1ldvsRFBu71kLY+jczboTe6EddpUktWp3UM/RqnrSfHPMlZWhHp1k3YC0SDq9
gvcPn9DB3vIjXgn+xRbyzZOt/j+s8RfjF446i2RalkF5p/den9o/OMG5jmv4rZKHj9S1V3Z2UuL1
c2fxe26sNIvZ7tpz8RHVWRMloPfcPVakam2zhg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BACIRg239ZSAZHpsLobWk7IZyWSAM1rsaZq5LesIgnba07iijhvT5s8WIOIIgHZs1XEDKelSnU1J
+5cyEbU9WgPZsja6FQEw6J0GuN3L/1QyrvmNIJKsNXINx7R+xaY/n0uby2eFsFE9luplvdOyrCEw
eK82BghXwPdasTT1ZUgKiycyGYtNsp5ZaPIWXI9ezN9oHowcWp7Mn6v2jrdDl4lzJuoHgqRtkZvG
7GqevJFheGfXkRPuQGkNK2Pk6XN9woSB1a9C+FUsQBM5MlIE7zrBQAjONIQj/nd82Hlp1H4PRxBW
1mmFP7PskMeNR2hH5xwkvg4Q3IfYBlw8gdzneg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vUWbACu3JL9XeVH21XChN1bLnACIM0U/dLRQNf2LGaDFNW9CL0o3SY9pOtV226o71+9Eal6i7P4l
ht62RU2AHTweJsgWkXtQBI0/jHIw4/gxbBebNbqZM6m3qjEE5blPsuzJ1njoX2JWCJElO3p9FfRu
uHpC+4hYoccdFayGku3vk1gwz9lLJ4FcYG9mi1vLIY+tzs0o83THQ8dLrg50Rr/r2n0Xf4hxWe4U
tJ6iUOYBQUYjeOwNQOOxfjv5PKfLIgGA2WC8sJb2GFe9MkTDoMAo40nBLK0Y8+klDIJTyx079Bx0
wdRg2JxUF3+TGlXW98+2/iWy94H1CPEVRm18FQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VX8rVAT0l4oniSvb1X0sblwaqcWh2XE0oCAZbC0SVv8fCy8dLmmtqBzFq3w2V/7nyMmJzWKNP/yV
0GW7ICEfrGaBejU3VpwaHA69xE56Y/8NSHGlZOhr390/5/UqELcFOknZEPJXMLpeKjUn2ijACn/u
O0myDIvGFiUyRGWWYKM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dlKAt52rb1rebbUvCxUw/pmWR03F+be3vApC1VuekYTvk7BFt7xopdHrqsvoU8rgaCBc2wuCudx5
nUcu7bKEyHKFc6bcbp6J84c2uG0ZckyqBn/OHRMbmq4Vbar8C3ERI2YmcbL0Q0fBLzMosVarF9eM
+c6VfE9hA5lx9qpwFJhgk5v/yx6kjgu+kEnG+xsdWrpKrj8LIxxh6gkrPOn+jQtKQSX3o7q35Rcv
W3vWLRYdH+pHsfJqCdT0wL4oBTLa7ozdsufX9l6UDgT4ECxLf7R1TtNj7XA1jaaefThL0F1AUCjF
5WuhMqBOotpDZUmvB91yVtbXLMm0r85tK9b/iA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jCrEsWFrVzrGhDsncXNDU0I/LXs/TqzdmYHHOH24NdWqTEOYL35AEL/g2PNgSE8s7vizpd+ceNzY
G9o7xr+3oTwsF1JzJlQKujaUONL8gYqWB2TzVOMjAV3orcYxYch0PNKlDCaRFgGOh5KWxc3gV4B2
9VCjMaCh7QOBXWCG5YRtFzHOQWP1FkpVZ6XjCKqCyimMbcqKAD/fxxxKQlzdfGC7Z4FHVvxwfP0s
ATJVYXUYldeo0KZj8HBFq2ho4PfoHhgN/eRpuALHEK36c1vFMenEf7ba1WktNdMUQ1n5ui/5T03O
0GRIOXF92NFDp688ugPhawuR6zUBjI030qN2xA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dWcgzGAiwtfyMUpjcuacDVLROhkwQiUvsRbTgpE+/+NV2L8CTcIHuZWuzt9CjOtBHH2Lc8qXQsoQ
ahImyQmmuHrGBkHJyExkrNp5bLiZaa8r+IlbxdueKMmml5T+Kv/bmwtrHDbvhaB0WB4saA++jXzH
NkMuDUr9R3ktLUxB/NA3L6l65DNux/PY9BH6pZ38oPVRSoc1c7x+w43mgni1EBRhVuZOFEkhS/de
QQWCkmyp48SiL2vwmxlznQ1LzUgIE94Zuslb9hr8VY+xURkYCDQG/bxt9nC832U4s8ffoQa9e1WP
3HaxtKtQ4kHTIfU60WBDswDAO/1AFVX17AlJMQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13504)
`pragma protect data_block
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
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
