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

 
endmodule
`default_nettype wire
