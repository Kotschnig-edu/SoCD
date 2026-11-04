`timescale 1ns/1ps

`default_nettype none
module ledcntrl_top_tb;
  import ahb3lite_pkg::*;

  localparam time HOLD = 1ms;  // one PWM period at 1000 Hz

  logic clk   = 1'b0;
  logic rst_n = 1'b1;

  logic [31:0] haddr;
  logic [31:0] hwdata;
  logic        hwrite;
  logic  [1:0] htrans;
  logic [31:0] hrdata;
  logic        hready_out;
  logic        hresp;
  wire         int_out;
  wire  [15:0] led_out;

  always #5 clk = ~clk;

  wire bfm_clk;
  assign #1 bfm_clk = clk;  // BFM drives 1 ns after the DUT clock edge: no race

  ahb3lite_master_bfm #(
    .HADDR_SIZE (32),
    .HDATA_SIZE (32)
  ) bfm (
    .HRESETn   (rst_n),
    .HCLK      (bfm_clk),
    .HSEL      (),
    .HADDR     (haddr),
    .HWDATA    (hwdata),
    .HRDATA    (hrdata),
    .HWRITE    (hwrite),
    .HSIZE     (),
    .HBURST    (),
    .HPROT     (),
    .HTRANS    (htrans),
    .HMASTLOCK (),
    .HMASTER   (),
    .HREADY    (hready_out),
    .HRESP     (hresp)
  );

  ledcntrl_top dut (
    .clk        (clk),
    .reset_n    (rst_n),
    .haddr      (haddr),
    .hwrite     (hwrite),
    .htrans     (htrans),
    .hwdata     (hwdata),
    .hrdata     (hrdata),
    .hready     (hready_out),  // only subordinate: HREADY = own HREADYOUT
    .hready_out (hready_out),
    .hresp      (hresp),
    .int_out    (int_out),
    .led_out    (led_out)
  );

  // Single 32-bit write (the BFM takes the data as an array)
  task automatic ahb_write(input logic [31:0] addr, input logic [31:0] data);
    logic [31:0] buffer[];
    buffer    = new[1];
    buffer[0] = data;
    bfm.write(addr, buffer, HSIZE_WORD, 0, HBURST_SINGLE);
    bfm.idle();
  endtask

  initial begin
    #1 rst_n = 1'b0;  // falling edge also resets the BFM
    repeat (2) @(posedge clk);
    rst_n <= 1'b1;
    @(posedge clk);

    ahb_write(32'h0000_0014, {8'h00, 16'd1000, 8'd128}); // CFG: 1000 Hz, 50 % duty cycle
    #750us
    // 1) All LEDs on
    ahb_write(32'h0000_0010, 32'h0000_ffff);             // CTL
    #HOLD;

    // 2) All LEDs off
    ahb_write(32'h0000_0010, 32'h0000_0000);             // CTL
    #HOLD;

    // 3) Cycle through each LED
    for (int i = 0; i < 16; i++) begin
      ahb_write(32'h0000_0010, 32'h0000_0001 << i);      // CTL
      #HOLD;
    end

    // 4) Interrupt, with alternate LEDs on
    ahb_write(32'h0000_0010, 32'h0000_5555);             // CTL
    ahb_write(32'h0000_0000, 32'h0000_0001);             // INT_CLR: status was set while masked
    ahb_write(32'h0000_0004, 32'h0000_0000);             // INT_MASK: interrupt enabled
    wait (int_out);
    ahb_write(32'h0000_0000, 32'h0000_0001);             // INT_CLR
    wait (!int_out);

    #900us;
    $finish;
  end
endmodule
`default_nettype wire
