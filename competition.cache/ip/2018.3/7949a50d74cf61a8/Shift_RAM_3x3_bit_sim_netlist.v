// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Nov 14 15:02:23 2019
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
(* C_DEPTH = "320" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
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
M2BG4n8oivHDZkIO3XPmk+Y17mTS+nJFcMtF6a1jC/IpdSTMxtVy+n6a79NfTDAMb7srD4icP6Ci
jmSVvBlKnzatGTjxsfEelWD7o1vKaG70FIr0xLkNd/bT3QEzHSUCr7EKaTEPGR/Mi2FFg89wZ7aw
CYFEmosE3VrsjeoRGUOlZr+Sj8fSPXqy0lYrag1vtHtIGp1GSdPKdVnpM54kcw8YWhm+PcZX1joW
aIyQ3qtjYmCnHgvJzqfFotLfzagMkjDvJbIRfY39Qsc6jbGSQ1uNC7GZc4vUrdIQtCwfLJTFqKa+
VA8qUoyYehPyZYRJAA0QX3SB4PulxP0NtOnjUw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UA1YZQ2Qhb5jZ/N56nbuKHj1b56k6TnlrOZCj3YNANrT43sfOdYAmNyhp6vaaYOp8N+DSXgNTjw5
nwcsTVAhxtKM666vGuQ0iIIr4jpn3xATyqQOP4anjJLa9jtb+IcaNQa25KAAisuMcO0LP4JBV4Iw
W52aOzHTwDHY28MPuKUzkJdC/p18O7XLr1oTEthziy63EvHHTvWCRJH5oLQVSd0c2GC5UFQfWUSE
pHUDSrBYqEHcStMABqhkyPBrfzAcda3RqbXm15+j6hdvbFx0+RYil06oIosh8OW5Mey3Ri+THZzK
E3rIejSnusJNVt8P20WT1NGKZGDb219Np+XScw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13472)
`pragma protect data_block
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
H548vmPSLTHllh3WtSOJKus/IIQ=
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
