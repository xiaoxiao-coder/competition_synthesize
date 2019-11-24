// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Nov 10 22:19:13 2019
// Host        : DESKTOP-P038UOU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Shift_RAM_3x3_bit_sim_netlist.v
// Design      : Shift_RAM_3x3_bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Shift_RAM_3x3_bit,c_shift_ram_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* c_depth = "300" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_12 U0
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
(* C_DEPTH = "300" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_12
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
  (* c_depth = "300" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_12_viv i_synth
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
I4lMPcv6YfQhMs0KhLmhiPknMwyirLsOa/Sp24x59NKPCjZt/139q95N67sUV0y/nOEXPNNIe9sJ
LXpzVtM9iGOmlZ7JNUouPxQNCLGfIBbkDUSYi/lkLnNUiYUq/LPq0jCspHOV2AtOrNQADL0SFCZZ
D5TVsGYA1Vy+4Ks5ACL96QjahXvOLVvTXiPho3yfvpmCXO4R8dM1huzGhzk6jYfPPnAp6S9/Tffv
74O5tk9niHFFRB2XHCQ7MfwYQ3/kR20RqEkdw/dySpQsvQ4ujZVtQ06nnQhsI8k0zzu4oxAEEcC0
3sfQLQsls9asGIe4nvugxcYCVJUO/HaZj5bsnA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hdFcK2lMscYXg6afOxZ4YHRBsfq3VceP+8tXw9/1N/n27aacDqDFADwBphCikA94lJOiXIgiSKRW
Kbq7137Wis108hpit+EHo460DDmA20cBqowKaEmA1aBFWuBIoCn+zK7M2Y49RcqNbVxXF8gyF6w4
5kzGaLzOprt/00GVxVjkWzElAGJ4+lo0m/NLQKnyA0YJcmzZ/OHdImMdQ8cD9HDPIILMOz97G6Sl
MNmEepAlz7QMTAsS/sIF3DEOS6y0Mw0+2Xv3HGAED6afTjUDU1INeH/btHQ0YOVBFXbEQiTzatmc
8OJqeBs9dDohuUOxBkgFy5B1FtNm1reXji9jHQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13472)
`pragma protect data_block
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
4ozIfHluwTZ6UiZkikeZqrXcU58=
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
