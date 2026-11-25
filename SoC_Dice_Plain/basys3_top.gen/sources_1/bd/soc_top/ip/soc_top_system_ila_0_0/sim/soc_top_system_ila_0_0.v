// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:system_ila:1.1
// IP Revision: 22

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module soc_top_system_ila_0_0 (
  clk,
  probe0,
  SLOT_0_AHBLITE_haddr,
  SLOT_0_AHBLITE_hprot,
  SLOT_0_AHBLITE_htrans,
  SLOT_0_AHBLITE_hsize,
  SLOT_0_AHBLITE_hwrite,
  SLOT_0_AHBLITE_hburst,
  SLOT_0_AHBLITE_hwdata,
  SLOT_0_AHBLITE_hrdata,
  SLOT_0_AHBLITE_hresp,
  SLOT_0_AHBLITE_hmastlock,
  SLOT_0_AHBLITE_hready,
  SLOT_1_APB_paddr,
  SLOT_1_APB_psel,
  SLOT_1_APB_penable,
  SLOT_1_APB_pwrite,
  SLOT_1_APB_pwdata,
  SLOT_1_APB_pready,
  SLOT_1_APB_prdata,
  SLOT_1_APB_pslverr,
  SLOT_2_LMB_abus,
  SLOT_2_LMB_readstrobe,
  SLOT_2_LMB_writestrobe,
  SLOT_2_LMB_addrstrobe,
  SLOT_2_LMB_writedbus,
  SLOT_2_LMB_be,
  SLOT_2_LMB_ready,
  SLOT_2_LMB_wait,
  SLOT_2_LMB_ce,
  SLOT_2_LMB_ue,
  SLOT_2_LMB_readdbus,
  SLOT_3_LMB_abus,
  SLOT_3_LMB_readstrobe,
  SLOT_3_LMB_addrstrobe,
  SLOT_3_LMB_ready,
  SLOT_3_LMB_wait,
  SLOT_3_LMB_ce,
  SLOT_3_LMB_ue,
  SLOT_3_LMB_readdbus
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN soc_top_clk_100MHz, INSERT_VIP 0" *)
input wire clk;
input wire [0 : 0] probe0;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HADDR" *)
(* X_INTERFACE_MODE = "monitor slave" *)
input wire [31 : 0] SLOT_0_AHBLITE_haddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HPROT" *)
input wire [3 : 0] SLOT_0_AHBLITE_hprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HTRANS" *)
input wire [1 : 0] SLOT_0_AHBLITE_htrans;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HSIZE" *)
input wire [2 : 0] SLOT_0_AHBLITE_hsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HWRITE" *)
input wire SLOT_0_AHBLITE_hwrite;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HBURST" *)
input wire [2 : 0] SLOT_0_AHBLITE_hburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HWDATA" *)
input wire [31 : 0] SLOT_0_AHBLITE_hwdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HRDATA" *)
input wire [31 : 0] SLOT_0_AHBLITE_hrdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HRESP" *)
input wire SLOT_0_AHBLITE_hresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HMASTLOCK" *)
input wire SLOT_0_AHBLITE_hmastlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HREADY" *)
input wire SLOT_0_AHBLITE_hready;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 SLOT_1_APB PADDR" *)
(* X_INTERFACE_MODE = "monitor slave" *)
input wire [31 : 0] SLOT_1_APB_paddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 SLOT_1_APB PSEL" *)
input wire [0 : 0] SLOT_1_APB_psel;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 SLOT_1_APB PENABLE" *)
input wire SLOT_1_APB_penable;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 SLOT_1_APB PWRITE" *)
input wire SLOT_1_APB_pwrite;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 SLOT_1_APB PWDATA" *)
input wire [31 : 0] SLOT_1_APB_pwdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 SLOT_1_APB PREADY" *)
input wire [0 : 0] SLOT_1_APB_pready;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 SLOT_1_APB PRDATA" *)
input wire [31 : 0] SLOT_1_APB_prdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 SLOT_1_APB PSLVERR" *)
input wire [0 : 0] SLOT_1_APB_pslverr;
(* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_2_LMB ABUS" *)
(* X_INTERFACE_MODE = "monitor slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_2_LMB, ADDR_WIDTH 32, DATA_WIDTH 32, READ_WRITE_MODE READ_WRITE, PROTOCOL STANDARD, HAS_PROT 0" *)
input wire [0 : 31] SLOT_2_LMB_abus;
(* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_2_LMB READSTROBE" *)
input wire SLOT_2_LMB_readstrobe;
(* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_2_LMB WRITESTROBE" *)
input wire SLOT_2_LMB_writestrobe;
(* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_2_LMB ADDRSTROBE" *)
input wire SLOT_2_LMB_addrstrobe;
(* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_2_LMB WRITEDBUS" *)
input wire [0 : 31] SLOT_2_LMB_writedbus;
(* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_2_LMB BE" *)
input wire [0 : 3] SLOT_2_LMB_be;
(* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_2_LMB READY" *)
input wire SLOT_2_LMB_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_2_LMB WAIT" *)
input wire SLOT_2_LMB_wait;
(* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_2_LMB CE" *)
input wire SLOT_2_LMB_ce;
(* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_2_LMB UE" *)
input wire SLOT_2_LMB_ue;
(* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_2_LMB READDBUS" *)
input wire [0 : 31] SLOT_2_LMB_readdbus;
(* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_3_LMB ABUS" *)
(* X_INTERFACE_MODE = "monitor slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_3_LMB, ADDR_WIDTH 32, DATA_WIDTH 32, READ_WRITE_MODE READ_ONLY, PROTOCOL STANDARD, HAS_PROT 0" *)
input wire [0 : 31] SLOT_3_LMB_abus;
(* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_3_LMB READSTROBE" *)
input wire SLOT_3_LMB_readstrobe;
(* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_3_LMB ADDRSTROBE" *)
input wire SLOT_3_LMB_addrstrobe;
(* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_3_LMB READY" *)
input wire SLOT_3_LMB_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_3_LMB WAIT" *)
input wire SLOT_3_LMB_wait;
(* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_3_LMB CE" *)
input wire SLOT_3_LMB_ce;
(* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_3_LMB UE" *)
input wire SLOT_3_LMB_ue;
(* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 SLOT_3_LMB READDBUS" *)
input wire [0 : 31] SLOT_3_LMB_readdbus;

  bd_eb4f inst (
    .clk(clk),
    .probe0(probe0),
    .SLOT_0_AHBLITE_haddr(SLOT_0_AHBLITE_haddr),
    .SLOT_0_AHBLITE_hprot(SLOT_0_AHBLITE_hprot),
    .SLOT_0_AHBLITE_htrans(SLOT_0_AHBLITE_htrans),
    .SLOT_0_AHBLITE_hsize(SLOT_0_AHBLITE_hsize),
    .SLOT_0_AHBLITE_hwrite(SLOT_0_AHBLITE_hwrite),
    .SLOT_0_AHBLITE_hburst(SLOT_0_AHBLITE_hburst),
    .SLOT_0_AHBLITE_hwdata(SLOT_0_AHBLITE_hwdata),
    .SLOT_0_AHBLITE_hrdata(SLOT_0_AHBLITE_hrdata),
    .SLOT_0_AHBLITE_hresp(SLOT_0_AHBLITE_hresp),
    .SLOT_0_AHBLITE_hmastlock(SLOT_0_AHBLITE_hmastlock),
    .SLOT_0_AHBLITE_hready(SLOT_0_AHBLITE_hready),
    .SLOT_1_APB_paddr(SLOT_1_APB_paddr),
    .SLOT_1_APB_psel(SLOT_1_APB_psel),
    .SLOT_1_APB_penable(SLOT_1_APB_penable),
    .SLOT_1_APB_pwrite(SLOT_1_APB_pwrite),
    .SLOT_1_APB_pwdata(SLOT_1_APB_pwdata),
    .SLOT_1_APB_pready(SLOT_1_APB_pready),
    .SLOT_1_APB_prdata(SLOT_1_APB_prdata),
    .SLOT_1_APB_pslverr(SLOT_1_APB_pslverr),
    .SLOT_2_LMB_abus(SLOT_2_LMB_abus),
    .SLOT_2_LMB_readstrobe(SLOT_2_LMB_readstrobe),
    .SLOT_2_LMB_writestrobe(SLOT_2_LMB_writestrobe),
    .SLOT_2_LMB_addrstrobe(SLOT_2_LMB_addrstrobe),
    .SLOT_2_LMB_writedbus(SLOT_2_LMB_writedbus),
    .SLOT_2_LMB_be(SLOT_2_LMB_be),
    .SLOT_2_LMB_ready(SLOT_2_LMB_ready),
    .SLOT_2_LMB_wait(SLOT_2_LMB_wait),
    .SLOT_2_LMB_ce(SLOT_2_LMB_ce),
    .SLOT_2_LMB_ue(SLOT_2_LMB_ue),
    .SLOT_2_LMB_readdbus(SLOT_2_LMB_readdbus),
    .SLOT_3_LMB_abus(SLOT_3_LMB_abus),
    .SLOT_3_LMB_readstrobe(SLOT_3_LMB_readstrobe),
    .SLOT_3_LMB_addrstrobe(SLOT_3_LMB_addrstrobe),
    .SLOT_3_LMB_ready(SLOT_3_LMB_ready),
    .SLOT_3_LMB_wait(SLOT_3_LMB_wait),
    .SLOT_3_LMB_ce(SLOT_3_LMB_ce),
    .SLOT_3_LMB_ue(SLOT_3_LMB_ue),
    .SLOT_3_LMB_readdbus(SLOT_3_LMB_readdbus)
  );
endmodule
