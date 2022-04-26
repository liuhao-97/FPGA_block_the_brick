`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2022 12:48:32 PM
// Design Name: 
// Module Name: drawcon_new_tb
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


module drawcon_new_tb();
reg clk, rst;
reg [10:0] draw_x;
reg [9:0] draw_y;
reg start;
wire [3:0] r, g, b;


drawcon_new drawmodule(
.clk(clk), .rst(rst),
.blkpos_x(200),
.blkpos_y(200),
.draw_x(draw_x),
.draw_y(draw_y),
.start(start),
.r(r), .g(g), .b(b)
    );
  
initial begin
  clk = 1'b0;
  rst = 1'b1;
  draw_x = 11'd0;
  draw_y = 10'd0;
  #5 rst = 1'b0;
  #10 start = 1'b1;
  #30 start = 1'b0;
end
  
  
  
always@(posedge clk)
begin
  if(draw_x == 11'd1279)
    begin
      draw_x <= 11'b0;
    end
  else
    begin
      draw_x <= draw_x + 1'b1;
    end
end
    
always@(posedge clk)
begin

  if((draw_x == 11'd1279)&&(draw_y == 10'd799))
    draw_y = 10'd0;
  else if( (draw_x==11'd1279)&&(draw_y < 10'd799) )
    draw_y = draw_y + 1'b1;


end



always #5 clk = ~clk;

endmodule
