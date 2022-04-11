`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2022 05:30:11 PM
// Design Name: 
// Module Name: game_top
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


module game_top(
input clk,
input [4:0] button,  // middle up down left right 
output [3:0] pix_r, pix_g, pix_b, 
output hsync, vsync
    );
    
wire pixclk;
wire [10:0] draw_x;
wire [9:0] draw_y;
wire [3:0] draw_r, draw_g, draw_b;
wire [10:0] blkpos_x;
wire [9:0] blkpos_y;

reg [10:0] ballpos_x;
reg [9:0] ballpos_y;

//83.46Hz
clk_wiz_0 clk_wiz(         
    // Clock out ports
    .clk_out1(pixclk),     // output clk_out1
   
   // Clock in ports
    .clk_in1(clk));  

/*Divide to 60HZ clk*/
reg clk60hz = 1'b0;
reg [20:0] clk_counter = 21'd0;
always @(posedge clk)
begin
clk_counter = clk_counter + 21'd1;
if (clk_counter == 21'd600000) //
    begin
    clk_counter = 21'd0;
    clk60hz =  ~clk60hz;
    end
end


drawcon draw (.clk(clk60hz), .blkpos_x(blkpos_x), .blkpos_y(blkpos_y), .draw_x(draw_x), .draw_y(draw_y), .r(draw_r), .g(draw_g), .b(draw_b));
  
vga_out vga_show (.clk(pixclk), .draw_r(draw_r), .draw_g(draw_g), .draw_b(draw_b),
.pix_r(pix_r), .pix_g(pix_g), .pix_b(pix_b), .hsync(hsync), .vsync(vsync),.curr_x(draw_x),.curr_y(draw_y));

position_logic poslog (
.clk(clk60hz),
.button(button),  // middle up down left right 
.blkpos_x(blkpos_x),
.blkpos_y(blkpos_y)
    );

endmodule
