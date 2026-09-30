`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Klaus Strohmayer
// 
// Create Date:    17:08:26 06/12/2014 
// Design Name: 
// Module Name:    basys3_top 
// Project Name: 
// Target Devices: 
// Tool versions: 
//
// Description: 
//   Dice 
//     Read ADC values (1 channel) from PMOD ADC1 (SPI)
//     Send the information to via the UART to the PC (terminal)
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

`default_nettype none
module basys3_top(  
  input wire   clk           , // I; Clock input (100 MHzz)
	 
  //Push Button Inputs	 
  input  wire          btnC  , // I; Center 
  input  wire          btnU  , // I; Up 
  input  wire          btnD  , // I; Down 
  input  wire          btnR  , // I; Left  
  input  wire          btnL  , // I; Right
	 
  // USB-RS232 Interface
  output wire          RsTx  , // O; TXD  
  input  wire          RsRx  , // I; RXD
  
  // Switch an LEDs
  input  wire  [15:0]  sw    , // I; SW 0..15 
  output logic [15:0]  led   , // O; LED Outputs 
     
  // Seven Segment Display Outputs
  output logic  [6:0]  seg   , // O; Segment  
  output logic  [3:0]  an    , // O; Anode of Seg0 ..3
  output logic         dp      // O; Anode of decimal point
);
		

  // -------------------------------------------------------------------------
  // Definition
  // -------------------------------------------------------------------------
  // Reset
  logic       rst_n;
  logic [1:0] rst_nff;
  //logic       clr_ff;
  
  // Debounced inputs
  logic [7:0] deb_din;
  logic [7:0] deb_dout;
  logic [7:0] deb_dout_pls;
            
   
  // Testmux
  //                         logic [15:0] test_mux_din  [3:0];
  // (* MARK_DEBUG="TRUE" *) logic [1:0]  test_mux_sel;
  // (* MARK_DEBUG="TRUE" *) logic [15:0] test_mux_out;


  // -------------------------------------------------------------------------
  // Implementation
  // -------------------------------------------------------------------------
  
  // Reset generation
  always @(negedge clk or posedge btnC) begin
    if (btnC) begin
      rst_nff <= 2'b00;
    end else begin
     rst_nff <= {rst_nff[0], 1'b1};
    end  
  end
  assign rst_n = rst_nff[1];
  
  // Handling of all IOs: sync debounce and pulse generation (if required)
  assign deb_din = {sw[15], sw[14], sw[13], sw[2], sw[1], sw[0], btnD, btnU};
  ste_debounce_array #(
    .NBR      (8),
    .SYNC     (8'b11_1_11_111),
    .CNT_W    (4),
    .PLS_RISE (8'b00_0_00_011),
    .PLS_FALL (8'b00_0_00_000)
  ) u_ste_debounce_array(
    .clk       (clk          ), // I; System clock 
    .rst_n     (rst_n        ), // I; active loaw reset 
    .din_i     (deb_din      ), // I; Data in to be debounced
    .deb_rise_i(4'hf         ), // I; maximal count value
    .deb_fall_i(4'hf         ), // I; maximal count value
    .dout_pls_o(deb_dout_pls ), // O; Debounced output pulse 
    .dout_o    (deb_dout     )  // O; Debounced data out
  );
    

  assign led = sw;

    
  // SoC
  wire [31:0]apb_0_paddr;
  wire apb_0_penable;
  wire [31:0]apb_0_prdata;
  wire [0:0]apb_0_pready;
  wire [0:0]apb_0_psel;
  wire [0:0]apb_0_pslverr;
  wire [31:0]apb_0_pwdata;
  wire apb_0_pwrite;
  wire [31:0]apb_1_paddr;
  wire apb_1_penable;
  wire [31:0]apb_1_prdata;
  wire [0:0]apb_1_pready;
  wire [0:0]apb_1_psel;
  wire [0:0]apb_1_pslverr;
  wire [31:0]apb_1_pwdata;
  wire apb_1_pwrite;
  logic pwm;
  
  assign apb_1_prdata  = 32'h0101_0101;
  assign apb_1_pready  = 1'b1;
  assign apb_1_pslverr = 1'b0; 

  seg7_top #(
    .ADDR_W(12)
  ) u_seg7_top(
    .clk  (clk  ),
    .rst_n(rst_n),
  
    .paddr  (apb_0_paddr  ),
    .penable(apb_0_penable),
    .psel   (apb_0_psel   ),
    .pwrite (apb_0_pwrite ),
    .pwdata (apb_0_pwdata ),
    .pready (apb_0_pready ),
    .pslverr(apb_0_pslverr),  
    .prdata (apb_0_prdata ),

    // Seven Segment Display Outputs
    .seg7_seg   (seg), // O; Segment  
    .seg7_an    (an ), // O; Anode of Seg0 ..3
    .seg7_dp    (dp )  // O; Anode of decimal point  
  );

  
//  soc_top soc_top_i (
//        .apb_0_paddr  (apb_0_paddr  ),
//        .apb_0_penable(apb_0_penable),
//        .apb_0_prdata (apb_0_prdata ),
//        .apb_0_pready (apb_0_pready ),
//        .apb_0_psel   (apb_0_psel   ),
//        .apb_0_pslverr(apb_0_pslverr),
//        .apb_0_pwdata (apb_0_pwdata ),
//        .apb_0_pwrite (apb_0_pwrite ),
//        .apb_1_paddr  (apb_1_paddr  ),
//        .apb_1_penable(apb_1_penable),
//        .apb_1_prdata (apb_1_prdata ),
//        .apb_1_pready (apb_1_pready ),
//        .apb_1_psel   (apb_1_psel   ),
//        .apb_1_pslverr(apb_1_pslverr),
//        .apb_1_pwdata (apb_1_pwdata ),
//        .apb_1_pwrite (apb_1_pwrite ),
//        .clk_100MHz   (clk),
//        .gpio_0_tri_i (32'haaaa_aaaa),
//        .gpio_0_tri_o (),
//        .gpio_0_tri_t (),
//        .pwm          (pwm),
//        .reset_n      (rst_n),
//        .uart_rxd     (RsRx),
//        .uart_txd     (RsTx)
//  );  
  
  
endmodule
`default_nettype wire 


