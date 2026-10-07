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
    logic [31:0] read_data;

    repeat (2) @(posedge clk);
    rst_n <= 1'b1;

    apb.write(32'h0000_0008, 32'h0000_000f, '0, 3'b000, error);
    if (error) $fatal(1, "DIM write failed");
    apb.write(32'h0000_0004, 32'h0000_4321, '0, 3'b000, error);
    if (error) $fatal(1, "VAL write failed");
    apb.write(32'h0000_0000, 32'h0000_0001, '0, 3'b000, error);
    if (error) $fatal(1, "CTL write failed");

    apb.read(32'h0000_0008, read_data, 3'b000, error);
    if (error || read_data !== 32'h0000_000f) $fatal(1, "DIM read failed");
    apb.read(32'h0000_0004, read_data, 3'b000, error);
    if (error || read_data !== 32'h0000_4321) $fatal(1, "VAL read failed");
    apb.read(32'h0000_0000, read_data, 3'b000, error);
    if (error || read_data !== 32'h0000_0001) $fatal(1, "CTL read failed");

    repeat (4) @(posedge clk);
    if (seg7_an === 4'b1111 || seg7_seg === 7'b1111111)
      $fatal(1, "Display did not enable");

    apb.write(32'h0000_0000, 32'h0000_0000, '0, 3'b000, error);
    if (error) $fatal(1, "CTL disable write failed");
    repeat (2) @(posedge clk);
    if (seg7_an !== 4'b1111 || seg7_seg !== 7'b1111111 || seg7_dp !== 1'b1)
      $fatal(1, "Display did not disable");

    $display("seg7_top_tb PASS");
    $finish;
  end
endmodule
`default_nettype wire
