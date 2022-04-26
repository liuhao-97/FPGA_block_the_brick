`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2022 07:46:31 PM
// Design Name: 
// Module Name: brick_tb
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


module brick_tb();

reg clk, rst;
reg [10:0] ball_position_x;
reg [9:0] ball_position_y;
reg [10:0] brick_position_x = 11'd32;
reg [9:0] brick_position_y = 10'd32;
wire hit;

brick brick1 (
.clk(clk), .rst(rst),
.ball_position_x(ball_position_x),
.ball_position_y(ball_position_y),
.brick_position_x(brick_position_x),
.brick_position_y(brick_position_y),
.hit(hit)        // if the brick is hit, set hit to 0
    ); 
     
initial begin
  clk = 1'b0;
  rst = 1'b1;
  #5 rst = 1'b0;
  ball_position_x = 11'd287;
  ball_position_y = 10'd16;
  #15 ball_position_x=11'd288;
  
  #15 ball_position_y =10'd16;
  
end   
    
   
      

    
    
    
    
    
//always@(posedge clk)
//begin
//  if(ball_position_x == 11'd1279)
//    begin
//      ball_position_x <= 11'b0;
//    end
//  else
//    begin
//      ball_position_x <= ball_position_x + 1'b1;
//    end
//end
    
//always@(posedge clk)
//begin
//  if((ball_position_x == 11'd1279)&&(ball_position_y <= 10'd799))
//    begin
//      ball_position_y <= ball_position_y + 1'b1;
//    end
//end 
  

 
  
  

always #5 clk = ~clk;  

endmodule
