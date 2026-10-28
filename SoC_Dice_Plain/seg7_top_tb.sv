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

  // Active-low segment patterns {g,f,e,d,c,b,a}
  localparam logic [6:0] SEG_1     = 7'b1111001;
  localparam logic [6:0] SEG_2     = 7'b0100100;
  localparam logic [6:0] SEG_3     = 7'b0110000;
  localparam logic [6:0] SEG_4     = 7'b0011001;
  localparam logic [6:0] SEG_BLANK = 7'b1111111;

  // Anode select (active low); an[0] is the rightmost digit on the Basys3
  localparam logic [3:0] AN_DIG0 = 4'b1110;
  localparam logic [3:0] AN_DIG1 = 4'b1101;
  localparam logic [3:0] AN_DIG2 = 4'b1011;
  localparam logic [3:0] AN_DIG3 = 4'b0111;

  // One full scan of all 4 digits takes 65536 clocks (655 us)
  localparam int SCAN_TIMEOUT = 70000;

  // Watchdog: run all always terminates
  initial begin
    #10ms;
    $fatal(1, "Simulation timeout");
  end

  task automatic reg_write(input logic [31:0] addr, input logic [31:0] data);
    bit error;
    apb.write(addr, data, '0, 3'b000, error);
    if (error) $fatal(1, "Write to 0x%0h failed", addr);
  endtask

  task automatic reg_check(input logic [31:0] addr, input logic [31:0] exp);
    bit error;
    logic [31:0] data;
    apb.read(addr, data, 3'b000, error);
    if (error || data !== exp)
      $fatal(1, "Read 0x%0h: got 0x%08h, expected 0x%08h", addr, data, exp);
  endtask

  // Wait until the given digit is selected, then check segments and DP
  task automatic check_digit(input string      name,
                             input logic [3:0] an_exp,
                             input logic [6:0] seg_exp,
                             input logic       dp_exp);
    int cycles = 0;
    do begin
      @(posedge clk);
      if (++cycles > SCAN_TIMEOUT) $fatal(1, "%s: anode %b never selected", name, an_exp);
    end while (seg7_an !== an_exp);
    if (seg7_seg !== seg_exp || seg7_dp !== dp_exp)
      $fatal(1, "%s: seg=%b dp=%b, expected seg=%b dp=%b",
             name, seg7_seg, seg7_dp, seg_exp, dp_exp);
    $display("[%0t] %s ok (an=%b seg=%b dp=%b)", $time, name, seg7_an, seg7_seg, seg7_dp);
  endtask

  // Count clocks with any digit lit over 1024 clocks (64 PWM periods)
  task automatic check_duty(input int on_exp);
    int on_cycles = 0;
    repeat (1024) begin
      @(posedge clk);
      if (seg7_an !== 4'b1111) on_cycles++;
    end
    if (on_cycles != on_exp)
      $fatal(1, "Dimming: %0d/1024 on-cycles, expected %0d", on_cycles, on_exp);
    $display("[%0t] Dimming ok (%0d/1024 on-cycles)", $time, on_cycles);
  endtask

  initial begin
    bit error;
    logic [31:0] read_data;

    repeat (2) @(posedge clk);
    rst_n <= 1'b1;

    // Display "1234" at full brightness
    reg_write(32'h0000_0008, 32'h0000_000f);
    reg_write(32'h0000_0004, 32'h0000_1234);
    reg_write(32'h0000_0000, 32'h0000_0001);

    reg_check(32'h0000_0008, 32'h0000_000f);
    reg_check(32'h0000_0004, 32'h0000_1234);
    reg_check(32'h0000_0000, 32'h0000_0001);

    // Scan order is DIG0 (right) .. DIG3 (left); reads "1234" on the board
    check_digit("DIG0 = 4", AN_DIG0, SEG_4, 1'b1);
    check_digit("DIG1 = 3", AN_DIG1, SEG_3, 1'b1);
    check_digit("DIG2 = 2", AN_DIG2, SEG_2, 1'b1);
    check_digit("DIG3 = 1", AN_DIG3, SEG_1, 1'b1);

    // Decimal point DP1 (bit 20) lights only on digit 1
    reg_write(32'h0000_0004, 32'h0010_1234);
    check_digit("DP1 on",  AN_DIG1, SEG_3, 1'b0);
    check_digit("DP2 off", AN_DIG2, SEG_2, 1'b1);

    // Reserved bits read as 0, digit values > 9 are blanked
    reg_write(32'h0000_0004, 32'hffff_ffff);
    reg_check(32'h0000_0004, 32'h1111_ffff);
    check_digit("DIG0 = F blank", AN_DIG0, SEG_BLANK, 1'b0);
    reg_write(32'h0000_0004, 32'h0000_1234);

    // Dimming: on-time is DIM/16
    reg_write(32'h0000_0008, 32'h0000_0000);
    check_duty(0);
    reg_write(32'h0000_0008, 32'h0000_0008);
    check_duty(512);
    reg_write(32'h0000_0008, 32'h0000_000f);
    check_duty(960);

    // Unmapped address returns PSLVERR ("APB READ ERROR" print is expected)
    apb.read(32'h0000_000c, read_data, 3'b000, error);
    if (!error) $fatal(1, "No PSLVERR on unmapped address 0x00C");

    // Disable switches the display off
    reg_write(32'h0000_0000, 32'h0000_0000);
    check_duty(0);
    if (seg7_seg !== SEG_BLANK || seg7_dp !== 1'b1)
      $fatal(1, "Display did not disable");

    $display("seg7_top_tb PASS");
    $finish;
  end
endmodule
`default_nettype wire
