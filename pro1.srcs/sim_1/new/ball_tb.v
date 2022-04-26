`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2022 03:13:25 PM
// Design Name: 
// Module Name: ball_tb
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


module ball_tb();

reg clk, rst;
reg [15:0] hit;
reg [10:0] blkpos_x;
reg [9:0] blkpos_y;
reg start;
wire [10:0] ball_position_x;
wire [9:0] ball_position_y;

initial begin
  clk = 1'b0;
  rst = 1'b1;
  blkpos_x = 11'd623;
  blkpos_y = 10'd753;
  hit=16'b1111_1111_1111_1111;
  start = 1'b0;
  
  #15 rst = 1'b0;
  #10 start = 1'b1;
  #30 start = 1'b0;
  
end   

always #5 clk = ~clk; 




ball ball_pos
(
.clk(clk),.rst(rst),
.start(start),
.hit(hit),
.blkpos_x(blkpos_x),
.blkpos_y(blkpos_y),

.brick_position_x0(11'd32),.brick_position_x1(11'd32),.brick_position_x2(11'd32),
.brick_position_x3(11'd32),.brick_position_x4(11'd32),.brick_position_x5(11'd32),
.brick_position_x6(11'd32),.brick_position_x7(11'd32),.brick_position_x8(11'd32),
.brick_position_x9(11'd32),.brick_position_x10(11'd32),.brick_position_x11(11'd32),
.brick_position_x12(11'd32),.brick_position_x13(11'd32),.brick_position_x14(11'd32),
.brick_position_x15(11'd32),

.brick_position_y0(10'd32),.brick_position_y1(10'd32),.brick_position_y2(10'd32),
.brick_position_y3(10'd32),.brick_position_y4(10'd32),.brick_position_y5(10'd32),
.brick_position_y6(10'd32),.brick_position_y7(10'd32),.brick_position_y8(10'd32),
.brick_position_y9(10'd32),.brick_position_y10(10'd32),.brick_position_y11(10'd32),
.brick_position_y12(10'd32),.brick_position_y13(10'd32),.brick_position_y14(10'd32),
.brick_position_y15(10'd32),

.ball_position_x(ball_position_x),
.ball_position_y(ball_position_y)
    );





endmodule
