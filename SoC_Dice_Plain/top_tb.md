# Testbench `top_tb`

`top_tb` ([top_tb.sv](top_tb.sv)) simulates the complete SoC (`basys3_top`). It generates the clock and the reset, ties all other inputs to constant values and lets the MicroBlaze V core run the boot loop from the block RAM.

## Block diagram

```mermaid
flowchart LR
  subgraph TB["top_tb"]
    CLK["clk<br/>100 MHz"]
    RST["btnC<br/>reset for 10 clocks"]
    TIE["constant inputs<br/>btnU/D/R/L = 0<br/>sw = 0x0000<br/>RsRx = 1 (UART idle)"]

    subgraph DUT["dut: basys3_top"]
      RG["reset generation<br/>rst_n"]
      DEB["u_ste_debounce_array"]
      SEG7["u_seg7_top<br/>7-segment controller"]
      LEDC["u_ledcntrl_top<br/>LED controller"]
      APB1["APB port 1 (unused)<br/>prdata = 0xa5a5_5a5a"]

      subgraph SOC["soc_top_i: soc_top (block design)"]
        PSR["proc_sys_reset_0"]
        MDM["mdm_riscv_0<br/>debug module"]
        CPU["microblaze_riscv_0<br/>MicroBlaze V"]
        LMB["lmb_bram_if_cntlr_0"]
        BRAM["blk_mem_gen_0<br/>boot loop at 0x0"]
        SMC["axi_smc<br/>SmartConnect"]
        GPIO["axi_gpio_0"]
        INTC["axi_intc_0"]
        TMR["axi_timer_0"]
        UART["axi_uartlite_0"]
        APBB["axi_apb_bridge_0"]
        PC["axi_protocol_convert_0<br/>AXI4-Lite to AXI4"]
        AHBB["axi_ahblite_bridge_0"]
      end
    end

    OSEG["seg, an, dp"]
    OLED["led[15:0]"]
    OTX["RsTx"]
  end

  CLK --> RG
  RST --> RG
  TIE --> DEB
  TIE -->|RsRx| UART
  RG -->|rst_n| PSR
  RG -->|rst_n| SEG7
  RG -->|rst_n| LEDC

  PSR -->|mb_reset| CPU
  MDM -->|debug| CPU
  CPU <-->|DLMB| LMB
  LMB <--> BRAM
  CPU -->|M_AXI_DP| SMC

  SMC -->|M00| GPIO
  SMC -->|M01| INTC
  SMC -->|M02| TMR
  SMC -->|M03| UART
  SMC -->|M04| APBB
  SMC -->|M05| PC
  PC -->|AXI4| AHBB

  TMR -->|interrupt| INTC
  UART -->|interrupt| INTC
  INTC -->|Interrupt| CPU

  APBB -->|apb_0| SEG7
  APBB -->|apb_1| APB1
  AHBB -->|ahb_0| LEDC

  SEG7 --> OSEG
  LEDC --> OLED
  UART --> OTX
```

The clock (`clk`) goes to every block; its arrows are left out for readability.

## Stimulus

| Time | Action |
|---|---|
| 0 | `btnC = 1`: reset active |
| 10 clocks | `btnC = 0`: reset released |
| + 20 µs | `$finish` |

## What to check in the waveform

Signals in scope `top_tb/dut/soc_top_i`:

| Signal | Expected |
|---|---|
| `proc_sys_reset_0_mb_reset` | falls a few clocks after `btnC` is released |
| `microblaze_riscv_0_DLMB_ADDRSTROBE` | pulses repeatedly: the core fetches instructions |
| `microblaze_riscv_0_DLMB_ABUS` | `00000000` |
| `microblaze_riscv_0_DLMB_READDBUS` | `0000006F` (`jal x0, 0`, a jump to itself) |
