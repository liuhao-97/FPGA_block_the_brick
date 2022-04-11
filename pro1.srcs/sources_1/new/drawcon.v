`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2022 02:47:17 PM
// Design Name: 
// Module Name: drawcon
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


module drawcon(
input clk,
/*input rst,*/
input [10:0] blkpos_x,
input [9:0] blkpos_y,
input [10:0] draw_x,
input [9:0] draw_y,
output reg [3:0] r,g,b
    );
   
reg [3:0] bg_r, bg_g, bg_b;
reg [3:0] blk_r, blk_g, blk_b;
reg [3:0] ball_r, ball_g, ball_b;
reg [10:0] ballpos_x;
reg [9:0] ballpos_y;
reg q;

reg [15:0] wall;
reg [3:0] wall_r, wall_g, wall_b;

wire [4:0] bin = (draw_x - 128) >> 6;
wire [4:0] hit_bin_left = (ballpos_x - 128) >> 6;
wire [4:0] hit_bin_right = (ballpos_x + 31 - 128) >> 6;

initial
begin
    q <= 1'b1;
    ballpos_x <= 11'd663;
    ballpos_y <= 10'd423;
    wall <= 16'b1111111111111111;
end


always @(posedge clk)
begin
        if(
        (((ballpos_x >= blkpos_x) && (ballpos_x <= blkpos_x + 32)) || ((ballpos_x + 32 >= blkpos_x) && (ballpos_x + 32 <= blkpos_x + 32))) && (ballpos_y + 32 == blkpos_y)
        ||
        ((ballpos_y == 160) && (wall[bin[3:0]] == 1'b1)) //when it hits the buttom of the wall
        ||
        (ballpos_y == 11)
        )
            q <= ~q;
        else
            q <= q;  
end

always@(negedge clk)
begin
    /*ballpos_x = ballpos_x;*/
    if (q == 1'b1)
        ballpos_y <= ballpos_y + 1'b1;
    else
        ballpos_y <= ballpos_y - 1'b1;
end

/*borders*/
always@(*)
begin
    if (((draw_x > 0) && (draw_x <= 10)) || ((draw_x > 1269) && (draw_x <= 1279)) || ((draw_y > 0) && (draw_y <= 10)) || ((draw_y > 789) && (draw_y <= 799)) )
    begin
      bg_r = 4'b1111;    // white
      bg_g = 4'b1111;
      bg_b = 4'b1111;  
    end
  else
    begin
      bg_r = 4'b1111;
      bg_g = 4'b0000;
      bg_b = 4'b0000;
    end
end

/*target wall*/
always @(*)
begin
    if ( ((draw_x >= 128) && (draw_x <= 1151)) && ((draw_y >= 60) && (draw_y <= 160)) )
        begin
            case(bin[1:0])
                0 : 
                    begin
                        wall_r = 4'b1101;
                        wall_b = 4'b1011;
                        wall_g = 4'b0111;
                    end
                1 : 
                    begin
                        wall_r = 4'b1011;
                        wall_b = 4'b1011;
                        wall_g = 4'b1101;
                    end
                2 : 
                    begin
                        wall_r = 4'b0111;
                        wall_b = 4'b1011;
                        wall_g = 4'b1101;
                    end
                3 : 
                    begin
                        wall_r = 4'b1011;
                        wall_b = 4'b1101;
                        wall_g = 4'b1110;
                    end
                default :
                    begin
                        wall_r = 4'b0000;
                        wall_b = 4'b0000;
                        wall_g = 4'b0000;
                    end
            endcase
        end
    else
        begin
            wall_r = 4'b0000;
            wall_b = 4'b0000;
            wall_g = 4'b0000;
        end
end

always@(*)
begin
//This should have disabled the reflexion of the ball of it had hit the break (But does not change the color!!!)
//For some reason, it does not work
//Normally, if the ball hit a break, then the next time it passes through it but does not get back anymore by these lines
//Please check it
    if (ballpos_y == 160)
    begin
        wall[hit_bin_left[3:0]] = 1'b0;
        wall[hit_bin_right[3:0]] = 1'b0;        
    end
end

/*catcher*/   
always@(*)
begin
  if ( ((draw_x >= blkpos_x) && (draw_x <= blkpos_x + 32)) && ((draw_y >= blkpos_y) && (draw_y <= blkpos_y + 32)) )
    begin
      blk_r = 4'b0011;
      blk_g = 4'b0011;
      blk_b = 4'b0111;
    end
  else
    begin
      blk_r = 4'b0000;
      blk_g = 4'b0000;
      blk_b = 4'b0000;
    end       
end   

/*moving ball*/
always@(*)
begin
  if ( ((draw_x >= ballpos_x) && (draw_x <= ballpos_x + 32)) && ((draw_y >= ballpos_y) && (draw_y <= ballpos_y + 32)) )
    begin
      ball_r = 4'b0111;
      ball_g = 4'b0111;
      ball_b = 4'b0111;
    end
  else
    begin
      ball_r = 4'b0000;
      ball_g = 4'b0000;
      ball_b = 4'b0000;
    end       
end 

always@(*)
begin
  if(
  (blk_r != 4'b0000) || (blk_g != 4'b0000) || (blk_b != 4'b0000)
  ||
  (ball_r != 4'b0000) || (ball_g != 4'b0000) || (ball_b != 4'b0000)
  ||
  (wall_r != 4'b0000) || (wall_g != 4'b0000) || (wall_b != 4'b0000)
  )
    begin
      r = blk_r | ball_r | wall_r;
      g = blk_g | ball_g | wall_g;
      b = blk_b | ball_b | wall_b;
    end
  else
    begin
      r = bg_r;
      g = bg_g;
      b = bg_b;
    end
end
  
endmodule
