// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Oct 28 10:26:41 2026
// Host        : R02280 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/SoCD/SoC_Dice_Plain/basys3_top.gen/sources_1/bd/soc_top/ip/soc_top_blk_mem_gen_0_0/soc_top_blk_mem_gen_0_0_sim_netlist.v
// Design      : soc_top_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "soc_top_blk_mem_gen_0_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module soc_top_blk_mem_gen_0_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [31:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire rsta;
  wire rsta_busy;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.3746 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "soc_top_blk_mem_gen_0_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  soc_top_blk_mem_gen_0_0_blk_mem_gen_v8_4_12 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53456)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
