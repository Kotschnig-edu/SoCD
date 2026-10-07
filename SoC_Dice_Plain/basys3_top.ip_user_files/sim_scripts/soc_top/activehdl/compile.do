transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/microblaze_v11_0_16
vlib activehdl/microblaze_riscv_v1_0_7
vlib activehdl/xil_defaultlib
vlib activehdl/lmb_bram_if_cntlr_v4_0_27
vlib activehdl/blk_mem_gen_v8_4_12
vlib activehdl/proc_sys_reset_v5_0_17
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/mdm_riscv_v1_0_7
vlib activehdl/axi_intc_v4_1_22
vlib activehdl/axi_timer_v2_0_37
vlib activehdl/interrupt_control_v3_1_5
vlib activehdl/axi_gpio_v2_0_37
vlib activehdl/axi_uartlite_v2_0_39
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_36
vlib activehdl/axi_vip_v1_1_22
vlib activehdl/axi_apb_bridge_v3_0_21
vlib activehdl/xlconstant_v1_1_10
vlib activehdl/xlconcat_v2_1_7

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap microblaze_v11_0_16 activehdl/microblaze_v11_0_16
vmap microblaze_riscv_v1_0_7 activehdl/microblaze_riscv_v1_0_7
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lmb_bram_if_cntlr_v4_0_27 activehdl/lmb_bram_if_cntlr_v4_0_27
vmap blk_mem_gen_v8_4_12 activehdl/blk_mem_gen_v8_4_12
vmap proc_sys_reset_v5_0_17 activehdl/proc_sys_reset_v5_0_17
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap mdm_riscv_v1_0_7 activehdl/mdm_riscv_v1_0_7
vmap axi_intc_v4_1_22 activehdl/axi_intc_v4_1_22
vmap axi_timer_v2_0_37 activehdl/axi_timer_v2_0_37
vmap interrupt_control_v3_1_5 activehdl/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_37 activehdl/axi_gpio_v2_0_37
vmap axi_uartlite_v2_0_39 activehdl/axi_uartlite_v2_0_39
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_36 activehdl/axi_register_slice_v2_1_36
vmap axi_vip_v1_1_22 activehdl/axi_vip_v1_1_22
vmap axi_apb_bridge_v3_0_21 activehdl/axi_apb_bridge_v3_0_21
vmap xlconstant_v1_1_10 activehdl/xlconstant_v1_1_10
vmap xlconcat_v2_1_7 activehdl/xlconcat_v2_1_7

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_16 -93  \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/c957/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work microblaze_riscv_v1_0_7 -93  \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/404b/hdl/microblaze_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/soc_top/ip/soc_top_microblaze_riscv_0_0/sim/soc_top_microblaze_riscv_0_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_27 -93  \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/7cd0/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/soc_top/ip/soc_top_lmb_bram_if_cntlr_0_0/sim/soc_top_lmb_bram_if_cntlr_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_12  -v2k5 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/42f3/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../bd/soc_top/ip/soc_top_blk_mem_gen_0_0/sim/soc_top_blk_mem_gen_0_0.v" \

vcom -work proc_sys_reset_v5_0_17 -93  \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/soc_top/ip/soc_top_proc_sys_reset_0_0/sim/soc_top_proc_sys_reset_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_riscv_v1_0_7 -93  \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/d25b/hdl/mdm_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/soc_top/ip/soc_top_mdm_riscv_0_0/sim/soc_top_mdm_riscv_0_0.vhd" \

vcom -work axi_intc_v4_1_22 -93  \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f258/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/soc_top/ip/soc_top_axi_intc_0_0/sim/soc_top_axi_intc_0_0.vhd" \

vcom -work axi_timer_v2_0_37 -93  \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/05e8/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/soc_top/ip/soc_top_axi_timer_0_0/sim/soc_top_axi_timer_0_0.vhd" \

vcom -work interrupt_control_v3_1_5 -93  \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_37 -93  \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/0271/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/soc_top/ip/soc_top_axi_gpio_0_0/sim/soc_top_axi_gpio_0_0.vhd" \

