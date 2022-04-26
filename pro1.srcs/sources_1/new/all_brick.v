`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2022 06:51:04 PM
// Design Name: 
// Module Name: all_brick
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


module all_brick(
input clk, rst,
input [10:0] ball_position_x,
input [9:0] ball_position_y,
output [15:0] hit   // combine all the hit together. 4*4 bricks
// then we will know which brick is hitted by ball and should disappear
//(change the color and can be passed by ball next time)
    );
// in this module we will combine all the hit from each brick module

reg [10:0] brick_position_x0 = 11'd32;
reg [9:0]  brick_position_y0 = 10'd32; 
reg [10:0] brick_position_x1 = 11'd352;
reg [9:0]  brick_position_y1 = 10'd32;   
reg [10:0] brick_position_x2 = 11'd672;
reg [9:0]  brick_position_y2 = 10'd32; 
reg [10:0] brick_position_x3 = 11'd992;
reg [9:0]  brick_position_y3 = 10'd32; 

reg [10:0] brick_position_x4 = 11'd32;
reg [9:0]  brick_position_y4 = 10'd104; 
reg [10:0] brick_position_x5 = 11'd352;
reg [9:0]  brick_position_y5 = 10'd104; 
reg [10:0] brick_position_x6 = 11'd672;
reg [9:0]  brick_position_y6 = 10'd104;   
reg [10:0] brick_position_x7 = 11'd992;
reg [9:0]  brick_position_y7 = 10'd104; 

reg [10:0] brick_position_x8 = 11'd32;
reg [9:0]  brick_position_y8 = 10'd176; 
reg [10:0] brick_position_x9 = 11'd352;
reg [9:0]  brick_position_y9 = 10'd176; 
reg [10:0] brick_position_x10 = 11'd672;
reg [9:0]  brick_position_y10 = 10'd176; 
reg [10:0] brick_position_x11 = 11'd992;
reg [9:0]  brick_position_y11 = 10'd176;   

reg [10:0] brick_position_x12 = 11'd32;
reg [9:0]  brick_position_y12 = 10'd248; 
reg [10:0] brick_position_x13 = 11'd352;
reg [9:0]  brick_position_y13 = 10'd248; 
reg [10:0] brick_position_x14 = 11'd672;
reg [9:0]  brick_position_y14 = 10'd248; 
reg [10:0] brick_position_x15 = 11'd992;
reg [9:0]  brick_position_y15 = 10'd248; 



always@(posedge clk)
begin
    if(rst)
    begin
        brick_position_x0 = 11'd32;
        brick_position_y0 = 10'd32; 
        brick_position_x1 = 11'd352;
        brick_position_y1 = 10'd32;   
        brick_position_x2 = 11'd672;
        brick_position_y2 = 10'd32; 
        brick_position_x3 = 11'd992;
        brick_position_y3 = 10'd32; 
        
        brick_position_x4 = 11'd32;
        brick_position_y4 = 10'd104; 
        brick_position_x5 = 11'd352;
        brick_position_y5 = 10'd104; 
        brick_position_x6 = 11'd672;
        brick_position_y6 = 10'd104;   
        brick_position_x7 = 11'd992;
        brick_position_y7 = 10'd104; 
        
        brick_position_x8 = 11'd32;
        brick_position_y8 = 10'd176; 
        brick_position_x9 = 11'd352;
        brick_position_y9 = 10'd176; 
        brick_position_x10 = 11'd672;
        brick_position_y10 = 10'd176; 
        brick_position_x11 = 11'd992;
        brick_position_y11 = 10'd176;   
        
        brick_position_x12 = 11'd32;
        brick_position_y12 = 10'd248; 
        brick_position_x13 = 11'd352;
        brick_position_y13 = 10'd248; 
        brick_position_x14 = 11'd672;
        brick_position_y14 = 10'd248; 
        brick_position_x15 = 11'd992;
        brick_position_y15 = 10'd248; 
    end

end





    
brick brick0(
.clk(clk), .rst(rst),
.brick_position_x(brick_position_x0),
.brick_position_y(brick_position_y0),
.ball_position_x(ball_position_x),
.ball_position_y(ball_position_y),
.hit(hit[15])       // if the brick is hit, set hit to 0
    );
    
brick brick1(
.clk(clk), .rst(rst),
.brick_position_x(brick_position_x1),
.brick_position_y(brick_position_y1),
.ball_position_x(ball_position_x),
.ball_position_y(ball_position_y),
.hit(hit[14])       // if the brick is hit, set hit to 0
    ); 
    
brick brick2(
.clk(clk), .rst(rst),
.brick_position_x(brick_position_x2),
.brick_position_y(brick_position_y2),
.ball_position_x(ball_position_x),
.ball_position_y(ball_position_y),
.hit(hit[13])       // if the brick is hit, set hit to 0
    );
    
brick brick3(
.clk(clk), .rst(rst),
.brick_position_x(brick_position_x3),
.brick_position_y(brick_position_y3),
.ball_position_x(ball_position_x),
.ball_position_y(ball_position_y),
.hit(hit[12])       // if the brick is hit, set hit to 0
    ); 
    
brick brick4(
.clk(clk), .rst(rst),
.brick_position_x(brick_position_x4),
.brick_position_y(brick_position_y4),
.ball_position_x(ball_position_x),
.ball_position_y(ball_position_y),
.hit(hit[11])       // if the brick is hit, set hit to 0
    );
    
brick brick5(
.clk(clk), .rst(rst),
.brick_position_x(brick_position_x5),
.brick_position_y(brick_position_y5),
.ball_position_x(ball_position_x),
.ball_position_y(ball_position_y),
.hit(hit[10])       // if the brick is hit, set hit to 0
    ); 
    
brick brick6(
.clk(clk), .rst(rst),
.brick_position_x(brick_position_x6),
.brick_position_y(brick_position_y6),
.ball_position_x(ball_position_x),
.ball_position_y(ball_position_y),
.hit(hit[9])       // if the brick is hit, set hit to 0
    );
    
brick brick7(
.clk(clk), .rst(rst),
.brick_position_x(brick_position_x7),
.brick_position_y(brick_position_y7),
.ball_position_x(ball_position_x),
.ball_position_y(ball_position_y),
.hit(hit[8])       // if the brick is hit, set hit to 0
    );    
    
    
brick brick8(
.clk(clk), .rst(rst),
.brick_position_x(brick_position_x8),
.brick_position_y(brick_position_y8),
.ball_position_x(ball_position_x),
.ball_position_y(ball_position_y),
.hit(hit[7])       // if the brick is hit, set hit to 0
    );
    
brick brick9(
.clk(clk), .rst(rst),
.brick_position_x(brick_position_x9),
.brick_position_y(brick_position_y9),
.ball_position_x(ball_position_x),
.ball_position_y(ball_position_y),
.hit(hit[6])       // if the brick is hit, set hit to 0
    ); 
    
brick brick10(
.clk(clk), .rst(rst),
.brick_position_x(brick_position_x10),
.brick_position_y(brick_position_y10),
.ball_position_x(ball_position_x),
.ball_position_y(ball_position_y),
.hit(hit[5])       // if the brick is hit, set hit to 0
    );
    
brick brick11(
.clk(clk), .rst(rst),
.brick_position_x(brick_position_x11),
.brick_position_y(brick_position_y11),
.ball_position_x(ball_position_x),
.ball_position_y(ball_position_y),
.hit(hit[4])       // if the brick is hit, set hit to 0
    );    
    
    
brick brick12(
.clk(clk), .rst(rst),
.brick_position_x(brick_position_x12),
.brick_position_y(brick_position_y12),
.ball_position_x(ball_position_x),
.ball_position_y(ball_position_y),
.hit(hit[3])       // if the brick is hit, set hit to 0
    ); 
    
brick brick13(
.clk(clk), .rst(rst),
.brick_position_x(brick_position_x13),
.brick_position_y(brick_position_y13),
.ball_position_x(ball_position_x),
.ball_position_y(ball_position_y),
.hit(hit[2])       // if the brick is hit, set hit to 0
    );
    
brick brick14(
.clk(clk), .rst(rst),
.brick_position_x(brick_position_x14),
.brick_position_y(brick_position_y14),
.ball_position_x(ball_position_x),
.ball_position_y(ball_position_y),
.hit(hit[1])       // if the brick is hit, set hit to 0
    );   
   
   
brick brick15(
.clk(clk), .rst(rst),
.brick_position_x(brick_position_x15),
.brick_position_y(brick_position_y15),
.ball_position_x(ball_position_x),
.ball_position_y(ball_position_y),
.hit(hit[0])       // if the brick is hit, set hit to 0
    );    
 
endmodule
