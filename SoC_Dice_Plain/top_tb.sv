`timescale 1ns/1ps

`default_nettype none
module top_tb;
  logic clk  = 1'b0;
  logic btnC = 1'b1;  // center button = reset (active high)

  logic [15:0] led;
  logic  [6:0] seg;
  logic  [3:0] an;
  logic        dp;
  wire         RsTx;

  always #5 clk = ~clk;

  basys3_top dut (
    .clk  (clk  ),
    .btnC (btnC ),
    .btnU (1'b0 ),
    .btnD (1'b0 ),
    .btnR (1'b0 ),
    .btnL (1'b0 ),
    .RsTx (RsTx ),
    .RsRx (1'b1 ),  // UART idle
    .sw   (16'h0),
    .led  (led  ),
    .seg  (seg  ),
    .an   (an   ),
    .dp   (dp   )
  );

  initial begin
    repeat (10) @(posedge clk);
    btnC <= 1'b0;  // release reset

    #20us;  // core fetches the boot loop from address 0
    $finish;
  end
endmodule
`default_nettype wire
