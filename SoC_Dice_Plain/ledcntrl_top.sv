//  ----------------------------------------------------------------------------
//                    Design Information
//  ----------------------------------------------------------------------------
//
//  File             ledcntrl_top.sv
//  Author           Kotschnig, Eingang
//
//  Description       LED Controller
//                     - AHB register interface
//                     - 16 LEDs driven by PWM (duty cycle + frequency configurable)
//                     - Interrupt when the PWM counter reaches its terminal value
//
//  ----------------------------------------------------------------------------

`default_nettype none
module ledcntrl_top (
  // Global signals
  input   wire          clk        , // I; System clock
  input   wire          reset_n    , // I; Active low reset

  // AHB Bus interface
  input   wire  [31:0]  haddr      , // I; Address
  input   wire          hwrite     , // I; 1: write, 0: read
  input   wire  [ 1:0]  htrans     , // I; Transfer type (IDLE, BUSY, NONSEQ, SEQ)
  input   wire  [31:0]  hwdata     , // I; Write data
  output  logic [31:0]  hrdata     , // O; Read data
  input   wire          hready     , // I; Previous transfer finished
  output  logic         hready_out , // O; Slave ready
  output  logic         hresp      , // O; Response (0: OKAY, 1: ERROR)

  // Interrupt out
  output  wire          int_out    , // O; Interrupt

  // LED out
  output  wire  [15:0]  led_out      // O; LED outputs
);

  // -------------------------------------------------------------------------
  // Definition
  // -------------------------------------------------------------------------
  // Register word addresses (haddr[7:2])
  localparam logic [5:0] ADDR_INT_CLR    = 6'h00; // 0x00
  localparam logic [5:0] ADDR_INT_MASK   = 6'h01; // 0x04
  localparam logic [5:0] ADDR_INT_STAT   = 6'h02; // 0x08
  localparam logic [5:0] ADDR_INT_MASKED = 6'h03; // 0x0C
  localparam logic [5:0] ADDR_CTL        = 6'h04; // 0x10
  localparam logic [5:0] ADDR_CFG        = 6'h05; // 0x14

  // AHB: address phase -> data phase
  logic        ahb_valid;
  logic        ahb_wr_ff;
  logic        ahb_rd_ff;
  logic  [5:0] ahb_addr_ff;

  // Registers
  logic        int_clr;
  logic        int_mask_ff;
  logic        int_stat_ff;
  logic [15:0] ctl_enable_ff;
  logic  [7:0] cfg_duty_ff;
  logic [15:0] cfg_freq_ff;

  // PWM
  localparam logic [6:0] PRESC_MAX = 7'd99;  // prescaler /100: 100 MHz -> 1 MHz tick

  logic  [6:0] presc_cnt_ff;
  logic        presc_tc;
  logic [15:0] freq_cnt_ff;
  logic        freq_tc;
  logic [23:0] duty_prod;
  logic [15:0] led_ff;


  // -------------------------------------------------------------------------
  // Implementation
  // -------------------------------------------------------------------------

  // AHB address phase: NONSEQ/SEQ transfer while the bus is ready
  // (no HSEL: the controller is the only subordinate on this bus)
  assign ahb_valid = htrans[1] & hready;

  always_ff @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
      ahb_wr_ff   <= 1'b0;
      ahb_rd_ff   <= 1'b0;
      ahb_addr_ff <= '0;
    end else begin
      ahb_wr_ff <= ahb_valid &  hwrite;
      ahb_rd_ff <= ahb_valid & ~hwrite;
      if (ahb_valid) ahb_addr_ff <= haddr[7:2];
    end
  end

  // AHB data phase: register write (hwdata is valid one cycle after the address)
  always_ff @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
      int_mask_ff   <= 1'b1;
      ctl_enable_ff <= '0;
      cfg_duty_ff   <= '0;
      cfg_freq_ff   <= '0;
    end else if (ahb_wr_ff) begin
      case (ahb_addr_ff)
        ADDR_INT_MASK: int_mask_ff   <= hwdata[0];
        ADDR_CTL:      ctl_enable_ff <= hwdata[15:0];
        ADDR_CFG: begin
          cfg_duty_ff <= hwdata[7:0];
          cfg_freq_ff <= hwdata[23:8];
        end
        default: ;
      endcase
    end
  end

  // INT_CLR is not stored: writing 1 to CL gives a one-cycle clear pulse
  assign int_clr = ahb_wr_ff & (ahb_addr_ff == ADDR_INT_CLR) & hwdata[0];

  // AHB data phase: register read (INT_CLR and unmapped addresses read 0)
  always_comb begin
    hrdata = 32'h0;
    if (ahb_rd_ff) begin
      case (ahb_addr_ff)
        ADDR_INT_MASK:   hrdata[0]    = int_mask_ff;
        ADDR_INT_STAT:   hrdata[0]    = int_stat_ff;
        ADDR_INT_MASKED: hrdata[0]    = int_stat_ff & ~int_mask_ff;
        ADDR_CTL:        hrdata[15:0] = ctl_enable_ff;
        ADDR_CFG:        hrdata[23:0] = {cfg_freq_ff, cfg_duty_ff};
        default: ;
      endcase
    end
  end

  // No wait states, never an error
  assign hready_out = 1'b1;
  assign hresp      = 1'b0;

  // PWM: the frequency counter counts 1 MHz ticks 0..FREQUENCY-1 (terminal value).
  // LEDs are on while the counter is below FREQUENCY * DUTY_CYCLE / 256.
  //   f_PWM = 1 MHz / FREQUENCY,  duty cycle = DUTY_CYCLE / 256
  assign presc_tc  = (presc_cnt_ff == PRESC_MAX);
  assign freq_tc   = presc_tc & ((freq_cnt_ff + 1'b1) >= cfg_freq_ff);
  assign duty_prod = cfg_freq_ff * cfg_duty_ff;

  always_ff @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
      presc_cnt_ff <= '0;
      freq_cnt_ff  <= '0;
      led_ff       <= '0;
    end else begin
      if (presc_tc) begin
        presc_cnt_ff <= '0;
        freq_cnt_ff  <= freq_tc ? '0 : freq_cnt_ff + 1'b1;
      end else begin
        presc_cnt_ff <= presc_cnt_ff + 1'b1;
      end
      led_ff <= ctl_enable_ff & {16{freq_cnt_ff < duty_prod[23:8]}};
    end
  end

  assign led_out = led_ff;

  // Interrupt status: set at the terminal value, cleared by INT_CLR (set wins)
  always_ff @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
      int_stat_ff <= 1'b0;
    end else if (freq_tc) begin
      int_stat_ff <= 1'b1;
    end else if (int_clr) begin
      int_stat_ff <= 1'b0;
    end
  end

  assign int_out = int_stat_ff & ~int_mask_ff;

endmodule
`default_nettype wire
