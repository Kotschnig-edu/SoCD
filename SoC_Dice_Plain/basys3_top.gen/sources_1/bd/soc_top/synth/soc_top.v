//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Wed Oct  7 11:01:26 2026
//Host        : R02738 running 64-bit major release  (build 9200)
//Command     : generate_target soc_top.bd
//Design      : soc_top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "soc_top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=soc_top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=14,numReposBlks=14,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=4,da_board_cnt=3,da_bram_cntlr_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "soc_top.hwdef" *) 
module soc_top
   (apb_0_paddr,
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
    gpio_rtl_0_tri_i,
    gpio_rtl_0_tri_o,
    gpio_rtl_0_tri_t,
    pwm,
    reset_n,
    uart_rxd,
    uart_txd);
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_0 PADDR" *) (* X_INTERFACE_MODE = "Master" *) output [31:0]apb_0_paddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_0 PENABLE" *) output apb_0_penable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_0 PRDATA" *) input [31:0]apb_0_prdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_0 PREADY" *) input [0:0]apb_0_pready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_0 PSEL" *) output [0:0]apb_0_psel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_0 PSLVERR" *) input [0:0]apb_0_pslverr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_0 PWDATA" *) output [31:0]apb_0_pwdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_0 PWRITE" *) output apb_0_pwrite;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_1 PADDR" *) (* X_INTERFACE_MODE = "Master" *) output [31:0]apb_1_paddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_1 PENABLE" *) output apb_1_penable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_1 PRDATA" *) input [31:0]apb_1_prdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_1 PREADY" *) input [0:0]apb_1_pready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_1 PSEL" *) output [0:0]apb_1_psel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_1 PSLVERR" *) input [0:0]apb_1_pslverr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_1 PWDATA" *) output [31:0]apb_1_pwdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_1 PWRITE" *) output apb_1_pwrite;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, CLK_DOMAIN soc_top_clk_100MHz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_100MHz;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_rtl_0 TRI_I" *) (* X_INTERFACE_MODE = "Master" *) input [31:0]gpio_rtl_0_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_rtl_0 TRI_O" *) output [31:0]gpio_rtl_0_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_rtl_0 TRI_T" *) output [31:0]gpio_rtl_0_tri_t;
  output pwm;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart RxD" *) (* X_INTERFACE_MODE = "Master" *) input uart_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart TxD" *) output uart_txd;

  wire [31:0]apb_0_prdata;
  wire [0:0]apb_0_pready;
  wire [0:0]apb_0_psel;
  wire [0:0]apb_0_pslverr;
  wire [31:0]apb_1_paddr;
  wire apb_1_penable;
  wire [31:0]apb_1_prdata;
  wire [0:0]apb_1_pready;
  wire [1:1]\^apb_1_psel ;
  wire [0:0]apb_1_pslverr;
  wire [31:0]apb_1_pwdata;
  wire apb_1_pwrite;
  wire axi_intc_0_interrupt_INTERRUPT;
  wire [8:0]axi_smc_M00_AXI_ARADDR;
  wire axi_smc_M00_AXI_ARREADY;
  wire axi_smc_M00_AXI_ARVALID;
  wire [8:0]axi_smc_M00_AXI_AWADDR;
  wire axi_smc_M00_AXI_AWREADY;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [31:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [31:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WREADY;
  wire [3:0]axi_smc_M00_AXI_WSTRB;
  wire axi_smc_M00_AXI_WVALID;
  wire [8:0]axi_smc_M01_AXI_ARADDR;
  wire axi_smc_M01_AXI_ARREADY;
  wire axi_smc_M01_AXI_ARVALID;
  wire [8:0]axi_smc_M01_AXI_AWADDR;
  wire axi_smc_M01_AXI_AWREADY;
  wire axi_smc_M01_AXI_AWVALID;
  wire axi_smc_M01_AXI_BREADY;
  wire [1:0]axi_smc_M01_AXI_BRESP;
  wire axi_smc_M01_AXI_BVALID;
  wire [31:0]axi_smc_M01_AXI_RDATA;
  wire axi_smc_M01_AXI_RREADY;
  wire [1:0]axi_smc_M01_AXI_RRESP;
  wire axi_smc_M01_AXI_RVALID;
  wire [31:0]axi_smc_M01_AXI_WDATA;
  wire axi_smc_M01_AXI_WREADY;
  wire [3:0]axi_smc_M01_AXI_WSTRB;
  wire axi_smc_M01_AXI_WVALID;
  wire [4:0]axi_smc_M02_AXI_ARADDR;
  wire axi_smc_M02_AXI_ARREADY;
  wire axi_smc_M02_AXI_ARVALID;
  wire [4:0]axi_smc_M02_AXI_AWADDR;
  wire axi_smc_M02_AXI_AWREADY;
  wire axi_smc_M02_AXI_AWVALID;
  wire axi_smc_M02_AXI_BREADY;
  wire [1:0]axi_smc_M02_AXI_BRESP;
  wire axi_smc_M02_AXI_BVALID;
  wire [31:0]axi_smc_M02_AXI_RDATA;
  wire axi_smc_M02_AXI_RREADY;
  wire [1:0]axi_smc_M02_AXI_RRESP;
  wire axi_smc_M02_AXI_RVALID;
  wire [31:0]axi_smc_M02_AXI_WDATA;
  wire axi_smc_M02_AXI_WREADY;
  wire [3:0]axi_smc_M02_AXI_WSTRB;
  wire axi_smc_M02_AXI_WVALID;
  wire [3:0]axi_smc_M03_AXI_ARADDR;
  wire axi_smc_M03_AXI_ARREADY;
  wire axi_smc_M03_AXI_ARVALID;
  wire [3:0]axi_smc_M03_AXI_AWADDR;
  wire axi_smc_M03_AXI_AWREADY;
  wire axi_smc_M03_AXI_AWVALID;
  wire axi_smc_M03_AXI_BREADY;
  wire [1:0]axi_smc_M03_AXI_BRESP;
  wire axi_smc_M03_AXI_BVALID;
  wire [31:0]axi_smc_M03_AXI_RDATA;
  wire axi_smc_M03_AXI_RREADY;
  wire [1:0]axi_smc_M03_AXI_RRESP;
  wire axi_smc_M03_AXI_RVALID;
  wire [31:0]axi_smc_M03_AXI_WDATA;
  wire axi_smc_M03_AXI_WREADY;
  wire [3:0]axi_smc_M03_AXI_WSTRB;
  wire axi_smc_M03_AXI_WVALID;
  wire [31:0]axi_smc_M04_AXI_ARADDR;
  wire axi_smc_M04_AXI_ARREADY;
  wire axi_smc_M04_AXI_ARVALID;
  wire [31:0]axi_smc_M04_AXI_AWADDR;
  wire axi_smc_M04_AXI_AWREADY;
  wire axi_smc_M04_AXI_AWVALID;
  wire axi_smc_M04_AXI_BREADY;
  wire [1:0]axi_smc_M04_AXI_BRESP;
  wire axi_smc_M04_AXI_BVALID;
  wire [31:0]axi_smc_M04_AXI_RDATA;
  wire axi_smc_M04_AXI_RREADY;
  wire [1:0]axi_smc_M04_AXI_RRESP;
  wire axi_smc_M04_AXI_RVALID;
  wire [31:0]axi_smc_M04_AXI_WDATA;
  wire axi_smc_M04_AXI_WREADY;
  wire axi_smc_M04_AXI_WVALID;
  wire axi_timer_0_interrupt;
  wire axi_uartlite_0_interrupt;
  wire clk_100MHz;
  wire [31:0]gpio_rtl_0_tri_i;
  wire [31:0]gpio_rtl_0_tri_o;
  wire [31:0]gpio_rtl_0_tri_t;
  wire [0:31]lmb_bram_if_cntlr_0_BRAM_PORT_ADDR;
  wire lmb_bram_if_cntlr_0_BRAM_PORT_CLK;
  wire [0:31]lmb_bram_if_cntlr_0_BRAM_PORT_DIN;
  wire [31:0]lmb_bram_if_cntlr_0_BRAM_PORT_DOUT;
  wire lmb_bram_if_cntlr_0_BRAM_PORT_EN;
  wire lmb_bram_if_cntlr_0_BRAM_PORT_RST;
  wire [0:3]lmb_bram_if_cntlr_0_BRAM_PORT_WE;
  wire mdm_riscv_0_Debug_SYS_Rst;
  wire mdm_riscv_0_MBDEBUG_0_CAPTURE;
  wire mdm_riscv_0_MBDEBUG_0_CLK;
  wire mdm_riscv_0_MBDEBUG_0_DISABLE;
  wire [0:7]mdm_riscv_0_MBDEBUG_0_REG_EN;
  wire mdm_riscv_0_MBDEBUG_0_RST;
  wire mdm_riscv_0_MBDEBUG_0_SHIFT;
  wire mdm_riscv_0_MBDEBUG_0_TDI;
  wire mdm_riscv_0_MBDEBUG_0_TDO;
  wire mdm_riscv_0_MBDEBUG_0_UPDATE;
  wire [0:31]microblaze_riscv_0_DLMB_ABUS;
  wire microblaze_riscv_0_DLMB_ADDRSTROBE;
  wire [0:3]microblaze_riscv_0_DLMB_BE;
  wire microblaze_riscv_0_DLMB_CE;
  wire [0:31]microblaze_riscv_0_DLMB_READDBUS;
  wire microblaze_riscv_0_DLMB_READSTROBE;
  wire microblaze_riscv_0_DLMB_READY;
  wire microblaze_riscv_0_DLMB_UE;
  wire microblaze_riscv_0_DLMB_WAIT;
  wire [0:31]microblaze_riscv_0_DLMB_WRITEDBUS;
  wire microblaze_riscv_0_DLMB_WRITESTROBE;
  wire [31:0]microblaze_riscv_0_M_AXI_DP_ARADDR;
  wire [2:0]microblaze_riscv_0_M_AXI_DP_ARPROT;
  wire microblaze_riscv_0_M_AXI_DP_ARREADY;
  wire microblaze_riscv_0_M_AXI_DP_ARVALID;
  wire [31:0]microblaze_riscv_0_M_AXI_DP_AWADDR;
  wire [2:0]microblaze_riscv_0_M_AXI_DP_AWPROT;
  wire microblaze_riscv_0_M_AXI_DP_AWREADY;
  wire microblaze_riscv_0_M_AXI_DP_AWVALID;
  wire microblaze_riscv_0_M_AXI_DP_BREADY;
  wire [1:0]microblaze_riscv_0_M_AXI_DP_BRESP;
  wire microblaze_riscv_0_M_AXI_DP_BVALID;
  wire [31:0]microblaze_riscv_0_M_AXI_DP_RDATA;
  wire microblaze_riscv_0_M_AXI_DP_RREADY;
  wire [1:0]microblaze_riscv_0_M_AXI_DP_RRESP;
  wire microblaze_riscv_0_M_AXI_DP_RVALID;
  wire [31:0]microblaze_riscv_0_M_AXI_DP_WDATA;
  wire microblaze_riscv_0_M_AXI_DP_WREADY;
  wire [3:0]microblaze_riscv_0_M_AXI_DP_WSTRB;
  wire microblaze_riscv_0_M_AXI_DP_WVALID;
  wire proc_sys_reset_0_mb_reset;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn1;
  wire pwm;
  wire reset_n;
  wire uart_rxd;
  wire uart_txd;
  wire [1:0]xlconcat_0_dout;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;

  assign apb_0_paddr[31:0] = apb_1_paddr;
  assign apb_0_penable = apb_1_penable;
  assign apb_0_pwdata[31:0] = apb_1_pwdata;
  assign apb_0_pwrite = apb_1_pwrite;
  assign apb_1_psel[0] = \^apb_1_psel [1];
  soc_top_axi_apb_bridge_0_1 axi_apb_bridge_0
       (.m_apb_paddr(apb_1_paddr),
        .m_apb_penable(apb_1_penable),
        .m_apb_prdata(apb_0_prdata),
        .m_apb_prdata2(apb_1_prdata),
        .m_apb_pready({apb_1_pready,apb_0_pready}),
        .m_apb_psel({\^apb_1_psel ,apb_0_psel}),
        .m_apb_pslverr({apb_1_pslverr,apb_0_pslverr}),
        .m_apb_pwdata(apb_1_pwdata),
        .m_apb_pwrite(apb_1_pwrite),
        .s_axi_aclk(clk_100MHz),
        .s_axi_araddr(axi_smc_M04_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn1),
        .s_axi_arready(axi_smc_M04_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M04_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M04_AXI_AWADDR),
        .s_axi_awready(axi_smc_M04_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M04_AXI_AWVALID),
        .s_axi_bready(axi_smc_M04_AXI_BREADY),
        .s_axi_bresp(axi_smc_M04_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M04_AXI_BVALID),
        .s_axi_rdata(axi_smc_M04_AXI_RDATA),
        .s_axi_rready(axi_smc_M04_AXI_RREADY),
        .s_axi_rresp(axi_smc_M04_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M04_AXI_RVALID),
        .s_axi_wdata(axi_smc_M04_AXI_WDATA),
        .s_axi_wready(axi_smc_M04_AXI_WREADY),
        .s_axi_wvalid(axi_smc_M04_AXI_WVALID));
  soc_top_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_i(gpio_rtl_0_tri_i),
        .gpio_io_o(gpio_rtl_0_tri_o),
        .gpio_io_t(gpio_rtl_0_tri_t),
        .s_axi_aclk(clk_100MHz),
        .s_axi_araddr(axi_smc_M00_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(axi_smc_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M00_AXI_AWADDR),
        .s_axi_awready(axi_smc_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M00_AXI_AWVALID),
        .s_axi_bready(axi_smc_M00_AXI_BREADY),
        .s_axi_bresp(axi_smc_M00_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M00_AXI_BVALID),
        .s_axi_rdata(axi_smc_M00_AXI_RDATA),
        .s_axi_rready(axi_smc_M00_AXI_RREADY),
        .s_axi_rresp(axi_smc_M00_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M00_AXI_RVALID),
        .s_axi_wdata(axi_smc_M00_AXI_WDATA),
        .s_axi_wready(axi_smc_M00_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M00_AXI_WVALID));
  soc_top_axi_intc_0_0 axi_intc_0
       (.intr(xlconcat_0_dout),
        .irq(axi_intc_0_interrupt_INTERRUPT),
        .s_axi_aclk(clk_100MHz),
        .s_axi_araddr(axi_smc_M01_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(axi_smc_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M01_AXI_AWADDR),
        .s_axi_awready(axi_smc_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M01_AXI_AWVALID),
        .s_axi_bready(axi_smc_M01_AXI_BREADY),
        .s_axi_bresp(axi_smc_M01_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M01_AXI_BVALID),
        .s_axi_rdata(axi_smc_M01_AXI_RDATA),
        .s_axi_rready(axi_smc_M01_AXI_RREADY),
        .s_axi_rresp(axi_smc_M01_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M01_AXI_RVALID),
        .s_axi_wdata(axi_smc_M01_AXI_WDATA),
        .s_axi_wready(axi_smc_M01_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M01_AXI_WVALID));
  soc_top_axi_smc_0 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .M01_AXI_araddr(axi_smc_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_smc_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_smc_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_smc_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_smc_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_smc_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_smc_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_smc_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_smc_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_smc_M01_AXI_RDATA),
        .M01_AXI_rready(axi_smc_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_smc_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_smc_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_smc_M01_AXI_WDATA),
        .M01_AXI_wready(axi_smc_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_smc_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_smc_M01_AXI_WVALID),
        .M02_AXI_araddr(axi_smc_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_smc_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_smc_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_smc_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_smc_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_smc_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_smc_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_smc_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_smc_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_smc_M02_AXI_RDATA),
        .M02_AXI_rready(axi_smc_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_smc_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_smc_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_smc_M02_AXI_WDATA),
        .M02_AXI_wready(axi_smc_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_smc_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_smc_M02_AXI_WVALID),
        .M03_AXI_araddr(axi_smc_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_smc_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_smc_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_smc_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_smc_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_smc_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_smc_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_smc_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_smc_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_smc_M03_AXI_RDATA),
        .M03_AXI_rready(axi_smc_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_smc_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_smc_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_smc_M03_AXI_WDATA),
        .M03_AXI_wready(axi_smc_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_smc_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_smc_M03_AXI_WVALID),
        .M04_AXI_araddr(axi_smc_M04_AXI_ARADDR),
        .M04_AXI_arready(axi_smc_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_smc_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_smc_M04_AXI_AWADDR),
        .M04_AXI_awready(axi_smc_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_smc_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_smc_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_smc_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_smc_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_smc_M04_AXI_RDATA),
        .M04_AXI_rready(axi_smc_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_smc_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_smc_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_smc_M04_AXI_WDATA),
        .M04_AXI_wready(axi_smc_M04_AXI_WREADY),
        .M04_AXI_wvalid(axi_smc_M04_AXI_WVALID),
        .S00_AXI_araddr(microblaze_riscv_0_M_AXI_DP_ARADDR),
        .S00_AXI_arprot(microblaze_riscv_0_M_AXI_DP_ARPROT),
        .S00_AXI_arready(microblaze_riscv_0_M_AXI_DP_ARREADY),
        .S00_AXI_arvalid(microblaze_riscv_0_M_AXI_DP_ARVALID),
        .S00_AXI_awaddr(microblaze_riscv_0_M_AXI_DP_AWADDR),
        .S00_AXI_awprot(microblaze_riscv_0_M_AXI_DP_AWPROT),
        .S00_AXI_awready(microblaze_riscv_0_M_AXI_DP_AWREADY),
        .S00_AXI_awvalid(microblaze_riscv_0_M_AXI_DP_AWVALID),
        .S00_AXI_bready(microblaze_riscv_0_M_AXI_DP_BREADY),
        .S00_AXI_bresp(microblaze_riscv_0_M_AXI_DP_BRESP),
        .S00_AXI_bvalid(microblaze_riscv_0_M_AXI_DP_BVALID),
        .S00_AXI_rdata(microblaze_riscv_0_M_AXI_DP_RDATA),
        .S00_AXI_rready(microblaze_riscv_0_M_AXI_DP_RREADY),
        .S00_AXI_rresp(microblaze_riscv_0_M_AXI_DP_RRESP),
        .S00_AXI_rvalid(microblaze_riscv_0_M_AXI_DP_RVALID),
        .S00_AXI_wdata(microblaze_riscv_0_M_AXI_DP_WDATA),
        .S00_AXI_wready(microblaze_riscv_0_M_AXI_DP_WREADY),
        .S00_AXI_wstrb(microblaze_riscv_0_M_AXI_DP_WSTRB),
        .S00_AXI_wvalid(microblaze_riscv_0_M_AXI_DP_WVALID),
        .aclk(clk_100MHz),
        .aresetn(proc_sys_reset_0_peripheral_aresetn));
  soc_top_axi_timer_0_0 axi_timer_0
       (.capturetrig0(xlconstant_1_dout),
        .capturetrig1(xlconstant_1_dout),
        .freeze(xlconstant_1_dout),
        .interrupt(axi_timer_0_interrupt),
        .pwm0(pwm),
        .s_axi_aclk(clk_100MHz),
        .s_axi_araddr(axi_smc_M02_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(axi_smc_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M02_AXI_AWADDR),
        .s_axi_awready(axi_smc_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M02_AXI_AWVALID),
        .s_axi_bready(axi_smc_M02_AXI_BREADY),
        .s_axi_bresp(axi_smc_M02_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M02_AXI_BVALID),
        .s_axi_rdata(axi_smc_M02_AXI_RDATA),
        .s_axi_rready(axi_smc_M02_AXI_RREADY),
        .s_axi_rresp(axi_smc_M02_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M02_AXI_RVALID),
        .s_axi_wdata(axi_smc_M02_AXI_WDATA),
        .s_axi_wready(axi_smc_M02_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M02_AXI_WVALID));
  soc_top_axi_uartlite_0_0 axi_uartlite_0
       (.interrupt(axi_uartlite_0_interrupt),
        .rx(uart_rxd),
        .s_axi_aclk(clk_100MHz),
        .s_axi_araddr(axi_smc_M03_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(axi_smc_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M03_AXI_AWADDR),
        .s_axi_awready(axi_smc_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M03_AXI_AWVALID),
        .s_axi_bready(axi_smc_M03_AXI_BREADY),
        .s_axi_bresp(axi_smc_M03_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M03_AXI_BVALID),
        .s_axi_rdata(axi_smc_M03_AXI_RDATA),
        .s_axi_rready(axi_smc_M03_AXI_RREADY),
        .s_axi_rresp(axi_smc_M03_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M03_AXI_RVALID),
        .s_axi_wdata(axi_smc_M03_AXI_WDATA),
        .s_axi_wready(axi_smc_M03_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M03_AXI_WVALID),
        .tx(uart_txd));
  soc_top_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[0],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[1],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[2],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[3],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[4],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[5],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[6],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[7],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[8],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[9],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[10],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[11],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[12],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[13],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[14],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[15],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[16],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[17],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[18],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[19],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[20],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[21],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[22],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[23],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[24],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[25],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[26],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[27],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[28],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[29],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[30],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[31]}),
        .clka(lmb_bram_if_cntlr_0_BRAM_PORT_CLK),
        .dina({lmb_bram_if_cntlr_0_BRAM_PORT_DIN[0],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[1],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[2],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[3],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[4],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[5],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[6],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[7],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[8],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[9],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[10],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[11],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[12],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[13],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[14],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[15],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[16],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[17],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[18],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[19],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[20],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[21],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[22],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[23],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[24],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[25],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[26],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[27],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[28],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[29],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[30],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[31]}),
        .douta(lmb_bram_if_cntlr_0_BRAM_PORT_DOUT),
        .ena(lmb_bram_if_cntlr_0_BRAM_PORT_EN),
        .rsta(lmb_bram_if_cntlr_0_BRAM_PORT_RST),
        .wea({lmb_bram_if_cntlr_0_BRAM_PORT_WE[0],lmb_bram_if_cntlr_0_BRAM_PORT_WE[1],lmb_bram_if_cntlr_0_BRAM_PORT_WE[2],lmb_bram_if_cntlr_0_BRAM_PORT_WE[3]}));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x00000000 32 > soc_top blk_mem_gen_0" *) 
  (* KEEP_HIERARCHY = "YES" *) 
  soc_top_lmb_bram_if_cntlr_0_0 lmb_bram_if_cntlr_0
       (.BRAM_Addr_A(lmb_bram_if_cntlr_0_BRAM_PORT_ADDR),
        .BRAM_Clk_A(lmb_bram_if_cntlr_0_BRAM_PORT_CLK),
        .BRAM_Din_A({lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[31],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[30],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[29],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[28],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[27],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[26],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[25],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[24],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[23],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[22],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[21],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[20],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[19],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[18],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[17],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[16],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[15],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[14],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[13],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[12],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[11],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[10],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[9],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[8],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[7],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[6],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[5],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[4],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[3],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[2],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[1],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[0]}),
        .BRAM_Dout_A(lmb_bram_if_cntlr_0_BRAM_PORT_DIN),
        .BRAM_EN_A(lmb_bram_if_cntlr_0_BRAM_PORT_EN),
        .BRAM_Rst_A(lmb_bram_if_cntlr_0_BRAM_PORT_RST),
        .BRAM_WEN_A(lmb_bram_if_cntlr_0_BRAM_PORT_WE),
        .LMB_ABus(microblaze_riscv_0_DLMB_ABUS),
        .LMB_AddrStrobe(microblaze_riscv_0_DLMB_ADDRSTROBE),
        .LMB_BE(microblaze_riscv_0_DLMB_BE),
        .LMB_Clk(clk_100MHz),
        .LMB_ReadStrobe(microblaze_riscv_0_DLMB_READSTROBE),
        .LMB_Rst(proc_sys_reset_0_mb_reset),
        .LMB_WriteDBus(microblaze_riscv_0_DLMB_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_riscv_0_DLMB_WRITESTROBE),
        .Sl_CE(microblaze_riscv_0_DLMB_CE),
        .Sl_DBus(microblaze_riscv_0_DLMB_READDBUS),
        .Sl_Ready(microblaze_riscv_0_DLMB_READY),
        .Sl_UE(microblaze_riscv_0_DLMB_UE),
        .Sl_Wait(microblaze_riscv_0_DLMB_WAIT));
  soc_top_mdm_riscv_0_0 mdm_riscv_0
       (.Dbg_Capture_0(mdm_riscv_0_MBDEBUG_0_CAPTURE),
        .Dbg_Clk_0(mdm_riscv_0_MBDEBUG_0_CLK),
        .Dbg_Disable_0(mdm_riscv_0_MBDEBUG_0_DISABLE),
        .Dbg_Reg_En_0(mdm_riscv_0_MBDEBUG_0_REG_EN),
        .Dbg_Rst_0(mdm_riscv_0_MBDEBUG_0_RST),
        .Dbg_Shift_0(mdm_riscv_0_MBDEBUG_0_SHIFT),
        .Dbg_TDI_0(mdm_riscv_0_MBDEBUG_0_TDI),
        .Dbg_TDO_0(mdm_riscv_0_MBDEBUG_0_TDO),
        .Dbg_Update_0(mdm_riscv_0_MBDEBUG_0_UPDATE),
        .Debug_SYS_Rst(mdm_riscv_0_Debug_SYS_Rst));
  (* BMM_INFO_PROCESSOR = "riscv > soc_top lmb_bram_if_cntlr_0" *) 
  (* KEEP_HIERARCHY = "YES" *) 
  soc_top_microblaze_riscv_0_0 microblaze_riscv_0
       (.Byte_Enable(microblaze_riscv_0_DLMB_BE),
        .Clk(clk_100MHz),
        .DCE(microblaze_riscv_0_DLMB_CE),
        .DReady(microblaze_riscv_0_DLMB_READY),
        .DUE(microblaze_riscv_0_DLMB_UE),
        .DWait(microblaze_riscv_0_DLMB_WAIT),
        .D_AS(microblaze_riscv_0_DLMB_ADDRSTROBE),
        .Data_Addr(microblaze_riscv_0_DLMB_ABUS),
        .Data_Read(microblaze_riscv_0_DLMB_READDBUS),
        .Data_Write(microblaze_riscv_0_DLMB_WRITEDBUS),
        .Dbg_Capture(mdm_riscv_0_MBDEBUG_0_CAPTURE),
        .Dbg_Clk(mdm_riscv_0_MBDEBUG_0_CLK),
        .Dbg_Disable(mdm_riscv_0_MBDEBUG_0_DISABLE),
        .Dbg_Reg_En(mdm_riscv_0_MBDEBUG_0_REG_EN),
        .Dbg_Shift(mdm_riscv_0_MBDEBUG_0_SHIFT),
        .Dbg_TDI(mdm_riscv_0_MBDEBUG_0_TDI),
        .Dbg_TDO(mdm_riscv_0_MBDEBUG_0_TDO),
        .Dbg_Trig_Ack_In({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Dbg_Trig_Out({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Dbg_Update(mdm_riscv_0_MBDEBUG_0_UPDATE),
        .Debug_Rst(mdm_riscv_0_MBDEBUG_0_RST),
        .ICE(1'b0),
        .IReady(1'b0),
        .IUE(1'b0),
        .IWAIT(1'b0),
        .Instr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Interrupt(axi_intc_0_interrupt_INTERRUPT),
        .Interrupt_Address({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_DP_ARADDR(microblaze_riscv_0_M_AXI_DP_ARADDR),
        .M_AXI_DP_ARPROT(microblaze_riscv_0_M_AXI_DP_ARPROT),
        .M_AXI_DP_ARREADY(microblaze_riscv_0_M_AXI_DP_ARREADY),
        .M_AXI_DP_ARVALID(microblaze_riscv_0_M_AXI_DP_ARVALID),
        .M_AXI_DP_AWADDR(microblaze_riscv_0_M_AXI_DP_AWADDR),
        .M_AXI_DP_AWPROT(microblaze_riscv_0_M_AXI_DP_AWPROT),
        .M_AXI_DP_AWREADY(microblaze_riscv_0_M_AXI_DP_AWREADY),
        .M_AXI_DP_AWVALID(microblaze_riscv_0_M_AXI_DP_AWVALID),
        .M_AXI_DP_BREADY(microblaze_riscv_0_M_AXI_DP_BREADY),
        .M_AXI_DP_BRESP(microblaze_riscv_0_M_AXI_DP_BRESP),
        .M_AXI_DP_BVALID(microblaze_riscv_0_M_AXI_DP_BVALID),
        .M_AXI_DP_RDATA(microblaze_riscv_0_M_AXI_DP_RDATA),
        .M_AXI_DP_RREADY(microblaze_riscv_0_M_AXI_DP_RREADY),
        .M_AXI_DP_RRESP(microblaze_riscv_0_M_AXI_DP_RRESP),
        .M_AXI_DP_RVALID(microblaze_riscv_0_M_AXI_DP_RVALID),
        .M_AXI_DP_WDATA(microblaze_riscv_0_M_AXI_DP_WDATA),
        .M_AXI_DP_WREADY(microblaze_riscv_0_M_AXI_DP_WREADY),
        .M_AXI_DP_WSTRB(microblaze_riscv_0_M_AXI_DP_WSTRB),
        .M_AXI_DP_WVALID(microblaze_riscv_0_M_AXI_DP_WVALID),
        .Read_Strobe(microblaze_riscv_0_DLMB_READSTROBE),
        .Reset(proc_sys_reset_0_mb_reset),
        .Write_Strobe(microblaze_riscv_0_DLMB_WRITESTROBE));
  soc_top_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(xlconstant_0_dout),
        .dcm_locked(xlconstant_0_dout),
        .ext_reset_in(reset_n),
        .interconnect_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .mb_debug_sys_rst(mdm_riscv_0_Debug_SYS_Rst),
        .mb_reset(proc_sys_reset_0_mb_reset),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn1),
        .slowest_sync_clk(clk_100MHz));
  soc_top_xlconcat_0_0 xlconcat_0
       (.In0(axi_timer_0_interrupt),
        .In1(axi_uartlite_0_interrupt),
        .dout(xlconcat_0_dout));
  soc_top_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  soc_top_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule
