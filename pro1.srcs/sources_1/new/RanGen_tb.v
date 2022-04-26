`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2022 01:46:42 PM
// Design Name: 
// Module Name: RanGen_tb
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


module RanGen_tb();

reg clk, rst;
reg start;
//reg load;
reg [7:0] seed;
wire [7:0] random_number;
wire [2:0] random_speed_x;
wire [2:0] random_speed_y;

initial begin
//  load = 1'b0;
  start = 1'b0;
  clk = 1'b0;
  rst = 1'b1;
  seed = 8'b11111111;
  #15 rst = 1'b0;
//  #30 load = 1'b1;
//  #30 load = 1'b0;
  #50 start = 1'b1;
end  

    RanGen random_gen1(
.clk(clk), .rst(rst),
//.load(load),
.start(start),
.seed(seed),    
.random_number(random_number),
.random_speed_x(random_speed_x),
.random_speed_y(random_speed_y)
    );


always #5 clk = ~clk; 
endmodule

