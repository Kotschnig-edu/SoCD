//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Wed Nov 25 16:17:02 2026
//Host        : R02738 running 64-bit major release  (build 9200)
//Command     : generate_target soc_top_wrapper.bd
//Design      : soc_top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module soc_top_wrapper
   (ahb_0_haddr,
    ahb_0_hburst,
    ahb_0_hmastlock,
    ahb_0_hprot,
    ahb_0_hrdata,
    ahb_0_hready,
    ahb_0_hresp,
    ahb_0_hsize,
    ahb_0_htrans,
    ahb_0_hwdata,
    ahb_0_hwrite,
    apb_0_paddr,
    apb_0_penable,
    apb_0_prdata,
    apb_0_pready,
    apb_0_psel,
    apb_0_pslverr,
    apb_0_pwdata,
    apb_0_pwrite,
    apb_1_paddr,
    apb_1_penable,
    apb_1_prdata,
    apb_1_pready,
    apb_1_psel,
    apb_1_pslverr,
    apb_1_pwdata,
    apb_1_pwrite,
    clk_100MHz,
    gpio2_rtl_0_tri_i,
    gpio_rtl_0_tri_i,
    pwm,
    reset_n,
    uart_rxd,
    uart_txd);
  output [31:0]ahb_0_haddr;
  output [2:0]ahb_0_hburst;
  output ahb_0_hmastlock;
  output [3:0]ahb_0_hprot;
  input [31:0]ahb_0_hrdata;
  input ahb_0_hready;
  input ahb_0_hresp;
  output [2:0]ahb_0_hsize;
  output [1:0]ahb_0_htrans;
  output [31:0]ahb_0_hwdata;
  output ahb_0_hwrite;
  output [31:0]apb_0_paddr;
  output apb_0_penable;
  input [31:0]apb_0_prdata;
  input [0:0]apb_0_pready;
  output [0:0]apb_0_psel;
  input [0:0]apb_0_pslverr;
  output [31:0]apb_0_pwdata;
  output apb_0_pwrite;
  output [31:0]apb_1_paddr;
  output apb_1_penable;
  input [31:0]apb_1_prdata;
  input [0:0]apb_1_pready;
  output [0:0]apb_1_psel;
  input [0:0]apb_1_pslverr;
  output [31:0]apb_1_pwdata;
  output apb_1_pwrite;
  input clk_100MHz;
  input [4:0]gpio2_rtl_0_tri_i;
  input [31:0]gpio_rtl_0_tri_i;
  output pwm;
  input reset_n;
  input uart_rxd;
  output uart_txd;

  wire [31:0]ahb_0_haddr;
  wire [2:0]ahb_0_hburst;
  wire ahb_0_hmastlock;
  wire [3:0]ahb_0_hprot;
  wire [31:0]ahb_0_hrdata;
  wire ahb_0_hready;
  wire ahb_0_hresp;
  wire [2:0]ahb_0_hsize;
  wire [1:0]ahb_0_htrans;
  wire [31:0]ahb_0_hwdata;
  wire ahb_0_hwrite;
  wire [31:0]apb_0_paddr;
  wire apb_0_penable;
  wire [31:0]apb_0_prdata;
  wire [0:0]apb_0_pready;
  wire [0:0]apb_0_psel;
  wire [0:0]apb_0_pslverr;
  wire [31:0]apb_0_pwdata;
  wire apb_0_pwrite;
  wire [31:0]apb_1_paddr;
  wire apb_1_penable;
  wire [31:0]apb_1_prdata;
  wire [0:0]apb_1_pready;
  wire [0:0]apb_1_psel;
  wire [0:0]apb_1_pslverr;
  wire [31:0]apb_1_pwdata;
  wire apb_1_pwrite;
  wire clk_100MHz;
  wire [4:0]gpio2_rtl_0_tri_i;
  wire [31:0]gpio_rtl_0_tri_i;
  wire pwm;
  wire reset_n;
  wire uart_rxd;
  wire uart_txd;

  soc_top soc_top_i
       (.ahb_0_haddr(ahb_0_haddr),
        .ahb_0_hburst(ahb_0_hburst),
        .ahb_0_hmastlock(ahb_0_hmastlock),
        .ahb_0_hprot(ahb_0_hprot),
        .ahb_0_hrdata(ahb_0_hrdata),
        .ahb_0_hready(ahb_0_hready),
        .ahb_0_hresp(ahb_0_hresp),
        .ahb_0_hsize(ahb_0_hsize),
        .ahb_0_htrans(ahb_0_htrans),
        .ahb_0_hwdata(ahb_0_hwdata),
        .ahb_0_hwrite(ahb_0_hwrite),
        .apb_0_paddr(apb_0_paddr),
        .apb_0_penable(apb_0_penable),
        .apb_0_prdata(apb_0_prdata),
        .apb_0_pready(apb_0_pready),
        .apb_0_psel(apb_0_psel),
        .apb_0_pslverr(apb_0_pslverr),
        .apb_0_pwdata(apb_0_pwdata),
        .apb_0_pwrite(apb_0_pwrite),
        .apb_1_paddr(apb_1_paddr),
        .apb_1_penable(apb_1_penable),
        .apb_1_prdata(apb_1_prdata),
        .apb_1_pready(apb_1_pready),
        .apb_1_psel(apb_1_psel),
        .apb_1_pslverr(apb_1_pslverr),
        .apb_1_pwdata(apb_1_pwdata),
        .apb_1_pwrite(apb_1_pwrite),
        .clk_100MHz(clk_100MHz),
        .gpio2_rtl_0_tri_i(gpio2_rtl_0_tri_i),
        .gpio_rtl_0_tri_i(gpio_rtl_0_tri_i),
        .pwm(pwm),
        .reset_n(reset_n),
        .uart_rxd(uart_rxd),
        .uart_txd(uart_txd));
endmodule
