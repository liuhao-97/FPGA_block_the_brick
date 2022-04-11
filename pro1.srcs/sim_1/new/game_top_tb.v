`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2022 05:19:43 PM
// Design Name: 
// Module Name: game_top_tb
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


module game_top_tb();

reg clk;
reg [4:0] button = 5'b00000;
wire hsync, vsync;
wire [3:0] pix_r, pix_g, pix_b;


game_top game(
.clk(clk),
.button(button),  
.pix_r(pix_r), .pix_g(pix_g), .pix_b(pix_b), 
.hsync(hsync), .vsync(vsync)
    );
    
initial begin
    clk = 1'b0;
  end

always #5 clk = ~clk;

endmodule
