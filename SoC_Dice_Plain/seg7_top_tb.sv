`timescale 1ns/1ps

`default_nettype none
module seg7_top_tb;
  logic clk = 1'b0;
  logic rst_n = 1'b0;

  logic [31:0] paddr;
  logic        penable;
  logic        psel;
  logic        pwrite;
  logic [31:0] pwdata;
  logic [3:0]  pstrb;
  logic [2:0]  pprot;
  logic        pready;
  logic        pslverr;
  logic [31:0] prdata;
  logic [6:0]  seg7_seg;
  logic [3:0]  seg7_an;
  logic        seg7_dp;

  always #5 clk = ~clk;

  apb_master apb (
    .PCLK    (clk),
    .PRESETn (rst_n),
    .PADDR   (paddr),
    .PSEL    (psel),
    .PENABLE (penable),
    .PWRITE  (pwrite),
    .PWDATA  (pwdata),
    .PSTRB   (pstrb),
    .PPROT   (pprot),
    .PRDATA  (prdata),
    .PREADY  (pready),
    .PSLVERR (pslverr)
  );

  seg7_top dut (
    .clk      (clk),
    .rst_n    (rst_n),
    .paddr    (paddr[11:0]),
    .penable  (penable),
    .psel     (psel),
    .pwrite   (pwrite),
    .pwdata   (pwdata),
    .pready   (pready),
    .pslverr  (pslverr),
    .prdata   (prdata),
    .seg7_seg (seg7_seg),
    .seg7_an  (seg7_an),
    .seg7_dp  (seg7_dp)
  );

  initial begin
    bit error;

    repeat (2) @(posedge clk);
    rst_n <= 1'b1;

    // "1234" at full brightness
    apb.write(32'h0000_0008, 32'h0000_000f, '0, 3'b000, error);  // DIM = 15
    apb.write(32'h0000_0004, 32'h0000_1234, '0, 3'b000, error);  // VAL = 1234
    apb.write(32'h0000_0000, 32'h0000_0001, '0, 3'b000, error);  // CTL: enable

    #700us;  // one full scan of all 4 digits (655 us)

    // "8888" with all decimal points (DP0..DP3 = bits 16/20/24/28)
    apb.write(32'h0000_0004, 32'h1111_8888, '0, 3'b000, error);  // VAL = 8.8.8.8.

    #700us;

    $finish;
  end
endmodule
`default_nettype wire
