`timescale 1ns/1ps

`default_nettype none
module ledcntrl_top_tb;
  import ahb3lite_pkg::*;

  logic clk   = 1'b0;
  logic rst_n = 1'b1;

  // AHB signals driven by the BFM
  logic [31:0] bfm_haddr;
  logic [31:0] bfm_hwdata;
  logic        bfm_hwrite;
  logic  [1:0] bfm_htrans;

  // AHB signals at the DUT
  wire  [31:0] haddr;
  wire  [31:0] hwdata;
  wire         hwrite;
  wire   [1:0] htrans;
  logic [31:0] hrdata;
  logic        hready_out;
  logic        hresp;
  wire         int_out;
  wire  [15:0] led_out;

  always #5 clk = ~clk;

  // The BFM drives with blocking assignments right at the clock edge.
  // The 1 ns delay avoids a race with the DUT flip-flops on that edge.
  assign #1 haddr  = bfm_haddr;
  assign #1 hwdata = bfm_hwdata;
  assign #1 hwrite = bfm_hwrite;
  assign #1 htrans = bfm_htrans;

  ahb3lite_master_bfm #(
    .HADDR_SIZE (32),
    .HDATA_SIZE (32)
  ) bfm (
    .HRESETn   (rst_n),
    .HCLK      (clk),
    .HSEL      (),
    .HADDR     (bfm_haddr),
    .HWDATA    (bfm_hwdata),
    .HRDATA    (hrdata),
    .HWRITE    (bfm_hwrite),
    .HSIZE     (),
    .HBURST    (),
    .HPROT     (),
    .HTRANS    (bfm_htrans),
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

  // Single 32-bit transfers (the BFM takes the data as an array)
  task automatic ahb_write(input logic [31:0] addr, input logic [31:0] data);
    logic [31:0] buffer[];
    buffer    = new[1];
    buffer[0] = data;
    bfm.write(addr, buffer, HSIZE_WORD, 0, HBURST_SINGLE);
    bfm.idle();
  endtask

  task automatic ahb_read(input logic [31:0] addr, output logic [31:0] data);
    logic [31:0] buffer[];
    buffer = new[1];
    bfm.read_blocking(addr, buffer, HSIZE_WORD, 0, HBURST_SINGLE);
    data = buffer[0];
  endtask

  initial begin
    logic [31:0] rdata;

    #1 rst_n = 1'b0;  // falling edge also resets the BFM
    repeat (2) @(posedge clk);
    rst_n <= 1'b1;
    @(posedge clk);

    // Alternate LEDs, 50 % duty cycle, 1000 Hz (f_PWM = 1 MHz / FREQUENCY)
    ahb_write(32'h0000_0014, {8'h00, 16'd1000, 8'd128}); // CFG: FREQUENCY = 1000, DUTY_CYCLE = 128
    ahb_write(32'h0000_0010, 32'h0000_5555);             // CTL: LED 0, 2, 4, ... 14 on

    // Enable the interrupt and wait until it is asserted
    ahb_write(32'h0000_0000, 32'h0000_0001);             // INT_CLR: clear status left from reset
    ahb_write(32'h0000_0004, 32'h0000_0000);             // INT_MASK: interrupt enabled
    wait (int_out);
    ahb_read(32'h0000_000c, rdata);                      // INT_MASKED: reads 1

    // Clear the interrupt and wait until it is de-asserted
    ahb_write(32'h0000_0000, 32'h0000_0001);             // INT_CLR
    wait (!int_out);

    #1.5ms;  // interrupt is set again at the end of the next PWM period
    $finish;
  end
endmodule
`default_nettype wire
