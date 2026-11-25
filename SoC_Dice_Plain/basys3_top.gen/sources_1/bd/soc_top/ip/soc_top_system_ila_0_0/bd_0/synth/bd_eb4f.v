//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_eb4f.bd
//Design : bd_eb4f
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_eb4f,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_eb4f,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=None}" *) (* HW_HANDOFF = "soc_top_system_ila_0_0.hwdef" *) 
module bd_eb4f
   (SLOT_0_AHBLITE_haddr,
    SLOT_0_AHBLITE_hburst,
    SLOT_0_AHBLITE_hmastlock,
    SLOT_0_AHBLITE_hprot,
    SLOT_0_AHBLITE_hrdata,
    SLOT_0_AHBLITE_hready,
    SLOT_0_AHBLITE_hresp,
    SLOT_0_AHBLITE_hsize,
    SLOT_0_AHBLITE_htrans,
    SLOT_0_AHBLITE_hwdata,
    SLOT_0_AHBLITE_hwrite,
    SLOT_1_APB_paddr,
    SLOT_1_APB_penable,
    SLOT_1_APB_prdata,
    SLOT_1_APB_pready,
    SLOT_1_APB_psel,
    SLOT_1_APB_pslverr,
    SLOT_1_APB_pwdata,
    SLOT_1_APB_pwrite,
    SLOT_2_LMB_abus,
    SLOT_2_LMB_addrstrobe,
    SLOT_2_LMB_be,
    SLOT_2_LMB_ce,
    SLOT_2_LMB_readdbus,
    SLOT_2_LMB_readstrobe,
    SLOT_2_LMB_ready,
    SLOT_2_LMB_ue,
    SLOT_2_LMB_wait,
    SLOT_2_LMB_writedbus,
    SLOT_2_LMB_writestrobe,
    SLOT_3_LMB_abus,
    SLOT_3_LMB_addrstrobe,
    SLOT_3_LMB_ce,
    SLOT_3_LMB_readdbus,
    SLOT_3_LMB_readstrobe,
    SLOT_3_LMB_ready,
    SLOT_3_LMB_ue,
    SLOT_3_LMB_wait,
    clk,
    probe0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HADDR" *) (* X_INTERFACE_MODE = "Monitor SlaveType" *) input [31:0]SLOT_0_AHBLITE_haddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HBURST" *) input [2:0]SLOT_0_AHBLITE_hburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HMASTLOCK" *) input SLOT_0_AHBLITE_hmastlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HPROT" *) input [3:0]SLOT_0_AHBLITE_hprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HRDATA" *) input [31:0]SLOT_0_AHBLITE_hrdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HREADY" *) input SLOT_0_AHBLITE_hready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HRESP" *) input SLOT_0_AHBLITE_hresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HSIZE" *) input [2:0]SLOT_0_AHBLITE_hsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HTRANS" *) input [1:0]SLOT_0_AHBLITE_htrans;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HWDATA" *) input [31:0]SLOT_0_AHBLITE_hwdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HWRITE" *) input SLOT_0_AHBLITE_hwrite;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 SLOT_1_APB PADDR" *) (* X_INTERFACE_MODE = "Monitor SlaveType" *) input [31:0]SLOT_1_APB_paddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 SLOT_1_APB PENABLE" *) input SLOT_1_APB_penable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 SLOT_1_APB PRDATA" *) input [31:0]SLOT_1_APB_prdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 SLOT_1_APB PREADY" *) input [0:0]SLOT_1_APB_pready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 SLOT_1_APB PSEL" *) input [0:0]SLOT_1_APB_psel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 SLOT_1_APB PSLVERR" *) input [0:0]SLOT_1_APB_pslverr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 SLOT_1_APB PWDATA" *) input [31:0]SLOT_1_APB_pwdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 SLOT_1_APB PWRITE" *) input SLOT_1_APB_pwrite;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_2_LMB ABUS" *) (* X_INTERFACE_MODE = "Monitor SlaveType" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_2_LMB, ADDR_WIDTH 32, DATA_WIDTH 32, HAS_PROT 0, PROTOCOL STANDARD, READ_WRITE_MODE READ_WRITE" *) input [0:31]SLOT_2_LMB_abus;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_2_LMB ADDRSTROBE" *) input SLOT_2_LMB_addrstrobe;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_2_LMB BE" *) input [0:3]SLOT_2_LMB_be;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_2_LMB CE" *) input SLOT_2_LMB_ce;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_2_LMB READDBUS" *) input [0:31]SLOT_2_LMB_readdbus;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_2_LMB READSTROBE" *) input SLOT_2_LMB_readstrobe;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_2_LMB READY" *) input SLOT_2_LMB_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_2_LMB UE" *) input SLOT_2_LMB_ue;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_2_LMB WAIT" *) input SLOT_2_LMB_wait;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_2_LMB WRITEDBUS" *) input [0:31]SLOT_2_LMB_writedbus;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_2_LMB WRITESTROBE" *) input SLOT_2_LMB_writestrobe;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_3_LMB ABUS" *) (* X_INTERFACE_MODE = "Monitor SlaveType" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_3_LMB, ADDR_WIDTH 32, DATA_WIDTH 32, HAS_PROT 0, PROTOCOL STANDARD, READ_WRITE_MODE READ_ONLY" *) input [0:31]SLOT_3_LMB_abus;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_3_LMB ADDRSTROBE" *) input SLOT_3_LMB_addrstrobe;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_3_LMB CE" *) input SLOT_3_LMB_ce;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_3_LMB READDBUS" *) input [0:31]SLOT_3_LMB_readdbus;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_3_LMB READSTROBE" *) input SLOT_3_LMB_readstrobe;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_3_LMB READY" *) input SLOT_3_LMB_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_3_LMB UE" *) input SLOT_3_LMB_ue;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_3_LMB WAIT" *) input SLOT_3_LMB_wait;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN soc_top_clk_100MHz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  input [0:0]probe0;

  wire [31:0]SLOT_0_AHBLITE_haddr;
  wire [2:0]SLOT_0_AHBLITE_hburst;
  wire SLOT_0_AHBLITE_hmastlock;
  wire [3:0]SLOT_0_AHBLITE_hprot;
  wire [31:0]SLOT_0_AHBLITE_hrdata;
  wire SLOT_0_AHBLITE_hready;
  wire SLOT_0_AHBLITE_hresp;
  wire [2:0]SLOT_0_AHBLITE_hsize;
  wire [1:0]SLOT_0_AHBLITE_htrans;
  wire [31:0]SLOT_0_AHBLITE_hwdata;
  wire SLOT_0_AHBLITE_hwrite;
  wire [31:0]SLOT_1_APB_paddr;
  wire SLOT_1_APB_penable;
  wire [31:0]SLOT_1_APB_prdata;
  wire [0:0]SLOT_1_APB_pready;
  wire [0:0]SLOT_1_APB_psel;
  wire [0:0]SLOT_1_APB_pslverr;
  wire [31:0]SLOT_1_APB_pwdata;
  wire SLOT_1_APB_pwrite;
  wire [0:31]SLOT_2_LMB_abus;
  wire SLOT_2_LMB_addrstrobe;
  wire [0:3]SLOT_2_LMB_be;
  wire SLOT_2_LMB_ce;
  wire [0:31]SLOT_2_LMB_readdbus;
  wire SLOT_2_LMB_readstrobe;
  wire SLOT_2_LMB_ready;
  wire SLOT_2_LMB_ue;
  wire SLOT_2_LMB_wait;
  wire [0:31]SLOT_2_LMB_writedbus;
  wire SLOT_2_LMB_writestrobe;
  wire [0:31]SLOT_3_LMB_abus;
  wire SLOT_3_LMB_addrstrobe;
  wire SLOT_3_LMB_ce;
  wire [0:31]SLOT_3_LMB_readdbus;
  wire SLOT_3_LMB_readstrobe;
  wire SLOT_3_LMB_ready;
  wire SLOT_3_LMB_ue;
  wire SLOT_3_LMB_wait;
  wire clk;
  wire [0:0]probe0;

  bd_eb4f_ila_lib_0 ila_lib
       (.clk(clk),
        .probe0(probe0),
        .probe1(SLOT_0_AHBLITE_haddr),
        .probe10(SLOT_0_AHBLITE_hwdata),
        .probe11(SLOT_0_AHBLITE_hwrite),
        .probe12(SLOT_1_APB_paddr),
        .probe13(SLOT_1_APB_penable),
        .probe14(SLOT_1_APB_prdata),
        .probe15(SLOT_1_APB_pready),
        .probe16(SLOT_1_APB_psel),
        .probe17(SLOT_1_APB_pslverr),
        .probe18(SLOT_1_APB_pwdata),
        .probe19(SLOT_1_APB_pwrite),
        .probe2(SLOT_0_AHBLITE_hburst),
        .probe20({SLOT_2_LMB_abus[0],SLOT_2_LMB_abus[1],SLOT_2_LMB_abus[2],SLOT_2_LMB_abus[3],SLOT_2_LMB_abus[4],SLOT_2_LMB_abus[5],SLOT_2_LMB_abus[6],SLOT_2_LMB_abus[7],SLOT_2_LMB_abus[8],SLOT_2_LMB_abus[9],SLOT_2_LMB_abus[10],SLOT_2_LMB_abus[11],SLOT_2_LMB_abus[12],SLOT_2_LMB_abus[13],SLOT_2_LMB_abus[14],SLOT_2_LMB_abus[15],SLOT_2_LMB_abus[16],SLOT_2_LMB_abus[17],SLOT_2_LMB_abus[18],SLOT_2_LMB_abus[19],SLOT_2_LMB_abus[20],SLOT_2_LMB_abus[21],SLOT_2_LMB_abus[22],SLOT_2_LMB_abus[23],SLOT_2_LMB_abus[24],SLOT_2_LMB_abus[25],SLOT_2_LMB_abus[26],SLOT_2_LMB_abus[27],SLOT_2_LMB_abus[28],SLOT_2_LMB_abus[29],SLOT_2_LMB_abus[30],SLOT_2_LMB_abus[31]}),
        .probe21(SLOT_2_LMB_addrstrobe),
        .probe22({SLOT_2_LMB_be[0],SLOT_2_LMB_be[1],SLOT_2_LMB_be[2],SLOT_2_LMB_be[3]}),
        .probe23(SLOT_2_LMB_ce),
        .probe24({SLOT_2_LMB_readdbus[0],SLOT_2_LMB_readdbus[1],SLOT_2_LMB_readdbus[2],SLOT_2_LMB_readdbus[3],SLOT_2_LMB_readdbus[4],SLOT_2_LMB_readdbus[5],SLOT_2_LMB_readdbus[6],SLOT_2_LMB_readdbus[7],SLOT_2_LMB_readdbus[8],SLOT_2_LMB_readdbus[9],SLOT_2_LMB_readdbus[10],SLOT_2_LMB_readdbus[11],SLOT_2_LMB_readdbus[12],SLOT_2_LMB_readdbus[13],SLOT_2_LMB_readdbus[14],SLOT_2_LMB_readdbus[15],SLOT_2_LMB_readdbus[16],SLOT_2_LMB_readdbus[17],SLOT_2_LMB_readdbus[18],SLOT_2_LMB_readdbus[19],SLOT_2_LMB_readdbus[20],SLOT_2_LMB_readdbus[21],SLOT_2_LMB_readdbus[22],SLOT_2_LMB_readdbus[23],SLOT_2_LMB_readdbus[24],SLOT_2_LMB_readdbus[25],SLOT_2_LMB_readdbus[26],SLOT_2_LMB_readdbus[27],SLOT_2_LMB_readdbus[28],SLOT_2_LMB_readdbus[29],SLOT_2_LMB_readdbus[30],SLOT_2_LMB_readdbus[31]}),
        .probe25(SLOT_2_LMB_readstrobe),
        .probe26(SLOT_2_LMB_ready),
        .probe27(SLOT_2_LMB_ue),
        .probe28(SLOT_2_LMB_wait),
        .probe29({SLOT_2_LMB_writedbus[0],SLOT_2_LMB_writedbus[1],SLOT_2_LMB_writedbus[2],SLOT_2_LMB_writedbus[3],SLOT_2_LMB_writedbus[4],SLOT_2_LMB_writedbus[5],SLOT_2_LMB_writedbus[6],SLOT_2_LMB_writedbus[7],SLOT_2_LMB_writedbus[8],SLOT_2_LMB_writedbus[9],SLOT_2_LMB_writedbus[10],SLOT_2_LMB_writedbus[11],SLOT_2_LMB_writedbus[12],SLOT_2_LMB_writedbus[13],SLOT_2_LMB_writedbus[14],SLOT_2_LMB_writedbus[15],SLOT_2_LMB_writedbus[16],SLOT_2_LMB_writedbus[17],SLOT_2_LMB_writedbus[18],SLOT_2_LMB_writedbus[19],SLOT_2_LMB_writedbus[20],SLOT_2_LMB_writedbus[21],SLOT_2_LMB_writedbus[22],SLOT_2_LMB_writedbus[23],SLOT_2_LMB_writedbus[24],SLOT_2_LMB_writedbus[25],SLOT_2_LMB_writedbus[26],SLOT_2_LMB_writedbus[27],SLOT_2_LMB_writedbus[28],SLOT_2_LMB_writedbus[29],SLOT_2_LMB_writedbus[30],SLOT_2_LMB_writedbus[31]}),
        .probe3(SLOT_0_AHBLITE_hmastlock),
        .probe30(SLOT_2_LMB_writestrobe),
        .probe31({SLOT_3_LMB_abus[0],SLOT_3_LMB_abus[1],SLOT_3_LMB_abus[2],SLOT_3_LMB_abus[3],SLOT_3_LMB_abus[4],SLOT_3_LMB_abus[5],SLOT_3_LMB_abus[6],SLOT_3_LMB_abus[7],SLOT_3_LMB_abus[8],SLOT_3_LMB_abus[9],SLOT_3_LMB_abus[10],SLOT_3_LMB_abus[11],SLOT_3_LMB_abus[12],SLOT_3_LMB_abus[13],SLOT_3_LMB_abus[14],SLOT_3_LMB_abus[15],SLOT_3_LMB_abus[16],SLOT_3_LMB_abus[17],SLOT_3_LMB_abus[18],SLOT_3_LMB_abus[19],SLOT_3_LMB_abus[20],SLOT_3_LMB_abus[21],SLOT_3_LMB_abus[22],SLOT_3_LMB_abus[23],SLOT_3_LMB_abus[24],SLOT_3_LMB_abus[25],SLOT_3_LMB_abus[26],SLOT_3_LMB_abus[27],SLOT_3_LMB_abus[28],SLOT_3_LMB_abus[29],SLOT_3_LMB_abus[30],SLOT_3_LMB_abus[31]}),
        .probe32(SLOT_3_LMB_addrstrobe),
        .probe33(SLOT_3_LMB_ce),
        .probe34({SLOT_3_LMB_readdbus[0],SLOT_3_LMB_readdbus[1],SLOT_3_LMB_readdbus[2],SLOT_3_LMB_readdbus[3],SLOT_3_LMB_readdbus[4],SLOT_3_LMB_readdbus[5],SLOT_3_LMB_readdbus[6],SLOT_3_LMB_readdbus[7],SLOT_3_LMB_readdbus[8],SLOT_3_LMB_readdbus[9],SLOT_3_LMB_readdbus[10],SLOT_3_LMB_readdbus[11],SLOT_3_LMB_readdbus[12],SLOT_3_LMB_readdbus[13],SLOT_3_LMB_readdbus[14],SLOT_3_LMB_readdbus[15],SLOT_3_LMB_readdbus[16],SLOT_3_LMB_readdbus[17],SLOT_3_LMB_readdbus[18],SLOT_3_LMB_readdbus[19],SLOT_3_LMB_readdbus[20],SLOT_3_LMB_readdbus[21],SLOT_3_LMB_readdbus[22],SLOT_3_LMB_readdbus[23],SLOT_3_LMB_readdbus[24],SLOT_3_LMB_readdbus[25],SLOT_3_LMB_readdbus[26],SLOT_3_LMB_readdbus[27],SLOT_3_LMB_readdbus[28],SLOT_3_LMB_readdbus[29],SLOT_3_LMB_readdbus[30],SLOT_3_LMB_readdbus[31]}),
        .probe35(SLOT_3_LMB_readstrobe),
        .probe36(SLOT_3_LMB_ready),
        .probe37(SLOT_3_LMB_ue),
        .probe38(SLOT_3_LMB_wait),
        .probe4(SLOT_0_AHBLITE_hprot),
        .probe5(SLOT_0_AHBLITE_hrdata),
        .probe6(SLOT_0_AHBLITE_hready),
        .probe7(SLOT_0_AHBLITE_hresp),
        .probe8(SLOT_0_AHBLITE_hsize),
        .probe9(SLOT_0_AHBLITE_htrans));
endmodule
