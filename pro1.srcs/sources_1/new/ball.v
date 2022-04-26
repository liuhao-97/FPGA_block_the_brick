`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2022 10:05:44 PM
// Design Name: 
// Module Name: ball
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

//get the position of the ball
module ball
#(parameter blk_width = 11'd128, parameter blk_height = 10'd10,
parameter brick_width = 11'd256, parameter brick_height = 10'd64)
(
input clk,rst,
input start,
input [15:0] hit,
//input [1:0] ball_x_speed, ball_y_speed,

input [10:0] blkpos_x,
input [9:0] blkpos_y,

input [10:0] brick_position_x0,brick_position_x1,brick_position_x2,
brick_position_x3,brick_position_x4,brick_position_x5,brick_position_x6,
brick_position_x7,brick_position_x8,brick_position_x9,brick_position_x10,brick_position_x11,
brick_position_x12,brick_position_x13,brick_position_x14,brick_position_x15,

input [9:0] brick_position_y0,brick_position_y1,brick_position_y2,
brick_position_y3,brick_position_y4,brick_position_y5,brick_position_y6,
brick_position_y7,brick_position_y8,brick_position_y9,brick_position_y10,brick_position_y11,
brick_position_y12,brick_position_y13,brick_position_y14,brick_position_y15,

output reg [10:0] ball_position_x,
output reg [9:0] ball_position_y,
output reg gameover_sig,
output reg [5:0] ball_current_stage
    );
    
    parameter S0 = 6'b000001  ; //initial
    
    parameter S1 = 6'b000010  ; //ball go left top of screen
    
    parameter S2 = 6'b000100  ; //ball go right top of screen
    
    parameter S3 = 6'b001000  ; //ball go right bottom of screen
    
    parameter S4 = 6'b010000  ; //ball go left bottom of screen
       
    parameter S5 = 6'b100000;  //hit the bottom of the wall end
    
    reg [5:0] ball_current_stage = S0   ;
    reg [5:0] ball_next_stage           ;
    
    reg [2:0] ball_x_speed = 1 ;
    reg [2:0] ball_y_speed = 1 ;
    
     
//    wire [5:0] random_speed_x;
//    wire [5:0] random_speed_y;
    
//    wire [5:0] ball_x_speed;
//    wire [5:0] ball_y_speed;
//    assign ball_x_speed = random_speed_x;
//    assign ball_y_speed = random_speed_y;
    
//        RanGen random_gen1(
//.clk(clk), .rst(rst),
//.start(start),
//.seed(8'b1111_1111),    
//.random_speed(random_speed_x)
//    );
//    RanGen random_gen2(
//.clk(clk), .rst(rst),
//.start(start),
//.seed(8'b1110_1100),    
//.random_speed(random_speed_y)
//    );
    
//    always@(posedge start or posedge rst)
//    begin
//      if(rst)
//        begin
//          ball_x_speed <= 3'b0;
//          ball_y_speed <= 3'b0;
//        end
//      else
//        begin
//          ball_x_speed <= random_speed_x;
//          ball_y_speed <= random_speed_y;
//        end
//    end
    
    always@(posedge clk)
      begin
        if(rst)
          ball_current_stage <= S0               ;
        else
          ball_current_stage <= ball_next_stage  ;    
      end
    
      
    always@*
    begin
      case(ball_current_stage)
      S0: 
        begin
          if(start)
          begin
            
              ball_next_stage = S1   ;
           
          end
          else
            ball_next_stage = S0     ;
        end
      
      S1:
        begin
          if( (ball_position_x <= 10)   //hit the left wall or right brick. pay attention to hit[15:0]
              ||
              ((
              ((ball_position_y+16>=brick_position_y0)&&(ball_position_y <= brick_position_y0 + brick_height)&&(ball_position_x >= brick_position_x0+ brick_width-1)&&(ball_position_x <= brick_position_x0 + brick_width)&&hit[15])
              ||
              ((ball_position_y+16>=brick_position_y1)&&(ball_position_y <= brick_position_y1 + brick_height)&&(ball_position_x >= brick_position_x1+ brick_width-1)&&(ball_position_x <= brick_position_x1 + brick_width)&&hit[14])
              ||
              ((ball_position_y+16>=brick_position_y2)&&(ball_position_y <= brick_position_y2 + brick_height)&&(ball_position_x >= brick_position_x2+ brick_width-1)&&(ball_position_x <= brick_position_x2 + brick_width)&&hit[13])
              ||
              ((ball_position_y+16>=brick_position_y3)&&(ball_position_y <= brick_position_y3 + brick_height)&&(ball_position_x >= brick_position_x3+ brick_width-1)&&(ball_position_x <= brick_position_x3 + brick_width)&&hit[12])
              ||
              ((ball_position_y+16>=brick_position_y4)&&(ball_position_y <= brick_position_y4 + brick_height)&&(ball_position_x >= brick_position_x4+ brick_width-1)&&(ball_position_x <= brick_position_x4 + brick_width)&&hit[11])
              ||
              ((ball_position_y+16>=brick_position_y5)&&(ball_position_y <= brick_position_y5 + brick_height)&&(ball_position_x >= brick_position_x5+ brick_width-1)&&(ball_position_x <= brick_position_x5 + brick_width)&&hit[10])
              ||
              ((ball_position_y+16>=brick_position_y6)&&(ball_position_y <= brick_position_y6 + brick_height)&&(ball_position_x >= brick_position_x6+ brick_width-1)&&(ball_position_x <= brick_position_x6 + brick_width)&&hit[9])
              ||
              ((ball_position_y+16>=brick_position_y7)&&(ball_position_y <= brick_position_y7 + brick_height)&&(ball_position_x >= brick_position_x7+ brick_width-1)&&(ball_position_x <= brick_position_x7 + brick_width)&&hit[8])
              ||            
              ((ball_position_y+16>=brick_position_y8)&&(ball_position_y <= brick_position_y8 + brick_height)&&(ball_position_x >= brick_position_x8+ brick_width-1)&&(ball_position_x <= brick_position_x8 + brick_width)&&hit[7])
              ||
              ((ball_position_y+16>=brick_position_y9)&&(ball_position_y <= brick_position_y9 + brick_height)&&(ball_position_x >= brick_position_x9+ brick_width-1)&&(ball_position_x <= brick_position_x9 + brick_width)&&hit[6])
              ||
              ((ball_position_y+16>=brick_position_y10)&&(ball_position_y <= brick_position_y10 + brick_height)&&(ball_position_x >= brick_position_x10+ brick_width-1)&&(ball_position_x <= brick_position_x10 + brick_width)&&hit[5])
              ||
              ((ball_position_y+16>=brick_position_y11)&&(ball_position_y <= brick_position_y11 + brick_height)&&(ball_position_x >= brick_position_x11+ brick_width-1)&&(ball_position_x <= brick_position_x11 + brick_width)&&hit[4])
              ||
              ((ball_position_y+16>=brick_position_y12)&&(ball_position_y <= brick_position_y12 + brick_height)&&(ball_position_x >= brick_position_x12+ brick_width-1)&&(ball_position_x <= brick_position_x12 + brick_width)&&hit[3])
              ||
              ((ball_position_y+16>=brick_position_y13)&&(ball_position_y <= brick_position_y13 + brick_height)&&(ball_position_x >= brick_position_x13+ brick_width-1)&&(ball_position_x <= brick_position_x13 + brick_width)&&hit[2])
              ||
              ((ball_position_y+16>=brick_position_y14)&&(ball_position_y <= brick_position_y14 + brick_height)&&(ball_position_x >= brick_position_x14+ brick_width-1)&&(ball_position_x <= brick_position_x14 + brick_width)&&hit[1])
              ||
              ((ball_position_y+16>=brick_position_y15)&&(ball_position_y <= brick_position_y15 + brick_height)&&(ball_position_x >= brick_position_x15+ brick_width-1)&&(ball_position_x <= brick_position_x15 + brick_width)&&hit[0])
              ))
              )
              ball_next_stage = S2;
            else
              if( (ball_position_y <=10)  //hit top wall or bottom brick
                  ||
                  ((
              ((ball_position_x+16-1>=brick_position_x0)&&(ball_position_x <= brick_position_x0 + brick_width-1)&&(ball_position_y >= brick_position_y0+ brick_height-1)&&(ball_position_y <= brick_position_y0 + brick_height)&&hit[15])
              ||
              ((ball_position_x+16-1>=brick_position_x1)&&(ball_position_x <= brick_position_x1 + brick_width-1)&&(ball_position_y >= brick_position_y1+ brick_height-1)&&(ball_position_y <= brick_position_y1 + brick_height)&&hit[14])
              ||
              ((ball_position_x+16-1>=brick_position_x2)&&(ball_position_x <= brick_position_x2 + brick_width-1)&&(ball_position_y >= brick_position_y2+ brick_height-1)&&(ball_position_y <= brick_position_y2 + brick_height)&&hit[13])
              ||
              ((ball_position_x+16-1>=brick_position_x3)&&(ball_position_x <= brick_position_x3 + brick_width-1)&&(ball_position_y >= brick_position_y3+ brick_height-1)&&(ball_position_y <= brick_position_y3 + brick_height)&&hit[12])
              ||
              ((ball_position_x+16-1>=brick_position_x4)&&(ball_position_x <= brick_position_x4 + brick_width-1)&&(ball_position_y >= brick_position_y4+ brick_height-1)&&(ball_position_y <= brick_position_y4 + brick_height)&&hit[11])
              ||
              ((ball_position_x+16-1>=brick_position_x5)&&(ball_position_x <= brick_position_x5 + brick_width-1)&&(ball_position_y >= brick_position_y5+ brick_height-1)&&(ball_position_y <= brick_position_y5 + brick_height)&&hit[10])
              ||
              ((ball_position_x+16-1>=brick_position_x6)&&(ball_position_x <= brick_position_x6 + brick_width-1)&&(ball_position_y >= brick_position_y6+ brick_height-1)&&(ball_position_y <= brick_position_y6 + brick_height)&&hit[9])
              ||
              ((ball_position_x+16-1>=brick_position_x7)&&(ball_position_x <= brick_position_x7 + brick_width-1)&&(ball_position_y >= brick_position_y7+ brick_height-1)&&(ball_position_y <= brick_position_y7 + brick_height)&&hit[8])
              ||            
              ((ball_position_x+16-1>=brick_position_x8)&&(ball_position_x <= brick_position_x8 + brick_width-1)&&(ball_position_y >= brick_position_y8+ brick_height-1)&&(ball_position_y <= brick_position_y8 + brick_height)&&hit[7])
              ||
              ((ball_position_x+16-1>=brick_position_x9)&&(ball_position_x <= brick_position_x9 + brick_width-1)&&(ball_position_y >= brick_position_y9+ brick_height-1)&&(ball_position_y <= brick_position_y9 + brick_height)&&hit[6])
              ||
              ((ball_position_x+16-1>=brick_position_x10)&&(ball_position_x <= brick_position_x10 + brick_width-1)&&(ball_position_y >= brick_position_y10+ brick_height-1)&&(ball_position_y <= brick_position_y10 + brick_height)&&hit[5])
              ||
              ((ball_position_x+16-1>=brick_position_x11)&&(ball_position_x <= brick_position_x11 + brick_width-1)&&(ball_position_y >= brick_position_y11+ brick_height-1)&&(ball_position_y <= brick_position_y11 + brick_height)&&hit[4])
              ||
              ((ball_position_x+16-1>=brick_position_x12)&&(ball_position_x <= brick_position_x12 + brick_width-1)&&(ball_position_y >= brick_position_y12+ brick_height-1)&&(ball_position_y <= brick_position_y12 + brick_height)&&hit[3])
              ||
              ((ball_position_x+16-1>=brick_position_x13)&&(ball_position_x <= brick_position_x13 + brick_width-1)&&(ball_position_y >= brick_position_y13+ brick_height-1)&&(ball_position_y <= brick_position_y13 + brick_height)&&hit[2])
              ||
              ((ball_position_x+16-1>=brick_position_x14)&&(ball_position_x <= brick_position_x14 + brick_width)&&(ball_position_y >= brick_position_y14+ brick_height-1)&&(ball_position_y <= brick_position_y14 + brick_height)&&hit[1])
              ||
              ((ball_position_x+16-1>=brick_position_x15)&&(ball_position_x <= brick_position_x15 + brick_width)&&(ball_position_y >= brick_position_y15+ brick_height-1)&&(ball_position_y <= brick_position_y15 + brick_height)&&hit[0])
              ))
              )
                  

                ball_next_stage = S4;
             else
               ball_next_stage = S1;
        end
      
      S2:
      begin
        if( (ball_position_x + 16 >= 1269)    //hit the right wall or left brick
              ||
              ((
              ((ball_position_y+16>=brick_position_y0)&&(ball_position_y <= brick_position_y0 + brick_height)&&(ball_position_x + 16 >= brick_position_x0)&&(ball_position_x + 16< brick_position_x0 + 1)&&hit[15])
              ||
              ((ball_position_y+16>=brick_position_y1)&&(ball_position_y <= brick_position_y1 + brick_height)&&(ball_position_x + 16 >= brick_position_x1)&&(ball_position_x + 16< brick_position_x1 + 1)&&hit[14])
              ||
              ((ball_position_y+16>=brick_position_y2)&&(ball_position_y <= brick_position_y2 + brick_height)&&(ball_position_x + 16 >= brick_position_x2)&&(ball_position_x + 16<= brick_position_x2 + 1)&&hit[13])
              ||
              ((ball_position_y+16>=brick_position_y3)&&(ball_position_y <= brick_position_y3 + brick_height)&&(ball_position_x + 16 >= brick_position_x3)&&(ball_position_x + 16<= brick_position_x3 + 1)&&hit[12])
              ||
              ((ball_position_y+16>=brick_position_y4)&&(ball_position_y <= brick_position_y4 + brick_height)&&(ball_position_x + 16 >= brick_position_x4)&&(ball_position_x + 16<= brick_position_x4 + 1)&&hit[11])
              ||
              ((ball_position_y+16>=brick_position_y5)&&(ball_position_y <= brick_position_y5 + brick_height)&&(ball_position_x + 16 >= brick_position_x5)&&(ball_position_x + 16<= brick_position_x5 + 1)&&hit[10])
              ||
              ((ball_position_y+16>=brick_position_y6)&&(ball_position_y <= brick_position_y6 + brick_height)&&(ball_position_x + 16 >= brick_position_x6)&&(ball_position_x + 16<= brick_position_x6 + 1)&&hit[9])
              ||
              ((ball_position_y+16>=brick_position_y7)&&(ball_position_y <= brick_position_y7 + brick_height)&&(ball_position_x + 16 >= brick_position_x7)&&(ball_position_x + 16<= brick_position_x7 + 1)&&hit[8])
              ||            
              ((ball_position_y+16>=brick_position_y8)&&(ball_position_y <= brick_position_y8 + brick_height)&&(ball_position_x + 16 >= brick_position_x8)&&(ball_position_x + 16<= brick_position_x8 + 1)&&hit[7])
              ||
              ((ball_position_y+16>=brick_position_y9)&&(ball_position_y <= brick_position_y9 + brick_height)&&(ball_position_x + 16 >= brick_position_x9)&&(ball_position_x + 16<= brick_position_x9 + 1)&&hit[6])
              ||
              ((ball_position_y+16>=brick_position_y10)&&(ball_position_y <= brick_position_y10 + brick_height)&&(ball_position_x + 16 >= brick_position_x10)&&(ball_position_x + 16<= brick_position_x10 + 1)&&hit[5])
              ||
              ((ball_position_y+16>=brick_position_y11)&&(ball_position_y <= brick_position_y11 + brick_height)&&(ball_position_x + 16 >= brick_position_x11)&&(ball_position_x + 16<= brick_position_x11 + 1)&&hit[4])
              ||
              ((ball_position_y+16>=brick_position_y12)&&(ball_position_y <= brick_position_y12 + brick_height)&&(ball_position_x + 16 >= brick_position_x12)&&(ball_position_x + 16<= brick_position_x12 + 1)&&hit[3])
              ||
              ((ball_position_y+16>=brick_position_y13)&&(ball_position_y <= brick_position_y13 + brick_height)&&(ball_position_x + 16 >= brick_position_x13)&&(ball_position_x + 16<= brick_position_x13 + 1)&&hit[2])
              ||
              ((ball_position_y+16>=brick_position_y14)&&(ball_position_y <= brick_position_y14 + brick_height)&&(ball_position_x + 16 >= brick_position_x14)&&(ball_position_x + 16<= brick_position_x14 + 1)&&hit[1])
              ||
              ((ball_position_y+16>=brick_position_y15)&&(ball_position_y <= brick_position_y15 + brick_height)&&(ball_position_x + 16 >= brick_position_x15)&&(ball_position_x + 16<= brick_position_x15 + 1)&&hit[0])
              ))
              )
                       
       
              ball_next_stage = S1;
            else
              if( (ball_position_y <=10)  //hit top wall or bottom brick
                  ||                                                                                   
                  ((
              ((ball_position_x+16-1>=brick_position_x0)&&(ball_position_x <= brick_position_x0 + brick_width-1)&&(ball_position_y >= brick_position_y0+ brick_height-1)&&(ball_position_y <= brick_position_y0 + brick_height)&&hit[15])
              ||
              ((ball_position_x+16-1>=brick_position_x1)&&(ball_position_x <= brick_position_x1 + brick_width-1)&&(ball_position_y >= brick_position_y1+ brick_height-1)&&(ball_position_y <= brick_position_y1 + brick_height)&&hit[14])
              ||
              ((ball_position_x+16-1>=brick_position_x2)&&(ball_position_x <= brick_position_x2 + brick_width-1)&&(ball_position_y >= brick_position_y2+ brick_height-1)&&(ball_position_y <= brick_position_y2 + brick_height)&&hit[13])
              ||
              ((ball_position_x+16-1>=brick_position_x3)&&(ball_position_x <= brick_position_x3 + brick_width-1)&&(ball_position_y >= brick_position_y3+ brick_height-1)&&(ball_position_y <= brick_position_y3 + brick_height)&&hit[12])
              ||
              ((ball_position_x+16-1>=brick_position_x4)&&(ball_position_x <= brick_position_x4 + brick_width-1)&&(ball_position_y >= brick_position_y4+ brick_height-1)&&(ball_position_y <= brick_position_y4 + brick_height)&&hit[11])
              ||
              ((ball_position_x+16-1>=brick_position_x5)&&(ball_position_x <= brick_position_x5 + brick_width-1)&&(ball_position_y >= brick_position_y5+ brick_height-1)&&(ball_position_y <= brick_position_y5 + brick_height)&&hit[10])
              ||
              ((ball_position_x+16-1>=brick_position_x6)&&(ball_position_x <= brick_position_x6 + brick_width-1)&&(ball_position_y >= brick_position_y6+ brick_height-1)&&(ball_position_y <= brick_position_y6 + brick_height)&&hit[9])
              ||
              ((ball_position_x+16-1>=brick_position_x7)&&(ball_position_x <= brick_position_x7 + brick_width-1)&&(ball_position_y >= brick_position_y7+ brick_height-1)&&(ball_position_y <= brick_position_y7 + brick_height)&&hit[8])
              ||            
              ((ball_position_x+16-1>=brick_position_x8)&&(ball_position_x <= brick_position_x8 + brick_width-1)&&(ball_position_y >= brick_position_y8+ brick_height-1)&&(ball_position_y <= brick_position_y8 + brick_height)&&hit[7])
              ||
              ((ball_position_x+16-1>=brick_position_x9)&&(ball_position_x <= brick_position_x9 + brick_width-1)&&(ball_position_y >= brick_position_y9+ brick_height-1)&&(ball_position_y <= brick_position_y9 + brick_height)&&hit[6])
              ||
              ((ball_position_x+16-1>=brick_position_x10)&&(ball_position_x <= brick_position_x10 + brick_width-1)&&(ball_position_y >= brick_position_y10+ brick_height-1)&&(ball_position_y <= brick_position_y10 + brick_height)&&hit[5])
              ||
              ((ball_position_x+16-1>=brick_position_x11)&&(ball_position_x <= brick_position_x11 + brick_width-1)&&(ball_position_y >= brick_position_y11+ brick_height-1)&&(ball_position_y <= brick_position_y11 + brick_height)&&hit[4])
              ||
              ((ball_position_x+16-1>=brick_position_x12)&&(ball_position_x <= brick_position_x12 + brick_width-1)&&(ball_position_y >= brick_position_y12+ brick_height-1)&&(ball_position_y <= brick_position_y12 + brick_height)&&hit[3])
              ||
              ((ball_position_x+16-1>=brick_position_x13)&&(ball_position_x <= brick_position_x13 + brick_width-1)&&(ball_position_y >= brick_position_y13+ brick_height-1)&&(ball_position_y <= brick_position_y13 + brick_height)&&hit[2])
              ||
              ((ball_position_x+16-1>=brick_position_x14)&&(ball_position_x <= brick_position_x14 + brick_width)&&(ball_position_y >= brick_position_y14+ brick_height-1)&&(ball_position_y <= brick_position_y14 + brick_height)&&hit[1])
              ||
              ((ball_position_x+16-1>=brick_position_x15)&&(ball_position_x <= brick_position_x15 + brick_width)&&(ball_position_y >= brick_position_y15+ brick_height-1)&&(ball_position_y <= brick_position_y15 + brick_height)&&hit[0])
              ))
                  )
                ball_next_stage = S3;
             else
               ball_next_stage = S2;
      end
    
    
    
      S3:
      begin
        if( (ball_position_x + 16 >= 1269)    //hit the right wall or left brick
              ||
             ((
              ((ball_position_y+16>=brick_position_y0)&&(ball_position_y <= brick_position_y0 + brick_height)&&(ball_position_x + 16 >= brick_position_x0)&&(ball_position_x + 16< brick_position_x0 + 1)&&hit[15])
              ||
              ((ball_position_y+16>=brick_position_y1)&&(ball_position_y <= brick_position_y1 + brick_height)&&(ball_position_x + 16 >= brick_position_x1)&&(ball_position_x + 16< brick_position_x1 + 1)&&hit[14])
              ||
              ((ball_position_y+16>=brick_position_y2)&&(ball_position_y <= brick_position_y2 + brick_height)&&(ball_position_x + 16 >= brick_position_x2)&&(ball_position_x + 16<= brick_position_x2 + 1)&&hit[13])
              ||
              ((ball_position_y+16>=brick_position_y3)&&(ball_position_y <= brick_position_y3 + brick_height)&&(ball_position_x + 16 >= brick_position_x3)&&(ball_position_x + 16<= brick_position_x3 + 1)&&hit[12])
              ||
              ((ball_position_y+16>=brick_position_y4)&&(ball_position_y <= brick_position_y4 + brick_height)&&(ball_position_x + 16 >= brick_position_x4)&&(ball_position_x + 16<= brick_position_x4 + 1)&&hit[11])
              ||
              ((ball_position_y+16>=brick_position_y5)&&(ball_position_y <= brick_position_y5 + brick_height)&&(ball_position_x + 16 >= brick_position_x5)&&(ball_position_x + 16<= brick_position_x5 + 1)&&hit[10])
              ||
              ((ball_position_y+16>=brick_position_y6)&&(ball_position_y <= brick_position_y6 + brick_height)&&(ball_position_x + 16 >= brick_position_x6)&&(ball_position_x + 16<= brick_position_x6 + 1)&&hit[9])
              ||
              ((ball_position_y+16>=brick_position_y7)&&(ball_position_y <= brick_position_y7 + brick_height)&&(ball_position_x + 16 >= brick_position_x7)&&(ball_position_x + 16<= brick_position_x7 + 1)&&hit[8])
              ||            
              ((ball_position_y+16>=brick_position_y8)&&(ball_position_y <= brick_position_y8 + brick_height)&&(ball_position_x + 16 >= brick_position_x8)&&(ball_position_x + 16<= brick_position_x8 + 1)&&hit[7])
              ||
              ((ball_position_y+16>=brick_position_y9)&&(ball_position_y <= brick_position_y9 + brick_height)&&(ball_position_x + 16 >= brick_position_x9)&&(ball_position_x + 16<= brick_position_x9 + 1)&&hit[6])
              ||
              ((ball_position_y+16>=brick_position_y10)&&(ball_position_y <= brick_position_y10 + brick_height)&&(ball_position_x + 16 >= brick_position_x10)&&(ball_position_x + 16<= brick_position_x10 + 1)&&hit[5])
              ||
              ((ball_position_y+16>=brick_position_y11)&&(ball_position_y <= brick_position_y11 + brick_height)&&(ball_position_x + 16 >= brick_position_x11)&&(ball_position_x + 16<= brick_position_x11 + 1)&&hit[4])
              ||
              ((ball_position_y+16>=brick_position_y12)&&(ball_position_y <= brick_position_y12 + brick_height)&&(ball_position_x + 16 >= brick_position_x12)&&(ball_position_x + 16<= brick_position_x12 + 1)&&hit[3])
              ||
              ((ball_position_y+16>=brick_position_y13)&&(ball_position_y <= brick_position_y13 + brick_height)&&(ball_position_x + 16 >= brick_position_x13)&&(ball_position_x + 16<= brick_position_x13 + 1)&&hit[2])
              ||
              ((ball_position_y+16>=brick_position_y14)&&(ball_position_y <= brick_position_y14 + brick_height)&&(ball_position_x + 16 >= brick_position_x14)&&(ball_position_x + 16<= brick_position_x14 + 1)&&hit[1])
              ||
              ((ball_position_y+16>=brick_position_y15)&&(ball_position_y <= brick_position_y15 + brick_height)&&(ball_position_x + 16 >= brick_position_x15)&&(ball_position_x + 16<= brick_position_x15 + 1)&&hit[0])
              ))
              )
              ball_next_stage = S4;
          else
          if(
           //hit top block or top brick
          ((ball_position_x+16>=blkpos_x)&&(ball_position_x <= blkpos_x + blk_width)&&(ball_position_y + 16 >= blkpos_y)&&(ball_position_y + 16 < blkpos_y+ blk_height))
          ||
          ((
          ((ball_position_x+16-1>=brick_position_x0)&&(ball_position_x <= brick_position_x0 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y0)&&(ball_position_y + 16 <= brick_position_y0 +1)&&hit[15])
          ||
          ((ball_position_x+16-1>=brick_position_x1)&&(ball_position_x <= brick_position_x1 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y1)&&(ball_position_y + 16 <= brick_position_y1 +1)&&hit[14])
          ||
          ((ball_position_x+16-1>=brick_position_x2)&&(ball_position_x <= brick_position_x2 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y2)&&(ball_position_y + 16 <= brick_position_y2 +1)&&hit[13])
          ||
          ((ball_position_x+16-1>=brick_position_x3)&&(ball_position_x <= brick_position_x3 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y3)&&(ball_position_y + 16 <= brick_position_y3 +1)&&hit[12])
          ||
          ((ball_position_x+16-1>=brick_position_x4)&&(ball_position_x <= brick_position_x4 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y4)&&(ball_position_y + 16 <= brick_position_y4 +1)&&hit[11])
          ||
          ((ball_position_x+16-1>=brick_position_x5)&&(ball_position_x <= brick_position_x5 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y5)&&(ball_position_y + 16 <= brick_position_y5 +1)&&hit[10])
          ||
          ((ball_position_x+16-1>=brick_position_x6)&&(ball_position_x <= brick_position_x6 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y6)&&(ball_position_y + 16 <= brick_position_y6 +1)&&hit[9])
          ||
          ((ball_position_x+16-1>=brick_position_x7)&&(ball_position_x <= brick_position_x7 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y7)&&(ball_position_y + 16 <= brick_position_y7 +1)&&hit[8])
          ||            
          ((ball_position_x+16-1>=brick_position_x8)&&(ball_position_x <= brick_position_x8 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y8)&&(ball_position_y + 16 <= brick_position_y8 +1)&&hit[7])
          ||
          ((ball_position_x+16-1>=brick_position_x9)&&(ball_position_x <= brick_position_x9 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y9)&&(ball_position_y + 16 <= brick_position_y9 +1)&&hit[6])
          ||
          ((ball_position_x+16-1>=brick_position_x10)&&(ball_position_x <= brick_position_x10 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y10)&&(ball_position_y + 16 <= brick_position_y10 +1)&&hit[5])
          ||
          ((ball_position_x+16-1>=brick_position_x11)&&(ball_position_x <= brick_position_x11 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y11)&&(ball_position_y + 16 <= brick_position_y11 +1)&&hit[4])
          ||
          ((ball_position_x+16-1>=brick_position_x12)&&(ball_position_x <= brick_position_x12 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y12)&&(ball_position_y + 16 <= brick_position_y12 +1)&&hit[3])
          ||
          ((ball_position_x+16-1>=brick_position_x13)&&(ball_position_x <= brick_position_x13 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y13)&&(ball_position_y + 16 <= brick_position_y13 +1)&&hit[2])
          ||
          ((ball_position_x+16-1>=brick_position_x14)&&(ball_position_x <= brick_position_x14 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y14)&&(ball_position_y + 16 <= brick_position_y14 +1)&&hit[1])
          ||
          ((ball_position_x+16-1>=brick_position_x15)&&(ball_position_x <= brick_position_x15 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y15)&&(ball_position_y + 16 <= brick_position_y15 +1)&&hit[0])
          ))      
          )  
              ball_next_stage = S2;
          else
            if(ball_position_y +16>= 789)      //hit bottom of the wall
              ball_next_stage = S5;
          else
            ball_next_stage = S3;
      end
    
    S4:
    begin
      if( (ball_position_x <= 10)   //hit the left wall or right brick
              ||
              ((
              ((ball_position_y+16>=brick_position_y0)&&(ball_position_y <= brick_position_y0 + brick_height)&&(ball_position_x >= brick_position_x0+ brick_width-1)&&(ball_position_x <= brick_position_x0 + brick_width)&&hit[15])
              ||
              ((ball_position_y+16>=brick_position_y1)&&(ball_position_y <= brick_position_y1 + brick_height)&&(ball_position_x >= brick_position_x1+ brick_width-1)&&(ball_position_x <= brick_position_x1 + brick_width)&&hit[14])
              ||
              ((ball_position_y+16>=brick_position_y2)&&(ball_position_y <= brick_position_y2 + brick_height)&&(ball_position_x >= brick_position_x2+ brick_width-1)&&(ball_position_x <= brick_position_x2 + brick_width)&&hit[13])
              ||
              ((ball_position_y+16>=brick_position_y3)&&(ball_position_y <= brick_position_y3 + brick_height)&&(ball_position_x >= brick_position_x3+ brick_width-1)&&(ball_position_x <= brick_position_x3 + brick_width)&&hit[12])
              ||
              ((ball_position_y+16>=brick_position_y4)&&(ball_position_y <= brick_position_y4 + brick_height)&&(ball_position_x >= brick_position_x4+ brick_width-1)&&(ball_position_x <= brick_position_x4 + brick_width)&&hit[11])
              ||
              ((ball_position_y+16>=brick_position_y5)&&(ball_position_y <= brick_position_y5 + brick_height)&&(ball_position_x >= brick_position_x5+ brick_width-1)&&(ball_position_x <= brick_position_x5 + brick_width)&&hit[10])
              ||
              ((ball_position_y+16>=brick_position_y6)&&(ball_position_y <= brick_position_y6 + brick_height)&&(ball_position_x >= brick_position_x6+ brick_width-1)&&(ball_position_x <= brick_position_x6 + brick_width)&&hit[9])
              ||
              ((ball_position_y+16>=brick_position_y7)&&(ball_position_y <= brick_position_y7 + brick_height)&&(ball_position_x >= brick_position_x7+ brick_width-1)&&(ball_position_x <= brick_position_x7 + brick_width)&&hit[8])
              ||            
              ((ball_position_y+16>=brick_position_y8)&&(ball_position_y <= brick_position_y8 + brick_height)&&(ball_position_x >= brick_position_x8+ brick_width-1)&&(ball_position_x <= brick_position_x8 + brick_width)&&hit[7])
              ||
              ((ball_position_y+16>=brick_position_y9)&&(ball_position_y <= brick_position_y9 + brick_height)&&(ball_position_x >= brick_position_x9+ brick_width-1)&&(ball_position_x <= brick_position_x9 + brick_width)&&hit[6])
              ||
              ((ball_position_y+16>=brick_position_y10)&&(ball_position_y <= brick_position_y10 + brick_height)&&(ball_position_x >= brick_position_x10+ brick_width-1)&&(ball_position_x <= brick_position_x10 + brick_width)&&hit[5])
              ||
              ((ball_position_y+16>=brick_position_y11)&&(ball_position_y <= brick_position_y11 + brick_height)&&(ball_position_x >= brick_position_x11+ brick_width-1)&&(ball_position_x <= brick_position_x11 + brick_width)&&hit[4])
              ||
              ((ball_position_y+16>=brick_position_y12)&&(ball_position_y <= brick_position_y12 + brick_height)&&(ball_position_x >= brick_position_x12+ brick_width-1)&&(ball_position_x <= brick_position_x12 + brick_width)&&hit[3])
              ||
              ((ball_position_y+16>=brick_position_y13)&&(ball_position_y <= brick_position_y13 + brick_height)&&(ball_position_x >= brick_position_x13+ brick_width-1)&&(ball_position_x <= brick_position_x13 + brick_width)&&hit[2])
              ||
              ((ball_position_y+16>=brick_position_y14)&&(ball_position_y <= brick_position_y14 + brick_height)&&(ball_position_x >= brick_position_x14+ brick_width-1)&&(ball_position_x <= brick_position_x14 + brick_width)&&hit[1])
              ||
              ((ball_position_y+16>=brick_position_y15)&&(ball_position_y <= brick_position_y15 + brick_height)&&(ball_position_x >= brick_position_x15+ brick_width-1)&&(ball_position_x <= brick_position_x15 + brick_width)&&hit[0])
              ))
              )
              ball_next_stage = S3;
       else
       if(  //hit top block or top brick
         ((ball_position_x+16>=blkpos_x)&&(ball_position_x <= blkpos_x + blk_width)&&(ball_position_y + 16 >= blkpos_y)&&(ball_position_y + 16 < blkpos_y + blk_height))
          ||
         ((
          ((ball_position_x+16-1>=brick_position_x0)&&(ball_position_x <= brick_position_x0 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y0)&&(ball_position_y + 16 <= brick_position_y0 +1)&&hit[15])
          ||
          ((ball_position_x+16-1>=brick_position_x1)&&(ball_position_x <= brick_position_x1 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y1)&&(ball_position_y + 16 <= brick_position_y1 +1)&&hit[14])
          ||
          ((ball_position_x+16-1>=brick_position_x2)&&(ball_position_x <= brick_position_x2 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y2)&&(ball_position_y + 16 <= brick_position_y2 +1)&&hit[13])
          ||
          ((ball_position_x+16-1>=brick_position_x3)&&(ball_position_x <= brick_position_x3 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y3)&&(ball_position_y + 16 <= brick_position_y3 +1)&&hit[12])
          ||
          ((ball_position_x+16-1>=brick_position_x4)&&(ball_position_x <= brick_position_x4 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y4)&&(ball_position_y + 16 <= brick_position_y4 +1)&&hit[11])
          ||
          ((ball_position_x+16-1>=brick_position_x5)&&(ball_position_x <= brick_position_x5 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y5)&&(ball_position_y + 16 <= brick_position_y5 +1)&&hit[10])
          ||
          ((ball_position_x+16-1>=brick_position_x6)&&(ball_position_x <= brick_position_x6 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y6)&&(ball_position_y + 16 <= brick_position_y6 +1)&&hit[9])
          ||
          ((ball_position_x+16-1>=brick_position_x7)&&(ball_position_x <= brick_position_x7 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y7)&&(ball_position_y + 16 <= brick_position_y7 +1)&&hit[8])
          ||            
          ((ball_position_x+16-1>=brick_position_x8)&&(ball_position_x <= brick_position_x8 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y8)&&(ball_position_y + 16 <= brick_position_y8 +1)&&hit[7])
          ||
          ((ball_position_x+16-1>=brick_position_x9)&&(ball_position_x <= brick_position_x9 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y9)&&(ball_position_y + 16 <= brick_position_y9 +1)&&hit[6])
          ||
          ((ball_position_x+16-1>=brick_position_x10)&&(ball_position_x <= brick_position_x10 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y10)&&(ball_position_y + 16 <= brick_position_y10 +1)&&hit[5])
          ||
          ((ball_position_x+16-1>=brick_position_x11)&&(ball_position_x <= brick_position_x11 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y11)&&(ball_position_y + 16 <= brick_position_y11 +1)&&hit[4])
          ||
          ((ball_position_x+16-1>=brick_position_x12)&&(ball_position_x <= brick_position_x12 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y12)&&(ball_position_y + 16 <= brick_position_y12 +1)&&hit[3])
          ||
          ((ball_position_x+16-1>=brick_position_x13)&&(ball_position_x <= brick_position_x13 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y13)&&(ball_position_y + 16 <= brick_position_y13 +1)&&hit[2])
          ||
          ((ball_position_x+16-1>=brick_position_x14)&&(ball_position_x <= brick_position_x14 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y14)&&(ball_position_y + 16 <= brick_position_y14 +1)&&hit[1])
          ||
          ((ball_position_x+16-1>=brick_position_x15)&&(ball_position_x <= brick_position_x15 + brick_width-1)&&(ball_position_y + 16 >= brick_position_y15)&&(ball_position_y + 16 <= brick_position_y15 +1)&&hit[0])
          )) 
          )  
          ball_next_stage = S1;
       else
       if(ball_position_y +16>= 789)      //hit bottom of the wall
         ball_next_stage = S5;
       else
         ball_next_stage = S4;
    end
    
    
    S5:
    begin
      if(rst)
        ball_next_stage = S0;
      else
        ball_next_stage = S5;
    end
    
      default: ball_next_stage = S0;
      endcase
    end
    
    
    
    always@(posedge clk)
    begin
      gameover_sig <= 1'b0;
      if((rst) || (hit == 16'b0000000000000000))
        begin
          ball_position_x<=11'd679;
          ball_position_y<=10'd720;
        end
      else
        begin
          case(ball_next_stage)
          
          S0:     //initial
          begin
            ball_position_x<=11'd679;
            ball_position_y<=10'd720;
          end
          
          S1:    //ball go top left
          begin
            ball_position_x <= ball_position_x - ball_x_speed;
            ball_position_y <= ball_position_y - ball_y_speed;       
          end
          
          S2:    //ball go top right
          begin
            ball_position_x <= ball_position_x + ball_x_speed;
            ball_position_y <= ball_position_y - ball_y_speed;       
          end
          
          S3:    //ball go bottom right
          begin
            ball_position_x <= ball_position_x + ball_x_speed;
            ball_position_y <= ball_position_y + ball_y_speed;       
          end
                      
          S4:   //ball go bottom left
          begin
            ball_position_x <= ball_position_x - ball_x_speed;
            ball_position_y <= ball_position_y + ball_y_speed;       
          end
          
          
          S5:   //end
          begin
            gameover_sig <= 1'b1;
            ball_position_x<=11'd679;
            ball_position_y<=10'd720;      
          end
        
        
          default: 
            begin
              ball_position_x<=11'd679;
              ball_position_y<=10'd720;
            end
          endcase
        
        end
    
    end
    
  
  

endmodule
