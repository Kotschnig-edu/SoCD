-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
-- -------------------------------------------------------------------------------
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-- DO NOT MODIFY THIS FILE.

-- MODULE VLNV: amd.com:blockdesign:soc_top:1.0

-- The following code must appear in the VHDL architecture header.

-- COMP_TAG     ------ Begin cut for COMPONENT Declaration ------
COMPONENT soc_top
  PORT (
    apb_0_paddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    apb_0_penable : OUT STD_LOGIC;
    apb_0_prdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    apb_0_pready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    apb_0_psel : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    apb_0_pslverr : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    apb_0_pwdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    apb_0_pwrite : OUT STD_LOGIC;
    apb_1_paddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    apb_1_penable : OUT STD_LOGIC;
    apb_1_prdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    apb_1_pready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    apb_1_psel : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    apb_1_pslverr : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    apb_1_pwdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    apb_1_pwrite : OUT STD_LOGIC;
    uart_rxd : IN STD_LOGIC;
    uart_txd : OUT STD_LOGIC;
    gpio_rtl_0_tri_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    gpio_rtl_0_tri_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    gpio_rtl_0_tri_t : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    pwm : OUT STD_LOGIC;
    clk_100MHz : IN STD_LOGIC;
    reset_n : IN STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------  End cut for COMPONENT Declaration  ------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

-- INST_TAG     ------ Begin cut for INSTANTIATION Template ------
your_instance_name : soc_top
  PORT MAP (
    apb_0_paddr => apb_0_paddr,
    apb_0_penable => apb_0_penable,
    apb_0_prdata => apb_0_prdata,
    apb_0_pready => apb_0_pready,
    apb_0_psel => apb_0_psel,
    apb_0_pslverr => apb_0_pslverr,
    apb_0_pwdata => apb_0_pwdata,
    apb_0_pwrite => apb_0_pwrite,
    apb_1_paddr => apb_1_paddr,
    apb_1_penable => apb_1_penable,
    apb_1_prdata => apb_1_prdata,
    apb_1_pready => apb_1_pready,
    apb_1_psel => apb_1_psel,
    apb_1_pslverr => apb_1_pslverr,
    apb_1_pwdata => apb_1_pwdata,
    apb_1_pwrite => apb_1_pwrite,
    uart_rxd => uart_rxd,
    uart_txd => uart_txd,
    gpio_rtl_0_tri_i => gpio_rtl_0_tri_i,
    gpio_rtl_0_tri_o => gpio_rtl_0_tri_o,
    gpio_rtl_0_tri_t => gpio_rtl_0_tri_t,
    pwm => pwm,
    clk_100MHz => clk_100MHz,
    reset_n => reset_n
  );
-- INST_TAG_END ------  End cut for INSTANTIATION Template  ------

-- You must compile the wrapper file soc_top.vhd when simulating
-- the module, soc_top. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.
