`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2022 03:08:49 PM
// Design Name: 
// Module Name: brick
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


module brick(
input clk, rst,
input [10:0] brick_position_x,
input [9:0] brick_position_y,
input [10:0] ball_position_x,
input [9:0] ball_position_y,
output reg hit = 1'b1        // if the brick is hit, set hit to 0
    );
    
    

    
parameter idle = 2'b01;
parameter brick_s0 = 2'b10;  //here the ball hit the brick
// set the ball 16*16. set the brick 256 * 64
parameter ball_wh = 10'd16;
parameter brick_width = 11'd256;
parameter brick_height = 10'd64;

reg [1:0] brick_current_stage=idle;
reg [1:0] brick_next_stage;

always@(posedge clk)
begin
  if(rst)
    brick_current_stage <= idle;
  else
    brick_current_stage <= brick_next_stage;
end
    
always@(*)
begin
  case(brick_current_stage)
    idle: 
      begin
        if( 
//        (ball_position_x >= brick_position_x - ball_wh) && (ball_position_x <= brick_position_x + brick_width)
//         && (ball_position_y >= brick_position_y - ball_wh) && (ball_position_y <= brick_position_y + brick_height)
        (ball_position_x >= brick_position_x - ball_wh) && (ball_position_x <= brick_position_x + brick_width)
         && (ball_position_y >= brick_position_y - ball_wh) && (ball_position_y <= brick_position_y + brick_height))
        
          begin
             brick_next_stage = brick_s0;
          end 
        else
          begin
            brick_next_stage = idle;
          end     
      end
    brick_s0:
      begin
        brick_next_stage = brick_s0;
      end   
    default: brick_next_stage = idle;
  endcase
end
    
always@(posedge clk)
begin
  if(rst)
    begin
      hit <= 1'b1;
    end
  else
    begin
      case(brick_next_stage)
        idle: hit <= 1'b1;
        brick_s0: hit <= 1'b0;    //the brick exit
        default: hit <= 1'b1 ;
      endcase
    end
end   
    
    
  
endmodule

