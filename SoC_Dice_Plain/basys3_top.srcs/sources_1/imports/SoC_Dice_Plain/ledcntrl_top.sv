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


  // -------------------------------------------------------------------------
  // Implementation
  // -------------------------------------------------------------------------


endmodule
`default_nettype wire
