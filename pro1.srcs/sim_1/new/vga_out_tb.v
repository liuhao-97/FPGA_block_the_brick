`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2022 04:22:04 PM
// Design Name: 
// Module Name: vga_out_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vga_out_tb();
  reg clk;
  wire [3:0] pix_r, pix_g, pix_b;
  wire hsync, vsync;
  wire [10:0] curr_x;
  wire [9:0] curr_y;

  vga_out uut (.clk(clk), 
  .pix_r(pix_r), .pix_g(pix_g), .pix_b(pix_b), 
  .hsync(hsync), .vsync(vsync), .curr_x(curr_x), .curr_y(curr_y));
  
  initial begin
    clk = 1'b0;
  end
    
    always #5 clk = ~clk;

endmodule
