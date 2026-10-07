// Simple APB testbench master (APB4/APB5-style signals)
// Follows: setup phase (PSEL=1, PENABLE=0), then enable (PENABLE=1) until PREADY.
// PSLVERR is captured when PREADY=1 (transfer completes).

module apb_master #(
  parameter int ADDR_WIDTH = 32,
  parameter int DATA_WIDTH = 32
)(
  input  logic                     PCLK,
  input  logic                     PRESETn,

  // Manager (master) outputs to DUT (subordinate)
  output logic [ADDR_WIDTH-1:0]    PADDR,
  output logic                     PSEL,
  output logic                     PENABLE,
  output logic                     PWRITE,
  output logic [DATA_WIDTH-1:0]    PWDATA,
  output logic [(DATA_WIDTH/8)-1:0] PSTRB,   // APB4+ write strobes
  output logic [2:0]               PPROT,    // optional protection

  // Inputs from DUT
  input  logic [DATA_WIDTH-1:0]    PRDATA,
  input  logic                     PREADY,
  input  logic                     PSLVERR
);

  // ------------------------
  // Internal defaults / idle
  // ------------------------
  localparam int STRB_WIDTH = (DATA_WIDTH/8);

  // Drive idle on reset
  always_ff @(negedge PRESETn or posedge PCLK) begin
    if (!PRESETn) begin
      PSEL    <= 1'b0;
      PENABLE <= 1'b0;
      PWRITE  <= 1'b0;
      PADDR   <= '0;
      PWDATA  <= '0;
      PSTRB   <= '0;
      PPROT   <= 3'b000;
    end
  end

  // Helper: put bus to idle cleanly
  task automatic idle();
    @(posedge PCLK);
    PSEL    <= 1'b0;
    PENABLE <= 1'b0;
    PWRITE  <= 1'b0;
    PADDR   <= '0;
    PWDATA  <= '0;
    PSTRB   <= '0;
    PPROT   <= 3'b000;
  endtask

  // ----------------------------------------------------------------
  // Low-level APB single transfer (internal): common handshake body
  // ----------------------------------------------------------------
  task automatic do_transfer(
      input  bit                      is_write,
      input  logic [ADDR_WIDTH-1:0]   addr,
      input  logic [DATA_WIDTH-1:0]   wdata,
      input  logic [STRB_WIDTH-1:0]   wstrb,
      input  logic [2:0]              prot,
      output logic [DATA_WIDTH-1:0]   rdata,
      output bit                      slverr
  );
    // SETUP phase
    @(posedge PCLK);
    PSEL   <= 1'b1;
    PENABLE<= 1'b0;
    PWRITE <= is_write;
    PADDR  <= addr;
    PPROT  <= prot;
    if (is_write) begin
      PWDATA <= wdata;
      PSTRB  <= (wstrb == '0) ? {STRB_WIDTH{1'b1}} : wstrb; // default: all bytes
    end else begin
      PSTRB  <= '0;
    end

    // ENABLE phase (PENABLE=1). Hold stable until PREADY=1.
    @(posedge PCLK);
    PENABLE <= 1'b1;

    // Wait for completion (allows wait states)
    // Recommendation: add a timeout in real benches.
    do begin
      @(posedge PCLK);
    end while (!PREADY);

    // Sample results at completion edge
    if (!is_write) rdata = PRDATA;
    slverr = PSLVERR;

    // Return to IDLE or keep PSEL high to support back-to-back transfers.
    // For simplicity here, we go to IDLE.
    PSEL    <= 1'b0;
    PENABLE <= 1'b0;
    PWRITE  <= 1'b0;
  endtask

  // -----------------------------
  // Public WRITE and READ tasks
  // -----------------------------
  // Blocking APB write
  task automatic write(
      input  logic [ADDR_WIDTH-1:0]  addr,
      input  logic [DATA_WIDTH-1:0]  data,
      input  logic [STRB_WIDTH-1:0]  strb = '0,      // default -> all bytes
      input  logic [2:0]             prot = 3'b000, // normal, non-secure, data by default
      output bit                     error
  );
    logic [DATA_WIDTH-1:0] dummy_r;
    do_transfer(1'b1, addr, data, strb, prot, dummy_r, error);
    if (error) $display("[%0t] APB WRITE ERROR addr=0x%0h data=0x%0h", $time, addr, data);
  endtask

  // Blocking APB read
  task automatic read(
      input  logic [ADDR_WIDTH-1:0]  addr,
      output logic [DATA_WIDTH-1:0]  data,
      input  logic [2:0]             prot = 3'b000,
      output bit                     error
  );
    do_transfer(1'b0, addr, '0, '0, prot, data, error);
    if (error) $display("[%0t] APB READ ERROR addr=0x%0h data=0x%0h", $time, addr, data);
  endtask

  // Convenience: write-then-readback check
  task automatic write_check(
      input  logic [ADDR_WIDTH-1:0]  addr,
      input  logic [DATA_WIDTH-1:0]  data,
      output bit                     ok
  );
    bit err_w, err_r;
    logic [DATA_WIDTH-1:0] rb;
    write(addr, data, '0, 3'b000, err_w);
    read (addr, rb,   3'b000, err_r);
    ok = (!err_w && !err_r && rb === data);
    if (!ok) $display("[%0t] APB WRITE_CHECK FAILED addr=0x%0h exp=0x%0h got=0x%0h", $time, addr, data, rb);
  endtask

endmodule
