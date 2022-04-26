`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2022 06:44:46 PM
// Design Name: 
// Module Name: drawcon_new
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


module drawcon_new(
input clk,rst, clkpxl,
input show_welcome,
input [10:0] blkpos_x,
input [9:0] blkpos_y,
input [10:0] draw_x,
input [9:0] draw_y,
input start,
output reg [3:0] r,g,b,
output [15:0] hit
    );
    

  
reg [3:0] bg_r, bg_g, bg_b;
reg [3:0] blk_r, blk_g, blk_b;
reg [3:0] brick_r, brick_g, brick_b;
reg [3:0] ball_r, ball_g, ball_b;
wire [10:0] ball_position_x;
wire [9:0] ball_position_y;
wire [5:0] ball_current_stage;





wire [10:0] brick_position_x0,brick_position_x1,brick_position_x2,
brick_position_x3,brick_position_x4,brick_position_x5,brick_position_x6,
brick_position_x7,brick_position_x8,brick_position_x9,brick_position_x10,brick_position_x11,
brick_position_x12,brick_position_x13,brick_position_x14,brick_position_x15;

wire [9:0] brick_position_y0,brick_position_y1,brick_position_y2,
brick_position_y3,brick_position_y4,brick_position_y5,brick_position_y6,
brick_position_y7,brick_position_y8,brick_position_y9,brick_position_y10,brick_position_y11,
brick_position_y12,brick_position_y13,brick_position_y14,brick_position_y15;

wire [7:0] douta;
wire [7:0] douta_welcome;
wire [7:0] douta_over;
wire [7:0] douta_ball;
wire [7:0] douta_bg;
wire [7:0] douta_win;
integer addra;
integer addra_welcome;
integer addra_over;
integer addra_ball;
integer addra_bg;
integer addra_win;

wire gameover_sig;

parameter brick_width = 11'd256;
parameter brick_height = 10'd64;

parameter blk_width = 11'd128;
parameter blk_height = 10'd10;


blk_mem_gen_0 brick_image (
  .clka(clkpxl),    // input wire clka
  .wea(wea),      // input wire [0 : 0] wea
  .addra(addra),  // input wire [12 : 0] addra
  .dina(dina),    // input wire [7 : 0] dina
  .douta(douta)  // output wire [7 : 0] douta
);

blk_mem_gen_1 welcome_screen (
  .clka(clkpxl),    // input wire clka
  .wea(wea),      // input wire [0 : 0] wea
  .addra(addra_welcome),  // input wire [13 : 0] addra
  .dina(dina),    // input wire [7 : 0] dina
  .douta(douta_welcome)  // output wire [7 : 0] douta
);

blk_mem_gen_2 game_over (
  .clka(clkpxl),    // input wire clka
  .wea(wea),      // input wire [0 : 0] wea
  .addra(addra_over),  // input wire [15 : 0] addra
  .dina(dina),    // input wire [7 : 0] dina
  .douta(douta_over)  // output wire [7 : 0] douta
);

blk_mem_gen_3 ball_img (
  .clka(clkpxl),    // input wire clka
  .wea(wea),      // input wire [0 : 0] wea
  .addra(addra_ball),  // input wire [8 : 0] addra
  .dina(dina),    // input wire [7 : 0] dina
  .douta(douta_ball)  // output wire [7 : 0] douta
);

blk_mem_gen_4 bg_img (
  .clka(clkpxl),    // input wire clka
  .wea(wea),      // input wire [0 : 0] wea
  .addra(addra_bg),  // input wire [13 : 0] addra
  .dina(dina),    // input wire [7 : 0] dina
  .douta(douta_bg)  // output wire [7 : 0] douta
);

blk_mem_gen_5 win_img (
  .clka(clkpxl),    // input wire clka
  .wea(wea),      // input wire [0 : 0] wea
  .addra(addra_win),  // input wire [15 : 0] addra
  .dina(dina),    // input wire [7 : 0] dina
  .douta(douta_win)  // output wire [7 : 0] douta
);

//wire [15:0] hit;  //4 * 4
all_brick allbrick(
.clk(clk), .rst(rst),
.ball_position_x(ball_position_x),
.ball_position_y(ball_position_y),
.hit(hit)
    );



brick_position brickposition(
.clk(clk), .rst(rst),
.hit(hit),
.brick_position_x0(brick_position_x0),.brick_position_x1(brick_position_x1),.brick_position_x2(brick_position_x2),
.brick_position_x3(brick_position_x3),.brick_position_x4(brick_position_x4),.brick_position_x5(brick_position_x5),
.brick_position_x6(brick_position_x6),.brick_position_x7(brick_position_x7),.brick_position_x8(brick_position_x8),
.brick_position_x9(brick_position_x9),.brick_position_x10(brick_position_x10),.brick_position_x11(brick_position_x11),
.brick_position_x12(brick_position_x12),.brick_position_x13(brick_position_x13),.brick_position_x14(brick_position_x14),
.brick_position_x15(brick_position_x15),

.brick_position_y0(brick_position_y0),.brick_position_y1(brick_position_y1),.brick_position_y2(brick_position_y2),
.brick_position_y3(brick_position_y3),.brick_position_y4(brick_position_y4),.brick_position_y5(brick_position_y5),
.brick_position_y6(brick_position_y6),.brick_position_y7(brick_position_y7),.brick_position_y8(brick_position_y8),
.brick_position_y9(brick_position_y9),.brick_position_y10(brick_position_y10),.brick_position_y11(brick_position_y11),
.brick_position_y12(brick_position_y12),.brick_position_y13(brick_position_y13),.brick_position_y14(brick_position_y14),
.brick_position_y15(brick_position_y15)
    );





ball ball_pos
(
.clk(clk),.rst(rst),
.start(start),
.hit(hit),
.blkpos_x(blkpos_x),
.blkpos_y(blkpos_y),

.brick_position_x0(brick_position_x0),.brick_position_x1(brick_position_x1),.brick_position_x2(brick_position_x2),
.brick_position_x3(brick_position_x3),.brick_position_x4(brick_position_x4),.brick_position_x5(brick_position_x5),
.brick_position_x6(brick_position_x6),.brick_position_x7(brick_position_x7),.brick_position_x8(brick_position_x8),
.brick_position_x9(brick_position_x9),.brick_position_x10(brick_position_x10),.brick_position_x11(brick_position_x11),
.brick_position_x12(brick_position_x12),.brick_position_x13(brick_position_x13),.brick_position_x14(brick_position_x14),
.brick_position_x15(brick_position_x15),

.brick_position_y0(brick_position_y0),.brick_position_y1(brick_position_y1),.brick_position_y2(brick_position_y2),
.brick_position_y3(brick_position_y3),.brick_position_y4(brick_position_y4),.brick_position_y5(brick_position_y5),
.brick_position_y6(brick_position_y6),.brick_position_y7(brick_position_y7),.brick_position_y8(brick_position_y8),
.brick_position_y9(brick_position_y9),.brick_position_y10(brick_position_y10),.brick_position_y11(brick_position_y11),
.brick_position_y12(brick_position_y12),.brick_position_y13(brick_position_y13),.brick_position_y14(brick_position_y14),
.brick_position_y15(brick_position_y15),

.ball_position_x(ball_position_x),
.ball_position_y(ball_position_y),
.gameover_sig(gameover_sig),
.ball_current_stage(ball_current_stage)
    );



    
    
/*edge wall*/
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
      addra_bg = (draw_x)%100 + (draw_y%100)*(100);
      bg_r = {1'b0,douta_bg[7:5]};
      bg_g = {1'b0,douta_bg[4:2]};
      bg_b = {2'b00,douta_bg[1:0]};
    end
end

/*block*/
always@(*)
begin
  
  if ( ((draw_x >= blkpos_x) && (draw_x <= blkpos_x + blk_width)) && ((draw_y >= blkpos_y) && (draw_y <= blkpos_y + blk_height)) )
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

/*brick*/
always@(*)
begin
  //draw first brick; when hit[15] is 1, the brick shows. Or it will disappears
  if ( ((draw_x >= brick_position_x0) && (draw_x < (brick_position_x0 + brick_width))) && ((draw_y >= brick_position_y0) && (draw_y < brick_position_y0 + brick_height)) && (hit[15]==1'b1) )
    begin
      addra = (draw_x-brick_position_x0)%64 + (draw_y-brick_position_y0)*(brick_height);
      brick_r = {1'b0,douta[7:5]};
      brick_g = {1'b0,douta[4:2]};
      brick_b = {2'b00,douta[1:0]};
//      brick_r = 4'b0011;
//      brick_g = 4'b0011;
//      brick_b = 4'b0111;
    end
  else
   //draw second brick
   if ( ((draw_x >= brick_position_x1) && (draw_x < brick_position_x1 + brick_width)) && ((draw_y >= brick_position_y1) && (draw_y < brick_position_y1 + brick_height)) && (hit[14]==1'b1) )
    begin
      addra = (draw_x-brick_position_x1)%64 + (draw_y-brick_position_y1)*(brick_height);
      brick_r = {1'b0,douta[7:5]};
      brick_g = {1'b0,douta[4:2]};
      brick_b = {2'b00,douta[1:0]};
//      brick_r = 4'b0011;
//      brick_g = 4'b0011;
//      brick_b = 4'b0111;
    end
  else
 if ( ((draw_x >= brick_position_x2) && (draw_x < brick_position_x2 + brick_width)) && ((draw_y >= brick_position_y2) && (draw_y < brick_position_y2 + brick_height)) && (hit[13]==1'b1) )
    begin
      addra = (draw_x-brick_position_x2)%64 + (draw_y-brick_position_y2)*(brick_height);
      brick_r = {1'b0,douta[7:5]};
      brick_g = {1'b0,douta[4:2]};
      brick_b = {2'b00,douta[1:0]};
//      brick_r = 4'b0011;
//      brick_g = 4'b0011;
//      brick_b = 4'b0111;
    end
  else
   if ( ((draw_x >= brick_position_x3) && (draw_x < brick_position_x3 + brick_width)) && ((draw_y >= brick_position_y3) && (draw_y < brick_position_y3 + brick_height)) && (hit[12]==1'b1) )
    begin
      addra = (draw_x-brick_position_x3)%64 + (draw_y-brick_position_y3)*(brick_height);
      brick_r = {1'b0,douta[7:5]};
      brick_g = {1'b0,douta[4:2]};
      brick_b = {2'b00,douta[1:0]};
//      brick_r = 4'b0011;
//      brick_g = 4'b0011;
//      brick_b = 4'b0111;
    end
  else
    if ( ((draw_x >= brick_position_x4) && (draw_x < brick_position_x4 + brick_width)) && ((draw_y >= brick_position_y4) && (draw_y < brick_position_y4 + brick_height)) && (hit[11]==1'b1) )
    begin
      addra = (draw_x-brick_position_x4)%64 + (draw_y-brick_position_y4)*(brick_height);
      brick_r = {1'b0,douta[7:5]};
      brick_g = {1'b0,douta[4:2]};
      brick_b = {2'b00,douta[1:0]};
//      brick_r = 4'b0011;
//      brick_g = 4'b0011;
//      brick_b = 4'b0111;
    end
  else
   if ( ((draw_x >= brick_position_x5) && (draw_x < brick_position_x5 + brick_width)) && ((draw_y >= brick_position_y5) && (draw_y < brick_position_y5 + brick_height)) && (hit[10]==1'b1) )
    begin
      addra = (draw_x-brick_position_x5)%64 + (draw_y-brick_position_y5)*(brick_height);
      brick_r = {1'b0,douta[7:5]};
      brick_g = {1'b0,douta[4:2]};
      brick_b = {2'b00,douta[1:0]};
//      brick_r = 4'b0011;
//      brick_g = 4'b0011;
//      brick_b = 4'b0111;
    end
  else
 if ( ((draw_x >= brick_position_x6) && (draw_x < brick_position_x6 + brick_width)) && ((draw_y >= brick_position_y6) && (draw_y < brick_position_y6 + brick_height)) && (hit[9]==1'b1) )
    begin
      addra = (draw_x-brick_position_x6)%64 + (draw_y-brick_position_y6)*(brick_height);
      brick_r = {1'b0,douta[7:5]};
      brick_g = {1'b0,douta[4:2]};
      brick_b = {2'b00,douta[1:0]};
//      brick_r = 4'b0011;
//      brick_g = 4'b0011;
//      brick_b = 4'b0111;
    end
  else
   if ( ((draw_x >= brick_position_x7) && (draw_x < brick_position_x7 + brick_width)) && ((draw_y >= brick_position_y7) && (draw_y < brick_position_y7 + brick_height)) && (hit[8]==1'b1) )
    begin
      addra = (draw_x-brick_position_x7)%64 + (draw_y-brick_position_y7)*(brick_height);
      brick_r = {1'b0,douta[7:5]};
      brick_g = {1'b0,douta[4:2]};
      brick_b = {2'b00,douta[1:0]};
//      brick_r = 4'b0011;
//      brick_g = 4'b0011;
//      brick_b = 4'b0111;
    end
  else
    if ( ((draw_x >= brick_position_x8) && (draw_x < brick_position_x8 + brick_width)) && ((draw_y >= brick_position_y8) && (draw_y < brick_position_y8 + brick_height)) && (hit[7]==1'b1) )
    begin
      addra = (draw_x-brick_position_x8)%64 + (draw_y-brick_position_y8)*(brick_height);
      brick_r = {1'b0,douta[7:5]};
      brick_g = {1'b0,douta[4:2]};
      brick_b = {2'b00,douta[1:0]};
//      brick_r = 4'b0011;
//      brick_g = 4'b0011;
//      brick_b = 4'b0111;
    end
  else
   if ( ((draw_x >= brick_position_x9) && (draw_x < brick_position_x9 + brick_width)) && ((draw_y >= brick_position_y9) && (draw_y < brick_position_y9 + brick_height)) && (hit[6]==1'b1) )
    begin
      addra = (draw_x-brick_position_x9)%64 + (draw_y-brick_position_y9)*(brick_height);
      brick_r = {1'b0,douta[7:5]};
      brick_g = {1'b0,douta[4:2]};
      brick_b = {2'b00,douta[1:0]};
//      brick_r = 4'b0011;
//      brick_g = 4'b0011;
//      brick_b = 4'b0111;
    end
  else
   if ( ((draw_x >= brick_position_x10) && (draw_x < brick_position_x10 + brick_width)) && ((draw_y >= brick_position_y10) && (draw_y < brick_position_y10 + brick_height)) && (hit[5]==1'b1) )
    begin
      addra = (draw_x-brick_position_x10)%64 + (draw_y-brick_position_y10)*(brick_height);
      brick_r = {1'b0,douta[7:5]};
      brick_g = {1'b0,douta[4:2]};
      brick_b = {2'b00,douta[1:0]};
//      brick_r = 4'b0011;
//      brick_g = 4'b0011;
//      brick_b = 4'b0111;
    end
  else
   if ( ((draw_x >= brick_position_x11) && (draw_x < brick_position_x11 + brick_width)) && ((draw_y >= brick_position_y11) && (draw_y < brick_position_y11 + brick_height)) && (hit[4]==1'b1) )
    begin
      addra = (draw_x-brick_position_x11)%64 + (draw_y-brick_position_y11)*(brick_height);
      brick_r = {1'b0,douta[7:5]};
      brick_g = {1'b0,douta[4:2]};
      brick_b = {2'b00,douta[1:0]};
//      brick_r = 4'b0011;
//      brick_g = 4'b0011;
//      brick_b = 4'b0111;
    end
  else
    if ( ((draw_x >= brick_position_x12) && (draw_x < brick_position_x12 + brick_width)) && ((draw_y >= brick_position_y12) && (draw_y < brick_position_y12 + brick_height)) && (hit[3]==1'b1) )
    begin
      addra = (draw_x-brick_position_x12)%64 + (draw_y-brick_position_y12)*(brick_height);
      brick_r = {1'b0,douta[7:5]};
      brick_g = {1'b0,douta[4:2]};
      brick_b = {2'b00,douta[1:0]};
//      brick_r = 4'b0011;
//      brick_g = 4'b0011;
//      brick_b = 4'b0111;
    end
  else
   if ( ((draw_x >= brick_position_x13) && (draw_x < brick_position_x13 + brick_width)) && ((draw_y >= brick_position_y13) && (draw_y < brick_position_y13 + brick_height)) && (hit[2]==1'b1) )
    begin
      addra = (draw_x-brick_position_x13)%64 + (draw_y-brick_position_y13)*(brick_height);
      brick_r = {1'b0,douta[7:5]};
      brick_g = {1'b0,douta[4:2]};
      brick_b = {2'b00,douta[1:0]};
//      brick_r = 4'b0011;
//      brick_g = 4'b0011;
//      brick_b = 4'b0111;
    end
  else
 if ( ((draw_x >= brick_position_x14) && (draw_x < brick_position_x14 + brick_width)) && ((draw_y >= brick_position_y14) && (draw_y < brick_position_y14 + brick_height)) && (hit[1]==1'b1) )
    begin
      addra = (draw_x-brick_position_x14)%64 + (draw_y-brick_position_y14)*(brick_height);
      brick_r = {1'b0,douta[7:5]};
      brick_g = {1'b0,douta[4:2]};
      brick_b = {2'b00,douta[1:0]};
//      brick_r = 4'b0011;
//      brick_g = 4'b0011;
//      brick_b = 4'b0111;
    end
  else
  if ( ((draw_x >= brick_position_x15) && (draw_x < brick_position_x15 + brick_width)) && ((draw_y >= brick_position_y15) && (draw_y < brick_position_y15 + brick_height)) && (hit[0]==1'b1) )
    begin
      addra = (draw_x-brick_position_x15)%64 + (draw_y-brick_position_y15)*(brick_height);
      brick_r = {1'b0,douta[7:5]};
      brick_g = {1'b0,douta[4:2]};
      brick_b = {2'b00,douta[1:0]};
//      brick_r = 4'b0011;
//      brick_g = 4'b0011;
//      brick_b = 4'b0111;
    end
   else
    begin
      brick_r = 4'b0000;
      brick_g = 4'b0000;
      brick_b = 4'b0000;
    end     
         
end




/*ball*/
always@(*)
begin
  if ( ((draw_x >= ball_position_x) && (draw_x <= ball_position_x + 16)) && ((draw_y >= ball_position_y) && (draw_y <= ball_position_y +16)) )
    begin
        case(ball_current_stage)
        //S1
        6'b000010 : addra_ball = (draw_y-ball_position_y)+(15-(draw_x-ball_position_x))*16;
        //S2
        6'b000100 : addra_ball = (draw_y-ball_position_y)+(draw_x-ball_position_x)*16;
        //S3
        6'b001000 : addra_ball = (15-(draw_x-ball_position_x))+(draw_y-ball_position_y)*16;
        //S4
        6'b010000 : addra_ball = (draw_x-ball_position_x)+(draw_y-ball_position_y)*16;
        default : addra_ball = (draw_y-ball_position_y)+(15-(draw_x-ball_position_x))*16;
        endcase
      
      ball_r = {1'b0,douta_ball[7:5]};
      ball_g = {1'b0,douta_ball[4:2]};
      ball_b = {2'b00,douta_ball[1:0]};
//      ball_r = 4'b0000;
//      ball_g = 4'b0011;
//      ball_b = 4'b0100;
    end
  else
    begin
      ball_r = 4'b0000;
      ball_g = 4'b0000;
      ball_b = 4'b0000;
    end       
end







always@(*)
    if(gameover_sig == 1'b1)
    begin
        addra_over = draw_x/5+(draw_y/5)*256;
        r = {1'b0,douta_over[7:5]};
        g = {1'b0,douta_over[4:2]};
        b = {2'b00,douta_over[1:0]};
    end
    else
    if(show_welcome == 1'b1)
    begin
        addra_welcome = draw_x*300/1280+(draw_y*211/800)*300;
        r = {1'b0,douta_welcome[7:5]};
        g = {1'b0,douta_welcome[4:2]};
        b = {2'b00,douta_welcome[1:0]};
    end
    else
    if(hit == 16'b0000000000000000)
    begin
        addra_win = draw_x*300/1280+(draw_y*210/800)*300;
        r = {1'b0,douta_win[7:5]};
        g = {1'b0,douta_win[4:2]};
        b = {2'b00,douta_win[1:0]};
    end
    else
    begin
      if(
      (blk_r != 4'b0000) || (blk_g != 4'b0000) || (blk_b != 4'b0000) 
      ||
      (brick_r != 4'b0000) || (brick_g != 4'b0000) || (brick_b != 4'b0000)
      ||
      (ball_r != 4'b0000) || (ball_g != 4'b0000) || (ball_b != 4'b0000)
      )
        begin
          r = blk_r | brick_r | ball_r;
          g = blk_g | brick_g | ball_g;
          b = blk_b | brick_b | ball_b;
        end
      else
        begin
          r = bg_r;
          g = bg_g;
          b = bg_b;
        end
end




endmodule
