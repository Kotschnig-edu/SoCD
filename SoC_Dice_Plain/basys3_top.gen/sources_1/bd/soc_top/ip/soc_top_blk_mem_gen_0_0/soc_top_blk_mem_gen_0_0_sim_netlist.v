// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Oct  7 11:03:01 2026
// Host        : R02738 running 64-bit major release  (build 9200)
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
