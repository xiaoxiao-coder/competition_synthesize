// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Nov  9 17:20:28 2019
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
  (* c_depth = "100" *) 
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
(* C_DEPTH = "100" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
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
  (* c_depth = "100" *) 
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
RXXhs7MOBENcVfrEF00PAqojI6tUviX0h/4Hl4vsckOmx7vDyfub/IjAPkhzVEatyMnv2Uvi7/VU
ttzKccVrOmwLyAtFG4+QieV975aZkuX/Ww7AK3nJ3wQ5DoLr4KA0FhRxp2bSKt6gr12DEwHxA4k1
FTFLZCw2+fBIkpI6kCz8qTz1mQEsuWo4FAH6hQ/IJXRfMuEciZOt6DnhyztIIWvBZRHH42HEPSug
ZduBJN83LOsWNdNJJx2er6je7kymCctERSOBXBqKRNSXb3Wf0cn0FEv3cAv9t0K+lz6puXi9P66d
oclTt6GIal7wU/zrNstreIdnAxmBdQ4UHAqlYA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ulxHuco8svuRnVpWNEdIcHbTfOj8KgtCP8YGNvcT4NundkYARf+vGkXZ/hmnHa/Xm/Qrh5NrA4e5
+SOsVzCiFgXAKz9usWx1WIdZywYmKvvnomdGZJhchdmYkk3GH6g9luB+pgNV/bK57/lvOLRqTNvK
8FLAn75A+FQgZR+4ks+4EXtgUB5XYq4LfkY2vYooaTBoC7Ref8q0k8do0AGYfcdSGgMJ77umpx86
uAqd7N7DEFBWF49CxMyuSkIJk5ZvGm6fCASNF2a7L+XyNTanQC0jILSDWVXOyaRyhPnqxgdbH2qo
Jjb1FWtSxI+d5795sgUwAJvcVbQWr8IiNVQqrA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7760)
`pragma protect data_block
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
vwlaNl5a0BE=
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
