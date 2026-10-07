`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Klaus Strohmayer 
// 
// Create Date:   
// Design Name: 
// Module Name:    seg7_ctrl 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 4 digit 7 segement display controller
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

`default_nettype none

module seg7_top #(
  parameter int ADDR_W = 12
) (
  input  wire clk,
  input  wire rst_n,
  
  input  wire   [ADDR_W-1:0] paddr  ,
  input  wire                penable,
  input  wire                psel   ,
  input  wire                pwrite ,
  input  wire   [31:0]       pwdata ,
  output logic               pready ,
  output logic               pslverr,  
  output logic [31:0]        prdata ,

  // Seven Segment Display Outputs
  output logic  [6:0]  seg7_seg   , // O; Segment  
  output logic  [3:0]  seg7_an    , // O; Anode of Seg0 ..3
  output logic         seg7_dp      // O; Anode of decimal point  
);

  localparam logic [ADDR_W-1:0] ADDR_CTL = 0;
  localparam logic [ADDR_W-1:0] ADDR_VAL = 4;
  localparam logic [ADDR_W-1:0] ADDR_DIM = 8;

  logic        ctl_enable_ff;
  logic [31:0] val_ff;
  logic  [3:0] dim_ff;

  logic [15:0] scan_count_ff;
  logic  [3:0] pwm_count_ff;
  logic  [1:0] digit_select;
  logic        display_on;
  logic  [3:0] digit_value;
  logic        decimal_point;
  logic  [6:0] segment_active_low;

  wire apb_access = psel && penable;
  wire apb_write  = apb_access && pwrite;
  wire apb_read   = apb_access && !pwrite;

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      ctl_enable_ff <= 1'b0;
      val_ff        <= 32'b0;
      dim_ff        <= 4'b0;
      scan_count_ff <= 16'b0;
      pwm_count_ff  <= 4'b0;
    end else begin
      if (apb_write) begin
        case (paddr)
          ADDR_CTL: ctl_enable_ff <= pwdata[0];
          ADDR_VAL: val_ff        <= pwdata;
          ADDR_DIM: dim_ff        <= pwdata[3:0];
          default: ;
        endcase
      end

      scan_count_ff <= scan_count_ff + 1'b1;
      pwm_count_ff  <= pwm_count_ff + 1'b1;
    end
  end

  always_comb begin
    pready  = 1'b1;
    pslverr = apb_access &&
              (paddr != ADDR_CTL) &&
              (paddr != ADDR_VAL) &&
              (paddr != ADDR_DIM);

    prdata = 32'b0;
    if (apb_read) begin
      case (paddr)
        ADDR_CTL: prdata[0]  = ctl_enable_ff;
        ADDR_VAL: prdata     = val_ff;
        ADDR_DIM: prdata[3:0] = dim_ff;
        default: ;
      endcase
    end
  end

  assign digit_select = scan_count_ff[15:14];

  always_comb begin
    case (digit_select)
      2'd0: begin
        digit_value  = val_ff[3:0];
        decimal_point = val_ff[16];
      end
      2'd1: begin
        digit_value  = val_ff[7:4];
        decimal_point = val_ff[17];
      end
      2'd2: begin
        digit_value  = val_ff[11:8];
        decimal_point = val_ff[18];
      end
      default: begin
        digit_value  = val_ff[15:12];
        decimal_point = val_ff[19];
      end
    endcase

    case (digit_value)
      4'd0: segment_active_low = 7'b1000000;
      4'd1: segment_active_low = 7'b1111001;
      4'd2: segment_active_low = 7'b0100100;
      4'd3: segment_active_low = 7'b0110000;
      4'd4: segment_active_low = 7'b0011001;
      4'd5: segment_active_low = 7'b0010010;
      4'd6: segment_active_low = 7'b0000010;
      4'd7: segment_active_low = 7'b1111000;
      4'd8: segment_active_low = 7'b0000000;
      4'd9: segment_active_low = 7'b0010000;
      default: segment_active_low = 7'b1111111;
    endcase

    display_on = ctl_enable_ff && (dim_ff != 4'b0) &&
                 (pwm_count_ff < dim_ff);

    seg7_seg = 7'b1111111;
    seg7_an  = 4'b1111;
    seg7_dp  = 1'b1;
    if (display_on) begin
      seg7_seg = segment_active_low;
      seg7_an[digit_select] = 1'b0;
      seg7_dp = ~decimal_point;
    end
  end

endmodule
`default_nettype wire
