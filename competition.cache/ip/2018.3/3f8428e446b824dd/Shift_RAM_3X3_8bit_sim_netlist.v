// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Oct 29 20:20:28 2019
// Host        : DESKTOP-P038UOU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Shift_RAM_3X3_8bit_sim_netlist.v
// Design      : Shift_RAM_3X3_8bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Shift_RAM_3X3_8bit,c_shift_ram_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (D,
    CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [7:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [7:0]Q;

  wire CE;
  wire CLK;
  wire [7:0]D;
  wire [7:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "00000000" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "8" *) 
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
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "00000000" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "8" *) 
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
  input [7:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [7:0]Q;

  wire CE;
  wire CLK;
  wire [7:0]D;
  wire [7:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "00000000" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "8" *) 
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
f4AZF0kr0NhcBWdEukG4Qb+3uU24S/pHNmrQ/9CqIXlvN/1OPBSR4Qf/QEvULnaja2EppApqQsZU
/GxZS5nNQiHvjWVJOAhCRRJ4y9eluapYM2JIXsRn0ghgUGMSG73mT0wEQsPPqYQZU/Tn5ykNmvSk
7naeWNvQx6Hy1qhv8K652Rsng+R0e/eS25sD66VdrOw9PXhCAL9xJQJSZr40UetvZy113boZB2tB
I2qXHlcVN5wlcEGsFKA5lz2FnCjRIyRyeTVaaf0qqj6IkY2iKyxSB0S0lUcU2NwuNTpq+Ss+f7lP
mNUdewAcJoruQvWXZtw03Zdyq2fFm7jpkbVZ9A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wfSwwdylMM/o29tA5s0pA8g2+ihUxBNCN39mIY4Zjg4dJpD3Z7PzWSsZiDaDR0MXLDLrUbra1NOh
ks68N5AXiGnKUmr19v6P+lawa2y81Pp/pptgWKhmJOF7rTqt2zleFLxDKCI4z0aFSwiy5O28CEgl
ZvzAfO8Z/l1lq/JellghYAgjiLfqd1SNm7hZ9tkTikcbNK24N+9d6HXH0vu4cqPmQpp1RgYbiA/3
F8bg81WPwMRvbmILEcBRfcYsPubGv1MO30AUBc4N09UuTKyZWlszB1Xj+fu+HxyrwiwxAsT434k+
F/21gq6yK1OGC0qUE3mAoLiWwJoeyJ85s8xZAQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 49472)
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
