// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Nov  9 16:13:39 2019
// Host        : DESKTOP-P038UOU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vga_rom_sim_netlist.v
// Design      : vga_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "vga_rom,blk_mem_gen_v8_4_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [12:0]addra;
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
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "13" *) 
  (* C_ADDRB_WIDTH = "13" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "3" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.570216 mW" *) 
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
  (* C_READ_DEPTH_A = "7100" *) 
  (* C_READ_DEPTH_B = "7100" *) 
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
  (* C_WRITE_DEPTH_A = "7100" *) 
  (* C_WRITE_DEPTH_B = "7100" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[12:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[12:0]),
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec
   (ena_array,
    addra);
  output [0:0]ena_array;
  input [2:0]addra;

  wire [2:0]addra;
  wire [0:0]ena_array;

  LUT3 #(
    .INIT(8'h08)) 
    \ENOUT_inferred__5/i_ 
       (.I0(addra[1]),
        .I1(addra[2]),
        .I2(addra[0]),
        .O(ena_array));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [15:0]douta;
  wire [6:6]ena_array;
  wire [8:0]ram_douta;
  wire ram_ena_n_0;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[1].ram.r_n_3 ;
  wire \ramloop[1].ram.r_n_4 ;
  wire \ramloop[1].ram.r_n_5 ;
  wire \ramloop[1].ram.r_n_6 ;
  wire \ramloop[1].ram.r_n_7 ;
  wire \ramloop[1].ram.r_n_8 ;
  wire \ramloop[1].ram.r_n_9 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_10 ;
  wire \ramloop[2].ram.r_n_11 ;
  wire \ramloop[2].ram.r_n_12 ;
  wire \ramloop[2].ram.r_n_13 ;
  wire \ramloop[2].ram.r_n_14 ;
  wire \ramloop[2].ram.r_n_15 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_9 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[3].ram.r_n_2 ;
  wire \ramloop[3].ram.r_n_3 ;
  wire \ramloop[3].ram.r_n_4 ;
  wire \ramloop[3].ram.r_n_5 ;
  wire \ramloop[3].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[12:10]),
        .ena_array(ena_array));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux \has_mux_a.A 
       (.DOADO({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 ,\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 ,\ramloop[2].ram.r_n_14 ,\ramloop[2].ram.r_n_15 }),
        .DOPADOP(\ramloop[1].ram.r_n_8 ),
        .addra(addra[12:10]),
        .clka(clka),
        .douta(douta),
        .\douta[15] ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 }),
        .\douta[15]_0 ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 }),
        .\douta[7] ({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .ram_douta(ram_douta));
  LUT1 #(
    .INIT(2'h1)) 
    ram_ena
       (.I0(addra[12]),
        .O(ram_ena_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (ram_ena_n_0),
        .addra(addra[11:0]),
        .clka(clka),
        .ram_douta(ram_douta));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .DOPADOP(\ramloop[1].ram.r_n_8 ),
        .addra(addra),
        .addra_11_sp_1(\ramloop[1].ram.r_n_9 ),
        .clka(clka));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.DOADO({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 ,\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 ,\ramloop[2].ram.r_n_14 ,\ramloop[2].ram.r_n_15 }),
        .addra(addra[9:0]),
        .clka(clka),
        .ena_array(ena_array));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (ram_ena_n_0),
        .addra(addra[11:0]),
        .clka(clka));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\ramloop[1].ram.r_n_9 ),
        .addra(addra[10:0]),
        .clka(clka));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux
   (douta,
    addra,
    clka,
    DOADO,
    ram_douta,
    \douta[7] ,
    DOPADOP,
    \douta[15] ,
    \douta[15]_0 );
  output [15:0]douta;
  input [2:0]addra;
  input clka;
  input [15:0]DOADO;
  input [8:0]ram_douta;
  input [7:0]\douta[7] ;
  input [0:0]DOPADOP;
  input [6:0]\douta[15] ;
  input [6:0]\douta[15]_0 ;

  wire [15:0]DOADO;
  wire [0:0]DOPADOP;
  wire [2:0]addra;
  wire clka;
  wire [15:0]douta;
  wire [6:0]\douta[15] ;
  wire [6:0]\douta[15]_0 ;
  wire [7:0]\douta[7] ;
  wire [8:0]ram_douta;
  wire [2:0]sel_pipe;
  wire [2:0]sel_pipe_d1;

  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[0]_INST_0 
       (.I0(DOADO[0]),
        .I1(ram_douta[0]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[7] [0]),
        .O(douta[0]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[10]_INST_0 
       (.I0(DOADO[10]),
        .I1(\douta[15] [1]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[15]_0 [1]),
        .O(douta[10]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[11]_INST_0 
       (.I0(DOADO[11]),
        .I1(\douta[15] [2]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[15]_0 [2]),
        .O(douta[11]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[12]_INST_0 
       (.I0(DOADO[12]),
        .I1(\douta[15] [3]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[15]_0 [3]),
        .O(douta[12]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[13]_INST_0 
       (.I0(DOADO[13]),
        .I1(\douta[15] [4]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[15]_0 [4]),
        .O(douta[13]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[14]_INST_0 
       (.I0(DOADO[14]),
        .I1(\douta[15] [5]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[15]_0 [5]),
        .O(douta[14]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[15]_INST_0 
       (.I0(DOADO[15]),
        .I1(\douta[15] [6]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[15]_0 [6]),
        .O(douta[15]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[1]_INST_0 
       (.I0(DOADO[1]),
        .I1(ram_douta[1]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[7] [1]),
        .O(douta[1]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[2]_INST_0 
       (.I0(DOADO[2]),
        .I1(ram_douta[2]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[7] [2]),
        .O(douta[2]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[3]_INST_0 
       (.I0(DOADO[3]),
        .I1(ram_douta[3]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[7] [3]),
        .O(douta[3]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[4]_INST_0 
       (.I0(DOADO[4]),
        .I1(ram_douta[4]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[7] [4]),
        .O(douta[4]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[5]_INST_0 
       (.I0(DOADO[5]),
        .I1(ram_douta[5]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[7] [5]),
        .O(douta[5]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[6]_INST_0 
       (.I0(DOADO[6]),
        .I1(ram_douta[6]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[7] [6]),
        .O(douta[6]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[7]_INST_0 
       (.I0(DOADO[7]),
        .I1(ram_douta[7]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[7] [7]),
        .O(douta[7]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[8]_INST_0 
       (.I0(DOADO[8]),
        .I1(ram_douta[8]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(DOPADOP),
        .O(douta[8]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[9]_INST_0 
       (.I0(DOADO[9]),
        .I1(\douta[15] [0]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[15]_0 [0]),
        .O(douta[9]));
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
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
   (ram_douta,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    addra);
  output [8:0]ram_douta;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input [11:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]ram_douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .addra(addra),
        .clka(clka),
        .ram_douta(ram_douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    DOPADOP,
    addra_11_sp_1,
    clka,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  output [0:0]DOPADOP;
  output addra_11_sp_1;
  input clka;
  input [12:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [0:0]DOPADOP;
  wire [12:0]addra;
  wire addra_11_sn_1;
  wire clka;

  assign addra_11_sp_1 = addra_11_sn_1;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .addra_11_sp_1(addra_11_sn_1),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1
   (DOADO,
    clka,
    ena_array,
    addra);
  output [15:0]DOADO;
  input clka;
  input [0:0]ena_array;
  input [9:0]addra;

  wire [15:0]DOADO;
  wire [9:0]addra;
  wire clka;
  wire [0:0]ena_array;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.DOADO(DOADO),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [11:0]addra;

  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    addra);
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input [10:0]addra;

  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [10:0]addra;
  wire clka;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init
   (ram_douta,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [8:0]ram_douta;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [11:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]ram_douta;
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
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hF7FFFFFFFFFFFFFFFFFFFFFFFD3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFFFF87FFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFBFFE0FFFFFFFFFFFFFFFFFFFC7FFE0FFFFFFFFFFFFFFFFFFF87FFF7FFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFBFFFB1FFFFFFFFFFFFFFFFFFFBFFFD1FFFFFFFFFFFFFFFF),
    .INITP_06(256'hFFFFFFFDFF47FFFFFFFFFFFFFFFFFFFFFFF47FFFFFFFFFFFFFFFFFFFFFFF67FF),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFD9FC8FFFFFFFFFFFFFFFFFFFF8DFEDFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFF07F33FFFFFFFFFFFFFFFFFFFF81FA1FFFFFFFFFFFFFFFFFFFFA5F93),
    .INITP_09(256'hF0FFFFFFFFFFFFFFFFFFFFF07EF7FFFFFFFFFFFFFFFFFFFF07F37FFFFFFFFFFF),
    .INITP_0A(256'hFFFFFFFFFFFF8F80FFFFFFFFFFFFFFFFFFFFF87E0FFFFFFFFFFFFFFFFFFFFF87),
    .INITP_0B(256'hFFFCFFFFFFFFFFFFFFFFFFFFFFFE07FFFFFFFFFFFFFFFFFFFFEFD41FFFFFFFFF),
    .INITP_0C(256'hFFFFFFFFFFFFFFCBFFFDFFFFFFFFFFFFFFFFFFFDFFF7FFFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'hFFFB47D03FFFFFFFFFFFFFFFFFFF82FEF0FFFFFFFFFFFFFFFFFFFC3FEF8FFFFF),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFEFC3A21FFFFFFFFFFFFFFFFFFF7D09CBFFFFFFFFFFFFFFFF),
    .INITP_0F(256'hFFFFF80F7E22FFFFFFFFFFFFFFFFFFFF00101FFFFFFFFFFFFFFFFFFEFFE6F4FF),
    .INIT_00(256'hFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBF9F9F9F9F),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDF),
    .INIT_02(256'hBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFDF),
    .INIT_03(256'hDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBF9F9F9F9F9F9F9FBFBF),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFFFFFDFDF),
    .INIT_05(256'hBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBF9F9F9FBFBFBFBFBFBFBFBF),
    .INIT_07(256'hFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_08(256'hDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hDFDFDFDFBFDFBFBFBFBFBFBFBFBFBFBFBF9F9F9FBFBFBFBFBFBFBFBFBFBFBFBF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFFFFFDFDFDFDFDFDFDF),
    .INIT_0B(256'hDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hDFDFBFBFBFBFBFBFBFBFBFBFBFBF9F9FBFBFBFBFBFBFBFBFDFDFDFBFDFDFDFDF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_0E(256'hDFDFDFDFDFDFFFDFDFDFDFDFDFFFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hBFBFBFBFDFBFBFBFBFBF9F9FBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDF),
    .INIT_10(256'hFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFBFBF),
    .INIT_11(256'hFFFFFFFFFFDFDFFFFFFF5C3B3C9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'hBFBFBFBFBF9F9F9FBFBFBFBFBFBFBFDFDFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_13(256'hFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFBFDFBFBFBFBF),
    .INIT_14(256'hFFDFFFFFFFFF36F57877DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_15(256'hBFBF9F9FBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_16(256'hFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFDFDFBFBFBFBFBFBFBFBF),
    .INIT_17(256'hFF9D315356927DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFDFDFDFFFFF),
    .INIT_19(256'hDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFBFDFDFBFBFBFBFBFBFBFBFBF9F),
    .INIT_1A(256'h73529DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hBFBFDFDFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFDFDFDFFFFFFF1BB032),
    .INIT_1C(256'hDFDFDFDFDFDFDFDFDFDFDFDFBFDFBFDFBFBFBFBFBFBFBFBFBFBF9F9FBFBFBFBF),
    .INIT_1D(256'hFFFFFFFFFFFFFFFFFFDFFFFFDFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF),
    .INIT_1E(256'hBFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFFFDFDFDFDFFFFF99F2D16F527CFF),
    .INIT_1F(256'hDFDFDFDFDFDFDFDFBFBFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF),
    .INIT_20(256'hFFFFFFFFFFFFFF7CFA5B3CDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDF),
    .INIT_21(256'hDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFDFDFFFFFFFFF37B04E6F725CFFFFFFFFFF),
    .INIT_22(256'hDFDFDFDFDFDFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDF),
    .INIT_23(256'hFFFFDE7898D957D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDF),
    .INIT_24(256'hDFDFDFDFDFFFDFDFDFDFDFDFDFFFFFFFFFB56F4E6F119DFFFFFFFFFFFFFFFFDF),
    .INIT_25(256'hDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDF),
    .INIT_26(256'h5715D0B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_27(256'hDFFFFFFFFFDFDFFFFFFFFFFFFF94ABCCCC2EBEFFFFFFFFFFFFFFFFFFFFFF1A57),
    .INIT_28(256'hBFBFBFBFBFBFBFBFBFBFBF9FBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBF),
    .INIT_2A(256'hFFDFDFFFFFFFFFFFFF1612125293BEFFFFFFFFFFFFFFFFFFFF5CB8D5D06E8FFF),
    .INIT_2B(256'hBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_2C(256'hFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBF),
    .INIT_2D(256'hFFFFFFDFFF15B47393B39DFFFFFFFFFFFFFFFFFFDE98F5320D0DB9FFDFFFFFFF),
    .INIT_2E(256'hBFBFBFBFBFBFBFBFBFDFBFBFBFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFDFDFFF),
    .INIT_2F(256'hFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFDFBFBFBFBF),
    .INIT_30(256'hFFB4B35252B37CFFFFFFFFFFFFFFFFFFD8B411CF4E32FFDFFFFFFFFFFFFFFFFF),
    .INIT_31(256'hBFBFBFBFBFDFBFBFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFDFDFDFFFFFFFFF),
    .INIT_32(256'hDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFBFBFBFBFBFBFBFBF),
    .INIT_33(256'h51935BFFDFFFFFFFFFDFFF9D97B32E2E6E9EFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDFFFFFFFFFFFFFDE935232),
    .INIT_35(256'hDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBF),
    .INIT_36(256'hFFFFFFFFFFDFFF1956B4F10D36FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_37(256'hDFDFDFDFDFDFDFDFDFDFFFFFFFFFDFDFDFDFDFFFFFFFFFFF9D3131521031D9FF),
    .INIT_38(256'hDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFDFBFDFDF),
    .INIT_39(256'hFFFF5BB7F411EF11FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDF),
    .INIT_3A(256'hDFDFDFDFDFDFFFDFDFFFDFDFDFFFDFFFFFDFDFFF7CAF8ED03152B8FFFFFFFFFF),
    .INIT_3B(256'hDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFDFBFDFBFDFDFDFDF),
    .INIT_3C(256'h52F0F0B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDF),
    .INIT_3D(256'hDFDFFFFFFFFFDFDFFFFFFFFFFFFFFFFF5CCC2C1030CF97FFFFFFFFFFFFBD9715),
    .INIT_3E(256'hDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_3F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_40(256'hDFDFDFDFDFFFFFFFFFFFFFFF5CF031CEEF31B8FFFFFFFFFFDFD87693F0CF11FF),
    .INIT_41(256'hDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_42(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFFFDFDFDFDFDFDFDFDF),
    .INIT_43(256'hFFFFFFFFFFFFFFFF1BEFAFCFCFEFFAFFFFFFFFFF3A15936F8ED077FFFFFFFFFF),
    .INIT_44(256'hBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDF),
    .INIT_45(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFDF),
    .INIT_46(256'hFFFFFFFFDACF8E8DAE0F7BFFDFFFFFFF7615D412CED0DEFFFFFFFFFFFFFFFFFF),
    .INIT_47(256'hBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFFFDFDFDFFFFFFFFFFF),
    .INIT_48(256'hFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBF),
    .INIT_49(256'h98AE8E8E6F2FBEFFFFFFFF3A14157251EF74FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4A(256'hBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFF),
    .INIT_4B(256'hFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBF),
    .INIT_4C(256'h8E71FFFFFFFFFE3571117030AF3BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4D(256'hDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFF37AE8EAE),
    .INIT_4E(256'hFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBF),
    .INIT_4F(256'hFFFF1892EF8EAEAEB4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_50(256'hDFDFDFDFDFDFDFDFDFFFDFFFDFDFDFFFFFDFDFFFFFFFFFFFF58E8EAECE93FFFF),
    .INIT_51(256'hDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDF),
    .INIT_52(256'hAD8DAEF09EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDF),
    .INIT_53(256'hDFDFDFDFDFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFF52AE6E8E8D30FFFFFFDE93EF),
    .INIT_54(256'hDFDFDFDFDFDFDFDFDFBFBFDFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDF),
    .INIT_55(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDF),
    .INIT_56(256'hDFDFDFDFDFDFDFFFFFFFFFFFFFFFFF7D318E8ECF10519CFFFF36CE8E8DADEFB9),
    .INIT_57(256'hDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_58(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDF),
    .INIT_59(256'hDFDFDFFFFFFFFFFFFFFFFF98529393D4D392969CF8328F0C4DAD16FFFFFFFFFF),
    .INIT_5A(256'hBFBFBFDFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFF),
    .INIT_5B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_5C(256'hFFFFFFFFFFFFFFF5923251B3D3B3F37697F0AE8E8E72FFFFFFFFFFFFFFFFFFFF),
    .INIT_5D(256'hBFBFBFBFBFBEBEBEBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDF),
    .INIT_5E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_5F(256'hFFFF9DF5B37251B3D3B4B4D4D4B3AE6D105CFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_60(256'hBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDFFFFFFFFF),
    .INIT_61(256'hFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBF),
    .INIT_62(256'hB3315172927393B3D3F4F49256FFFFDEBC7BBDFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_63(256'hBFBFBFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDFDFFFFFFFFFFFDAD3),
    .INIT_64(256'hFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBF),
    .INIT_65(256'h72727393D4B3D3F55CFFDDBC7B5AF8BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_66(256'hDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFDFDFDFFFFFFFFFFF5616D4EF5131),
    .INIT_67(256'hFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBEBEBFBFBFBFBF),
    .INIT_68(256'h93B3F4971ABDBC9B5AF855B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_69(256'hDFDFDFDFDFDFDFDFDFDFDFFFFFFFDFDFDFDFDFFFFF1A3436B7F0921130727252),
    .INIT_6A(256'hDFDFDFDFDFDFDFDFDFDFDFBFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFBFBF),
    .INIT_6B(256'h9B9B5A19F8D85557FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDF),
    .INIT_6C(256'hDFDFDFDFDFDFDFFFDFFFDFDFDFFFDFFFDF7776D8963510EF0F713131519393D8),
    .INIT_6D(256'hDFDFDFDFDFDFDFDFDFDFBFBFBFDFDFBEBEBEBEBEBFBFBFBFBFDFBFBFDFDFDFDF),
    .INIT_6E(256'hB675F47DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDF),
    .INIT_6F(256'hDFDFDFFFFFFFDFDFFFFFFFFF1AFA193A961955CEEF31311051319619F8D7D8D8),
    .INIT_70(256'hDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFBFDFDFDFDFDFDFDFDFDF),
    .INIT_71(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_72(256'hDFDFDFDFDFFFFF9DD89C7B7B187B96918DEFEF6D107696B272F49775B24DF5FF),
    .INIT_73(256'hBFBFBFBFBFBFBEBEBEBEBEBEBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFF),
    .INIT_74(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_75(256'hDFFFFFB9197B5B5B397CD89776D85C5C5BF9108E8DCE0FAEE8AFD8BDFFFFFFFF),
    .INIT_76(256'hBFBFBFBFBFBFBF9EBFBFBFBFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFFFFFFFDFDF),
    .INIT_77(256'hFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFDFBFBFBFBFBF),
    .INIT_78(256'h5A9B5B5B5A5A599B9C5B5CDAD99DFFD0ABEC088B361AD798FFFFFFFFFFFFFFFF),
    .INIT_79(256'hBF9E9F9FBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFFF7CF9),
    .INIT_7A(256'hFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFBFBFDFDFBFBFBEBFBF),
    .INIT_7B(256'hF89776D8D7763599BBBBBA7B4646D0F9F9B856F5FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7C(256'hBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFF7C3939391A1939),
    .INIT_7D(256'hFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFDFDFBFBFBFBFBFBFBF9F9F),
    .INIT_7E(256'h14D330B4D6D6F6B7C890F47535147298FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7F(256'hBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFFF3BB7B7B7B7775635F4B4B4D3),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],ram_douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],ram_douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    DOPADOP,
    addra_11_sp_1,
    clka,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  output [0:0]DOPADOP;
  output addra_11_sp_1;
  input clka;
  input [12:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [0:0]DOPADOP;
  wire [12:0]addra;
  wire addra_11_sn_1;
  wire clka;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  assign addra_11_sp_1 = addra_11_sn_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'hBFFFFFFFFFFFFFFFFFF03F7843FFFFFFFFFFFFFFFFFFBE12737FFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFEFCFBFC7FFFFFFFFFFFFFFFFFFFFE1C27FFFFFFFFFFFFFFFFFEFFFFA9),
    .INITP_02(256'hFC9FFFFFFFFFFFFFFFFFFEF99FCFFFFFFFFFFFFFFFFFFFCCF9FEC7FFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFE7F5F1BFFFFFFFFFFFFFFFFFFE7F5FDBFFFFFFFFFFFFFFFFFFE7FD),
    .INITP_04(256'h78C21FFFFFFFFFFFFFFFFFFFF7C406FFFFFFFFFFFFFFFFFFFE7C4403FFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFCFE9FE7FFFFFFFFFFFFFFFFFFFF70D61FFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hFBFFDC3FFFFFFFFFFFFFFFFFFF9FF000FFFFFFFFFFFFFFFFFFF9FE3B0FFFFFFF),
    .INITP_07(256'hFFFFFFFFFFFFFFC7DFFFFFFFFFFFFFFFFFFFFFFF7FFFEFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'hDFDFDFDFDFDFDFDFDFDFBFBFBFBFDFBFBFBFBFBFDFBFBFBFBF9F9F9FBFBFBFBF),
    .INIT_01(256'h92131273D1901030F052107DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFDFDF),
    .INIT_02(256'hDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFFFB414F4F5D4B331F00C6DCF51F0F0EC90),
    .INIT_03(256'hDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBEBEBEBEBEBEBE9F9FBFBFBFBFBFBFBFBF),
    .INIT_04(256'hB2CB0C6EF0D0F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDF),
    .INIT_05(256'hDFDFDFDFDFDFDFDFDFDFFF9DAFAFAFF08E4CCBAB094928EB0CCB6A6B8D0E8FD2),
    .INIT_06(256'hDFDFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBF9E9F9FBFBFBFBFBFBFBFBFBFBFBFDF),
    .INIT_07(256'hABAF7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_08(256'hDFDFDFDFDFDFFF79CC4A4A8A6969492929498A8BCC6ACCEDCD0DCC6FEE8FB0CC),
    .INIT_09(256'hDFBFBFBFBFBFBFBEBEBEBEBEBEBEBEBEBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_0B(256'hDFDFFF13CC09094949698ACCCBABCB2D4D6EB07373116FAFD02ECC0D2C53FFFF),
    .INIT_0C(256'hBFBFBFBFBFBF9E9E9E9E9EBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDF),
    .INIT_0D(256'hFFFFFFFFFFDFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFDFBFBFBFBF),
    .INIT_0E(256'hEC4A094969EA2DE96B1272305014D4D4B3B3526AAACB0C2DB09DFFFFFFFFFFFF),
    .INIT_0F(256'hBFBEBEBEBE9E9E9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFFF9E6F),
    .INIT_10(256'hFFDFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBEBE),
    .INIT_11(256'h6A6929ED6B6FEF3072F4D3F47272118F29CB4E6E37FFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'h9E9E9E9E9FBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFFFFFD96ECD29E7C7),
    .INIT_13(256'hDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFBFBFBFBFBFBFBFBFBFBF9EBEBEBE),
    .INIT_14(256'hCC4E8E7293F593B39352B0B0ED4ACC31FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF),
    .INIT_15(256'h9F9FBFBFBFBFBFBFBFBFDFBFBFBFBFDFDFDFDFDFDFFFD62DCC2A6AABEC4D4E8B),
    .INIT_16(256'hDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBF9EBEBEBE9E9E9E9E),
    .INIT_17(256'h71D3939393328F2EAC0D4E1BFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDF),
    .INIT_18(256'hBEBFBFBFBFBFBFDFBFBFBFDFDFDFDFDFFFFF740D0ECC8A8AECCC8BEDEDECAE92),
    .INIT_19(256'hDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBEBFBFBF9EBEBEBEBE9E9E9E9F9FBFBF),
    .INIT_1A(256'h72118FECCC0D94FFFFFFFFFFFFFFFFFFFFDFFFDFDFDFDFDFDFDFFFDFFFDFDFDF),
    .INIT_1B(256'hBFBFBFDFBFBFBFBFBFDFDFDFDFFF740D6FAC8A8AABCCCCCC2EEB8E3031B37292),
    .INIT_1C(256'hDFBFBFDFBFBFBFBFBFBFBFBFBFBF9E9F9E9F9E9E9E9E9E9E9F9F9FBFBFBFBFBF),
    .INIT_1D(256'hED707EFFFFFFDFDFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_1E(256'hBFBFBFBFBFDFDFDFDFFF132E4E8B8BAC8B6BCCED2DCB6E1010721131D08F6FED),
    .INIT_1F(256'hBFBFBFBFBFBFBEBEBEBEBEBEBEBE9E9E9E9E9E9E9F9F9F9FBEBFBF9FBFBFBFBF),
    .INIT_20(256'hFFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBF),
    .INIT_21(256'hBFDFDFDFFFDFED4E4E8BABCCCC8B0D6E2C898EF0D011B0AF4E2E2D0E4F58FFFF),
    .INIT_22(256'hBFBFBFBFBF9F9F9F9F9E9E9E9E9E9E9E9F9FBF9FBEBFBFBFBFBFBFBFDFBFBFBF),
    .INIT_23(256'hDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBF),
    .INIT_24(256'hBE738AEC4E4A8ACCCCED4E4D2C48CF8E8E6F2E6E2ECCEC4E95FFDFDFDFDFDFDF),
    .INIT_25(256'hBEBEBEBEBE9E9E9E9E9E9E9E9F9F9F9F9EBFBF9F9FBFBFBFBFBFDFBFBFBFBFDF),
    .INIT_26(256'hFFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBEBEBE),
    .INIT_27(256'h0EABABCBEC2D2D6E8AAAAE0C4E2DED0D2D0D2E12DFFFDFDFDFDFDFFFDFDFDFFF),
    .INIT_28(256'h9E9E9E9E9E9E9E9E9F9F9F9F9E9E9FBFBFBFBFBFBFBFBFBFBFBFDFDFD5CB4ACC),
    .INIT_29(256'hDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFDFBFBFBFBFBFBFBFBFBFBF9E9E9E9E9E),
    .INIT_2A(256'h0D2D2D2C29EC2DAB0CECCC2D2D2EF1BEFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_2B(256'h9E9E9E9E9F9F9F9F9E9E9F9FBFBFBFBFBFBFBFBFDFDFFFF5CB292AAC0DAB8ACC),
    .INIT_2C(256'hDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBF9EBEBEBEBE9E9E9E9E9E),
    .INIT_2D(256'h8AECEDACCCACED4E4E129EFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_2E(256'h7E9F9F9F9F9F9EBEBFBFBFBFBFBFBFBFDFDF784E6A090A8BABABEC0DED0C2C8A),
    .INIT_2F(256'hDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBE9EBEBEBE9E9E9E9E9E9E9E9E9E),
    .INIT_30(256'h2D4D4E7074DFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_31(256'h9F9F9E9E9E9EBFBFBFBFBFBFDFF96EAB6A4A4B8B6A6ACC0C0D0DCBCBEC0DEDEC),
    .INIT_32(256'hBFBFBFBFBFBFBFBFBFBFBFBF9E9E9E9E9E9F9E9E9E9E9E9E9E9E7E7E7E9F9F9F),
    .INIT_33(256'hFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBF),
    .INIT_34(256'h9FBEBFBFBF9FDFDF5DD00DAB4A6AAB6A49ABCBEC0C0D2D0D0D2D0D2D2E4F6F58),
    .INIT_35(256'hBFBFBFBEBFBEBEBEBEBEBEBEBE9E9E9E9E9E9E9E9E9E7E9E7F7F9F9F9F9F9F9F),
    .INIT_36(256'hDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFBFBF),
    .INIT_37(256'hBFBFBFBE532DCC6A296A6B2949698AABABEC0CECECEC0D2D2DB05CFFDFDFDFDF),
    .INIT_38(256'hBFBFBFBFBFBF9F9E9E9E9E9E9E9E9E9E7E7E7E7E7E7E7E9F9F9F9F9F9F9E9EBF),
    .INIT_39(256'hDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFBFDFBFBFBFBFBFBFBFBFBFBF),
    .INIT_3A(256'h6EEB6A09092A2929294A8A6A8BABCBECCB8BCB0C53BFFFDFDFDFDFDFDFDFDFDF),
    .INIT_3B(256'hBEBEBE9E9E9E9E9E9E9E9E9E9E7E7E7E7E7F7F9F9F9F9F9F9F9E9E9E9EBFBFD6),
    .INIT_3C(256'hDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFDFDFDFDFBFBEBFBFBFBEBE),
    .INIT_3D(256'h2929E808096A8A6A8A8A8BAB8B69AAD5FFFFDFDFFFDFDFDFFFDFDFDFDFDFDFDF),
    .INIT_3E(256'h9E9E9E9E9E9E7E7E7E7E7E7E7E7E7E7E9E9F9F9F9E9EBF9EBFBF166E0C8A2909),
    .INIT_3F(256'hDFDFDFDFBFBFBFBFBFBFDFDFBFBFBFBFBFBFBFBFBFBFBFBF9F9F9E9EBFBE9E9E),
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
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra[10:0],1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(addra_11_sn_1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1 
       (.I0(addra[11]),
        .I1(addra[12]),
        .O(addra_11_sn_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1
   (DOADO,
    clka,
    ena_array,
    addra);
  output [15:0]DOADO;
  input clka;
  input [0:0]ena_array;
  input [9:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_32 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33 ;
  wire [15:0]DOADO;
  wire [9:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
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
    .INIT_00(256'hF7DFF7DFF7DFF7DFF7DFF7BFFFDFFFDFFFDFFFDFF7DFF7DFF7DFF7DFFFDFFFDF),
    .INIT_01(256'h8B298B29938A938A9BAB9B8B9BABA3CB93ECC5F5FFDFFFFFF7DEF7DFF7BFF7DF),
    .INIT_02(256'hEF9EEF9EEF9EEF9FF7DFDE58BC6EAC0BA38A9349932993299B4A8AE88AE89329),
    .INIT_03(256'hEF9EEF9EEF9EEF7EEF7EEF7EEF7EEF7EEF7EEF7EEF7EEF7FEF7EEF7EEF9FEF9F),
    .INIT_04(256'hF7BFF7BEF7BFF79EF7BEF7BEF7BEF7BEF79FF79EF79EF79EEF9EEF9EEF9EEF9E),
    .INIT_05(256'hF7DFF7DFF7DFF7DFF7DFF7DFF7DFF7BFF7BFF7BFF7DFF7DFF7DFF7BFF7BFF7BF),
    .INIT_06(256'hF7DFF7DFF7DFF7DFF7DFF7DFF7DFF7DFF7DFF7DFF7DFF7DFF7DFF7DFF7DFF7DF),
    .INIT_07(256'h938A9B8A9BAB9BEBCE17FFFFF7DFF7DFF7DFF7DFF7DFF7DFF7DFF7DFF7DFF7DF),
    .INIT_08(256'hE6DABC8FAC0CA36A9349932993299B4A93498B088AE893498B498B49936A938A),
    .INIT_09(256'hEF7EEF7EEF7EEF7EEF7EEF7EEF7EEF7EEF9EEF7EEF7EEF9EEF9EEF9EEF9EF7BF),
    .INIT_0A(256'hF79EF79EF79EF7BEF79EF79EF79EF79EEF9EEF9EEF9EEF9EEF9EEF7EEF7EEF7E),
    .INIT_0B(256'hF7DFF7BFF7DFF7BFF7BFF7BFF7BFF7BFF7DFF7BFF7BFF7BFF7BFF7BFF79EF79E),
    .INIT_0C(256'hF7DFF7BFF7DFF7BFF7DFF7BFF7DFF7BFF7BFF7BFF7BFF7DFF7DFF7BFF7DFF7BF),
    .INIT_0D(256'hF7FFF7DFF7BFF7DFF7DFF7DFF7DFF7DFF7DFF7DFF7DFF7BFF7DFF7BFF7DFF7BF),
    .INIT_0E(256'h930993299B4A93298AE882E88B298B498B498B4A936A938A936A938AA3CCBD94),
    .INIT_0F(256'hEF7EEF7EEF7EEF7FEF7EEF9EEF9EEF7EEF9EEF9EEFBFEF3CBCD0B42CA3AA9B49),
    .INIT_10(256'hF79EF79EF79EF79EEF9EEF9EEF9EEF9EEF7EEF7EEF7EEF7EEF7EEF7EEF5DEF7E),
    .INIT_11(256'hF7BFF7BFF7BFF7BFF7BFF7BFF7BFF7BFF7BFF7BFF79EF79EF79EF79EF79EF7BE),
    .INIT_12(256'hF7DFF7DFF7DFF7DFF7DFF7BFF7DFF7DFF7BFF7DFF7DFF7BFF7BFF7BFF7BFF7BF),
    .INIT_13(256'hF7DFF7DFF7DFF7DFF7DFF7DFF7DFF7DFF7DFF7DFF7DFF7DFF7DFF7DFF7DFF7DF),
    .INIT_14(256'h8AA78AE88B0983098B498B49936A936A93899BEBB4D1EF9EF7DFEFDFF7BFF7DF),
    .INIT_15(256'hEF7EEF7EEF7EEF9EEF7EEF9FEF7DBD32BC2DABEC9B6A9B499329934993498308),
    .INIT_16(256'hF7DFF7DFF7DFF7DFF7BFF7DFF7BFF7BFF7BFF7BFF7BFF7BEE75DEF7EEF7EEF7E),
    .INIT_17(256'hFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFDFF7DFF7DFF7DF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'h938A938A938A9B8A9C0CAC6FDF1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hF7DFF79ECD74C46DB40BA3AB9B6A9B499B8A9B69930882E78AE88B288B299349),
    .INIT_1C(256'hBDB7BDD7B5B7B5B7B5B6B5B6B5B6B5B6F7BFF7BFEFBFF7BFF7BFF7DFF7DFF7DF),
    .INIT_1D(256'hBDD7BDD7BDD7BDD7BDD7BDD7BDD7BDD7BDD7BDD7BDB7BDD7BDD7BDD7BDB7BDB7),
    .INIT_1E(256'hBDF8BDF8BDF8BDF8BDD8BDF8BDF8BDF8BDF8BDF8BDF8BDD8BDF8BDD8BDD8BDD8),
    .INIT_1F(256'hBDF8BDF8BDF8BDF8BDF8BDF8BDF8BDF8BDF8BDF8BDF8BDF8BDF8BDF8BDF8BDF8),
    .INIT_20(256'h832A8C70BE18BDF8BDF8BDF8BDF8BDF8BDF8BDF8BDF8BDF8BDF8BDF8BDF8BDF8),
    .INIT_21(256'h7AE97AC87AA87AA872886A6762266226624662676A676A676A8872A972A872C8),
    .INIT_22(256'h0000000000000000B597B5B7B5B7B5B7B5B7B5B7B5B7B5B7B5969C708B4B8B2A),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h4A49632C5AAB42298430738E39C7630C000000008410738E8C51843000000000),
    .INIT_2A(256'h5ACB52AB39C74A49422939E89CD35AEB52AB52AA7BCF39C7632D3186000018C3),
    .INIT_2B(256'h5ACB0000000039E85AEB4228420839C721254A294208318673AE4A6A4A6A18A3),
    .INIT_2C(256'h00000000000000007BF05AEB4A6A528A7BF031869492949242297BCF4208630C),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h39E7002021044A69002000204A6910A273AE7BCF000000000000000000000000),
    .INIT_30(256'h296531866B4D39C74A693186528939C7630C210400001082294539C742282945),
    .INIT_31(256'h42082945420839C729653186420829655ACB2124318639C739E739C74208528A),
    .INIT_32(256'h39C74A49294439E72124420821044A49296529654A69318639E70000000031A6),
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
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(DOADO),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_32 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ena_array),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [11:0]addra;

  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 ;
  wire [11:0]addra;
  wire clka;
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
    .INIT_00(256'h7B7B7B7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_01(256'h7F7B7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_02(256'h7777777B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_03(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B77777777),
    .INIT_04(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7F7F),
    .INIT_05(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7F7F7F7F),
    .INIT_06(256'h7B7B7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7777777777777777),
    .INIT_07(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B),
    .INIT_08(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_09(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B77777777777777777B7B7B7B),
    .INIT_0A(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B),
    .INIT_0B(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_0C(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B77777777777777777B777B7B7B7B7B7B),
    .INIT_0D(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7F7F7F7B7B7B7B),
    .INIT_0E(256'h7B7B7B7B7B7B7B7B7B7B7B7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_0F(256'h7B7B7B7B7B7B7B7B7B7B7B7B777777777777777B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_10(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7F7B7B7B7B7B),
    .INIT_11(256'h7B7B7B7B7B7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_12(256'h7B7B7B7B7B7B7B7B77777777777777777B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_13(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B),
    .INIT_14(256'h7B7F7F7F7F7F7B7E7F7B7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_15(256'h7B7B7B7B777777777777777B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_16(256'h7F7F7F7F7F7F7F7F7F7F7F7B7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_17(256'h7B7F6E767B767F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_18(256'h77777777777777777B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7F7F7F7F),
    .INIT_19(256'h7F7F7F7F7F7F7F7F7B7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_1A(256'h76767B7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_1B(256'h77777B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7F7F7F7F7F7B6A72),
    .INIT_1C(256'h7F7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B77777777),
    .INIT_1D(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_1E(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7F7F7F7F7B776A6A666E7B7F),
    .INIT_1F(256'h7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7777777777777B7B),
    .INIT_20(256'h7F7F7F7F7F7F7B7F7F7F7F7F7B7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_21(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7F7F7F7F7F736A66666E7B7F7F7F7F7F),
    .INIT_22(256'h7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7777777777777B7B7B7B7B7B),
    .INIT_23(256'h7B7F7F7F7F7F7F7B7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_24(256'h7B7B7B7B7B7B7B7B7B7F7F7F7F7F7F7F7F6E6662626A7F7F7F7F7F7F7F7F7F7F),
    .INIT_25(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B77777777777B7B7B7B7B7B7B7B7B7B7B),
    .INIT_26(256'h7F776E737F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B),
    .INIT_27(256'h7B7B7B7B7B7F7F7F7F7F7F7F7F6A5D59595E7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_28(256'h7B7B7B7B7B7B7B7B7B7B7B7B77777777777B777B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_29(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7B),
    .INIT_2A(256'h7F7F7F7F7F7F7F7F7F6F6E6A6A6E7F7F7F7F7F7F7F7F7F7F7F7F7F7A6A66627F),
    .INIT_2B(256'h7B7B7B7B7B7B7B7B77777B777B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_2C(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_2D(256'h7F7F7F7F7F73726E6E6E7F7F7F7F7F7F7F7F7F7F7F7F7A6E5E5E737F7F7F7F7F),
    .INIT_2E(256'h7B7B7B7B77777777777B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7F7F),
    .INIT_2F(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B),
    .INIT_30(256'h7F726E6A6A6E7B7F7F7F7F7F7F7F7F7F7B766E6666627F7F7F7F7F7F7F7F7F7F),
    .INIT_31(256'h77777777777B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7F7F7F7F7F7F),
    .INIT_32(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_33(256'h6A6A7B7F7F7F7F7F7F7F7F7F7B72625E5A7B7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_34(256'h77777B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7F7F7F7F7F7F7F7F7F7B6E6E66),
    .INIT_35(256'h7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B77777777),
    .INIT_36(256'h7F7F7F7F7F7F7F7F7B6E66566B7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_37(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7F7F7F7F7F7F7F7F7F7B6A6A6A666A777F),
    .INIT_38(256'h7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B7B7B777777777B7B777B),
    .INIT_39(256'h7F7F7F7B766A625E7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_3A(256'h7B7B7B7B7B7B7B7B7B7B7F7F7F7F7F7F7F7F7F7F776662626A6E737F7F7F7F7F),
    .INIT_3B(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B777777777B7B7B7B7B7B7B7B),
    .INIT_3C(256'h6A625E6F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B),
    .INIT_3D(256'h7B7B7B7B7B7B7F7F7F7F7F7F7F7F7F7F77595A666A66737F7F7F7F7B7F7F7F77),
    .INIT_3E(256'h7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B7B777777777B777B7B7B7B7B7B7B7B7B7B),
    .INIT_3F(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_40(256'h7F7F7F7F7F7F7F7F7F7F7F7F77666A66666E777F7F7F7F7B7F7F7B6E625E627F),
    .INIT_41(256'h7B7B7B7B7B7B7B7B7B7B7B7B7777777B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_42(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B),
    .INIT_43(256'h7F7F7F7F7F7F7F7F77626266666A7B7F7F7F7F7F7B776E625E626F7F7F7F7F7F),
    .INIT_44(256'h7B7B7B7B7B7B7B7B77777777777B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7F7F7F),
    .INIT_45(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B),
    .INIT_46(256'h7F7F7F7F7366626666667B7F7F7F7F7F7B736E665E5E7F7F7F7F7F7F7F7F7F7F),
    .INIT_47(256'h7B7B7B7B777777777B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7F7F7F7F7F7F7F),
    .INIT_48(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B),
    .INIT_49(256'h7362666666667F7F7F7F7F7B77776E6A66667F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_4A(256'h7777777B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_4B(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7B7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_4C(256'h666A7F7F7F7F7F7772726E6A5E777F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_4D(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7F7F7F7F7F7F7F7F7F7F7F6F666266),
    .INIT_4E(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B7B7B77777777),
    .INIT_4F(256'h7F7F7B6E6A666666667F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_50(256'h7B7B7B7B7B7B7B7B7B7B7B7B7F7F7F7F7F7F7F7F7F7F7F7F6E62626266727F7F),
    .INIT_51(256'h7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7777777B7B7B7B7B),
    .INIT_52(256'h666662667F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_53(256'h7B7B7B7B7B7B7B7B7F7F7F7F7F7F7F7F7F7F7F7F6A626262666E7F7F7F7F726A),
    .INIT_54(256'h7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B7B7777777B7777777B7B7B7B7B),
    .INIT_55(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_56(256'h7B7B7B7B7F7F7F7F7F7F7F7F7F7F7F7B6A6262666A6E7F7B7F73666662666673),
    .INIT_57(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7777777B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_58(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7B),
    .INIT_59(256'h7F7F7F7F7F7F7F7F7F7F7F776A6A6A6E6E767F7F7F6E6262666A6B7F7F7F7F7F),
    .INIT_5A(256'h7B7B7B7B7B7B7B7B7B7B7B7B777777777B777B7B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_5B(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_5C(256'h7F7F7F7F7F7F7F6E6E6A6E727672767F7B6A6666666A7F7F7F7F7F7F7F7F7F7F),
    .INIT_5D(256'h7B7B7B7B7B7B7B7B77777B777B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7F7F7F),
    .INIT_5E(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_5F(256'h7F7F7B726E6E6E7276767272727266666A7B7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_60(256'h7B7B7B7B7B7B77777B777B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7F7F7F7F7F7F7F),
    .INIT_61(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B),
    .INIT_62(256'h726E6E727272727272767672737F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_63(256'h7B77777B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7F7F7F7F7F7F7F7F7F7B72),
    .INIT_64(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_65(256'h726E6E6E727272767B7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_66(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7F7F7F7F7F7F7F7377726A6E6E),
    .INIT_67(256'h7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B777B7777),
    .INIT_68(256'h6E72727B7B7F7F7F7F7F7B777F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_69(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7F7F7F7F7F7F7777777B6A726A6E6E726E),
    .INIT_6A(256'h7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B777B77777B7B7B7B),
    .INIT_6B(256'h7F7F7F7F7F7B776F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_6C(256'h7B7B7B7B7B7B7B7B7B7B7F7F7F7F7F7B7B777B7B7B736A6E6A6E6E6A6E726E7F),
    .INIT_6D(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7777777777777B7B7B7B7B7B7B),
    .INIT_6E(256'h7B776E7B7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B),
    .INIT_6F(256'h7B7B7B7B7B7B7F7F7F7F7F7F777F7F7F7B7F77666A6A6A6A6E6A7B7F7F7F7F7F),
    .INIT_70(256'h7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B77777777777B7B7B7B7B7B7B7B7B7B7B),
    .INIT_71(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_72(256'h7B7B7F7F7F7F7F7B7B7F7F7F7B7F776E62666A626A7B7F7672767B776E5E667F),
    .INIT_73(256'h7B7B7B7B7B7B7B7B7B7B7B7B777777777B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_74(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B),
    .INIT_75(256'h7F7B7F7B7F7F7F7F7F7F777773777F7F7F7B6E6E66666666495E7B7F7F7F7F7F),
    .INIT_76(256'h7B7B7B7B7B7B7B7B7777777777777B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7F),
    .INIT_77(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B),
    .INIT_78(256'h7F7F7F7F7F7F7F7F7F7F7F7B7B7F7F62595D4D4D737F7F777F7F7F7F7F7F7F7F),
    .INIT_79(256'h7B7B7B7B7777777777777B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7F7B7F7B7F),
    .INIT_7A(256'h7F7F7F7F7F7F7F7F7F7F7F7F7B7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_7B(256'h7F7B7B7F7F7B777B7F7F7F7F4941627B7B77776A7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_7C(256'h7777777777777B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7F7F7F7F7F7F),
    .INIT_7D(256'h7F7F7F7F7F7F7F7F7B7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_7E(256'h73726A72727A7A7F49626E7777736A6F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_7F(256'h77777B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7B7F7F7F7B7F7B7B777272726E),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 }),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ,
    addra);
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ;
  input [10:0]addra;

  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_8 ;
  wire [10:0]addra;
  wire clka;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
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
    .INIT_00(256'h7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B77777777),
    .INIT_01(256'h666E6E6E66666A6A6666627B7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_02(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F6E737272726E66625A5E626666665D62),
    .INIT_03(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7777777777777B7B),
    .INIT_04(256'h66595E62625E667F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B),
    .INIT_05(256'h7B7B7B7B7B7B7B7B7B7B7B7B626262665E5A555151514D5556555551595E666A),
    .INIT_06(256'h7F7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B777777777777777B7B7B7B7B),
    .INIT_07(256'h515E7B7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_08(256'h7B7B7B7B7B7B7F6F554D4D4D4D4D4D494D4D4D5151515155595E5D665D666255),
    .INIT_09(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B777777777777777B7B7B7B7B7B7B7B7B),
    .INIT_0A(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_0B(256'h7B7B7F5E51494949494D4D51514D515A5A5A626E6E6A6266665E55565A5E7F7F),
    .INIT_0C(256'h7B7B7B7B7B7B7B7B7B7B7B7B777777777777777B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_0D(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B),
    .INIT_0E(256'h4D4949494D515645516A6A666A7372726E6E6E5155555A5A5A7B7F7F7F7F7F7F),
    .INIT_0F(256'h7B77777B7B7B777B7777777777777B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B5A),
    .INIT_10(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_11(256'h49494555515E666A6E6E6E766E6E6A624D555A5E6B7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_12(256'h7B7B7B7B7777777777777B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B6F5651454545),
    .INIT_13(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B77777B),
    .INIT_14(256'h555A5E6E6E6E6A726E6E66625D55555E7F7B7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_15(256'h7777777777777B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7F66564D454D4D4D565649),
    .INIT_16(256'h7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B77777B7B7B7B7B),
    .INIT_17(256'h6E6E6E6E6E6A6262595A5A777F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_18(256'h77777B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F5E52524D4949514D4D595155626E),
    .INIT_19(256'h7B7B7B7B7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B77777B7B77777B77777777),
    .INIT_1A(256'h6A6662595556627F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7F7B7B7B),
    .INIT_1B(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7F5E52564D49494D51515152515E666A6E6A6E),
    .INIT_1C(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7777777777777B7B),
    .INIT_1D(256'h595E7B7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_1E(256'h7B7B7B7B7B7B7B7B7B7F5A52564949494D4D515156515E66666A666A66625E59),
    .INIT_1F(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B777777777777777777777777777B7B7B7B),
    .INIT_20(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_21(256'h7B7B7B7B7B7F4D565649494D4D4D525656515E66626662665E5A5A5A566B7F7F),
    .INIT_22(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7777777777777777777B7B7B7B7B7B7B),
    .INIT_23(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B),
    .INIT_24(256'h7B664D4D5649494D4D515652564D625E5E625E5E5E55555A627F7F7F7F7F7F7F),
    .INIT_25(256'h7B7B7B7B7B77777777777777777777777777777777777B7B7B7B7B7B7B7B7B7B),
    .INIT_26(256'h7F7F7F7F7B7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_27(256'h52494D4D4D52525651515E5A5E5E595A565A5A5E7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_28(256'h7B7B7B7B7B77777777777777777777777777777B7B7B7B7B7B7B777B6655494D),
    .INIT_29(256'h7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_2A(256'h525252524D595A555A59595A5A5A5A7F7B7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_2B(256'h7777777777777777777777777777777B7B7B7B7B7B7B7B6E5149494D524D494D),
    .INIT_2C(256'h7F7F7F7F7F7F7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B777B7B7B7B),
    .INIT_2D(256'h515555555555555A5A5E7B7F7F7F7F7F7F7F7F7F7B7F7F7B7B7B7B7F7F7F7F7F),
    .INIT_2E(256'h77777777777777777B7777777B7B7B7B777B6F5E4D49454D4D4D4D5251525651),
    .INIT_2F(256'h7F7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7777777777),
    .INIT_30(256'h565A5A565E7F7B7F7B7B7B7B7B7B7B7B7F7B7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_31(256'h7777777777777777777B7B7B7B775E554949494D494951525256515155565555),
    .INIT_32(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B77777B777777777777),
    .INIT_33(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B),
    .INIT_34(256'h77777777777B777B77625651494D4D4D494D51515256565656565656565E566B),
    .INIT_35(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B777777777777777777777777777777777777),
    .INIT_36(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7F7B7B7B7B7B7B7B7B7B),
    .INIT_37(256'h77777B7B625A514D494D4D4949494D4D4D515251515556565A5A777F7B7B7B7B),
    .INIT_38(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B77777777777777777777777777777777),
    .INIT_39(256'h7F7F7B7B7B7B7F7F7F7F7F7F7F7F7F7F7F7B7B7B7B7F7B7B7B7B7B7B7B7B7B7B),
    .INIT_3A(256'h5E554D454949494945494949494D4D51514D5156627B7F7B7F7B7B7B7B7F7F7F),
    .INIT_3B(256'h77777B7777777777777777777777777777777777777777777777777777777B66),
    .INIT_3C(256'h7B7B7B7B7B7B7B7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_3D(256'h49494545454949494949494D4D4D4D627F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_3E(256'h7B7B7B77777B777777777777777777777777777777777777777B6B5A56514945),
    .INIT_3F(256'h7F7F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B),
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
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_8 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ),
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [15:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* C_ADDRA_WIDTH = "13" *) (* C_ADDRB_WIDTH = "13" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "3" *) 
(* C_COUNT_36K_BRAM = "2" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.570216 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "vga_rom.mem" *) 
(* C_INIT_FILE_NAME = "vga_rom.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "7100" *) (* C_READ_DEPTH_B = "7100" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "16" *) (* C_READ_WIDTH_B = "16" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "7100" *) 
(* C_WRITE_DEPTH_B = "7100" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "16" *) (* C_WRITE_WIDTH_B = "16" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2
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
  input [12:0]addra;
  input [15:0]dina;
  output [15:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [12:0]addrb;
  input [15:0]dinb;
  output [15:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [12:0]rdaddrecc;
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
  output [12:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [12:0]addra;
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2_synth
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [15:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule
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