vcom -work axi_uartlite_v2_0_39 -93  \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/eab1/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/soc_top/ip/soc_top_axi_uartlite_0_0/sim/soc_top_axi_uartlite_0_0.vhd" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_1/sim/bd_35fe_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/0848/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_2/sim/bd_35fe_arinsw_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_3/sim/bd_35fe_rinsw_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_4/sim/bd_35fe_awinsw_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_5/sim/bd_35fe_winsw_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_6/sim/bd_35fe_binsw_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_7/sim/bd_35fe_aroutsw_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_8/sim/bd_35fe_routsw_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_9/sim/bd_35fe_awoutsw_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_10/sim/bd_35fe_woutsw_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_11/sim/bd_35fe_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_12/sim/bd_35fe_arni_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_13/sim/bd_35fe_rni_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_14/sim/bd_35fe_awni_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_15/sim/bd_35fe_wni_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_16/sim/bd_35fe_bni_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/3d9a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_17/sim/bd_35fe_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/7785/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_18/sim/bd_35fe_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/3051/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_19/sim/bd_35fe_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/852f/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_20/sim/bd_35fe_s00a2s_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_21/sim/bd_35fe_sarn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_22/sim/bd_35fe_srn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_23/sim/bd_35fe_sawn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_24/sim/bd_35fe_swn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_25/sim/bd_35fe_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/fca9/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_26/sim/bd_35fe_m00s2a_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_27/sim/bd_35fe_m00arn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_28/sim/bd_35fe_m00rn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_29/sim/bd_35fe_m00awn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_30/sim/bd_35fe_m00wn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_31/sim/bd_35fe_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/e44a/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_32/sim/bd_35fe_m00e_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_33/sim/bd_35fe_m01s2a_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_34/sim/bd_35fe_m01arn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_35/sim/bd_35fe_m01rn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_36/sim/bd_35fe_m01awn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_37/sim/bd_35fe_m01wn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_38/sim/bd_35fe_m01bn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_39/sim/bd_35fe_m01e_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_40/sim/bd_35fe_m02s2a_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_41/sim/bd_35fe_m02arn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_42/sim/bd_35fe_m02rn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_43/sim/bd_35fe_m02awn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_44/sim/bd_35fe_m02wn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_45/sim/bd_35fe_m02bn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_46/sim/bd_35fe_m02e_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_47/sim/bd_35fe_m03s2a_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_48/sim/bd_35fe_m03arn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_49/sim/bd_35fe_m03rn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_50/sim/bd_35fe_m03awn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_51/sim/bd_35fe_m03wn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_52/sim/bd_35fe_m03bn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_53/sim/bd_35fe_m03e_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_54/sim/bd_35fe_m04s2a_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_55/sim/bd_35fe_m04arn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_56/sim/bd_35fe_m04rn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_57/sim/bd_35fe_m04awn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_58/sim/bd_35fe_m04wn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_59/sim/bd_35fe_m04bn_0.sv" \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/ip/ip_60/sim/bd_35fe_m04e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/bd_0/sim/bd_35fe.v" \

vcom -work smartconnect_v1_0 -93  \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.sv" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_36  -v2k5 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/bc4b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_22  -sv2k12 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/b16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../bd/soc_top/ip/soc_top_axi_smc_0/sim/soc_top_axi_smc_0.sv" \

vcom -work axi_apb_bridge_v3_0_21 -93  \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/6670/hdl/axi_apb_bridge_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/soc_top/ip/soc_top_axi_apb_bridge_0_1/sim/soc_top_axi_apb_bridge_0_1.vhd" \

vlog -work xlconstant_v1_1_10  -v2k5 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/a165/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../bd/soc_top/ip/soc_top_xlconstant_0_0/sim/soc_top_xlconstant_0_0.v" \
"../../../bd/soc_top/ip/soc_top_xlconstant_1_0/sim/soc_top_xlconstant_1_0.v" \

vlog -work xlconcat_v2_1_7  -v2k5 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/9c1a/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../basys3_top.gen/sources_1/bd/soc_top/ipshared/ec67/hdl" "+incdir+../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_7 -l axi_intc_v4_1_22 -l axi_timer_v2_0_37 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_uartlite_v2_0_39 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_apb_bridge_v3_0_21 -l xlconstant_v1_1_10 -l xlconcat_v2_1_7 \
"../../../bd/soc_top/ip/soc_top_xlconcat_0_0/sim/soc_top_xlconcat_0_0.v" \
"../../../bd/soc_top/sim/soc_top.v" \

vlog -work xil_defaultlib \
"glbl.v"

