// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Nov  3 21:36:31 2019
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
  (* c_depth = "200" *) 
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
(* C_DEPTH = "200" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
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
  (* c_depth = "200" *) 
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
gIKx4dovU0rAYd3gD/RNRsqjEGpy2OEETOdlfBPK/YCLOojWfbGURr41fsN7ZSF2455U80c/CUD5
sEqoC9yGEdiQHRB1UjUxXIsa2dl5myij62pLqZVeV8Tz3hol0sdkiJrveAdS+S3OrzJ3kM3MW7Cm
1NG1SSwAGLmZnzfDn2VKL0BiylF45QPbxqwvsh8V40eEdFfVmuACQNH9Kv/xtid8w7rxk9M913q+
agkzaRV7RUK7FCDqkvXdZX62Oui/QxXwhcTW6ghCknvMDhPj1nozXhvmo6p3/XCdaSwjrYMg1W2S
QOH9u3GRwVHkkShjhHpIaD7QsG9BUNvuTjmR+Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IvPmAkVcds9EaqD1kU31NgvZRKnMad0/dKH3aaOplomckPwJfJRNXPyMXSuLbWRbuRGROoEspP5Z
dgUSTBU+Jj+v/SsPifIr0HMWy3E4hfMsXqieF/qRe7+lsUOxDHYmnBtJGQ3ayvvq4dOlW5cXRBmf
VX1Ngf01MigeNBJ6FUSA37QrWoyJ+m0ciytpcjYmCvTAYj/IzYPf773qirkLx+LftHFdBQO6nGxz
IGL8UksSpfbVcsiAD4LFllfMpLj+gPThxjz/q4mEF831KyxLqazYjXzXpdwdVaZVSdO9BzK9l8l6
RqfnBT+Y2UuE7k5He578YBZWAfak0h2CJIPdVw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10576)
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
