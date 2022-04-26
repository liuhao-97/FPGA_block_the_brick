`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2022 09:45:03 AM
// Design Name: 
// Module Name: brick_position
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


module brick_position(
input clk, rst,
input [15:0] hit,
output reg [10:0] brick_position_x0,brick_position_x1,brick_position_x2,
brick_position_x3,brick_position_x4,brick_position_x5,brick_position_x6,
brick_position_x7,brick_position_x8,brick_position_x9,brick_position_x10,brick_position_x11,
brick_position_x12,brick_position_x13,brick_position_x14,brick_position_x15,

output reg [9:0] brick_position_y0,brick_position_y1,brick_position_y2,
brick_position_y3,brick_position_y4,brick_position_y5,brick_position_y6,
brick_position_y7,brick_position_y8,brick_position_y9,brick_position_y10,brick_position_y11,
brick_position_y12,brick_position_y13,brick_position_y14,brick_position_y15

    );
    
parameter brick_x0 = 11'd32;
parameter brick_y0 = 10'd32; 
parameter brick_x1 = 11'd352;
parameter brick_y1 = 10'd32;   
parameter brick_x2 = 11'd672;
parameter brick_y2 = 10'd32; 
parameter brick_x3 = 11'd992;
parameter brick_y3 = 10'd32; 

parameter brick_x4 = 11'd32;
parameter brick_y4 = 10'd104; 
parameter brick_x5 = 11'd352;
parameter brick_y5 = 10'd104; 
parameter brick_x6 = 11'd672;
parameter brick_y6 = 10'd104;   
parameter brick_x7 = 11'd992;
parameter brick_y7 = 10'd104; 

parameter brick_x8 = 11'd32;
parameter brick_y8 = 10'd176; 
parameter brick_x9 = 11'd352;
parameter brick_y9 = 10'd176; 
parameter brick_x10 = 11'd672;
parameter brick_y10 = 10'd176; 
parameter brick_x11 = 11'd992;
parameter brick_y11 = 10'd176;   

parameter brick_x12 = 11'd32;
parameter brick_y12 = 10'd248; 
parameter brick_x13 = 11'd352;
parameter brick_y13 = 10'd248; 
parameter brick_x14 = 11'd672;
parameter brick_y14 = 10'd248; 
parameter brick_x15 = 11'd992;
parameter brick_y15 = 10'd248;    
    
    
    always@*
      begin
        if(rst)
          begin
            brick_position_x0=brick_x0   ;
            brick_position_x1=brick_x1   ;
            brick_position_x2=brick_x2   ;
            brick_position_x3=brick_x3   ;
            brick_position_x4=brick_x4   ;
            brick_position_x5=brick_x5   ;
            brick_position_x6=brick_x6   ;
            brick_position_x7=brick_x7   ;
            brick_position_x8=brick_x8   ;
            brick_position_x9=brick_x9   ;
            brick_position_x10=brick_x10  ;
            brick_position_x11=brick_x11  ;
            brick_position_x12=brick_x12  ;
            brick_position_x13=brick_x13  ;
            brick_position_x14=brick_x14  ;
            brick_position_x15=brick_x15  ;
          
            brick_position_y0=brick_y0   ;
            brick_position_y1=brick_y1   ;
            brick_position_y2=brick_y2   ;
            brick_position_y3=brick_y3   ;
            brick_position_y4=brick_y4   ;
            brick_position_y5=brick_y5   ;
            brick_position_y6=brick_y6   ;
            brick_position_y7=brick_y7   ;
            brick_position_y8=brick_y8   ;
            brick_position_y9=brick_y9   ;
            brick_position_y10=brick_y10  ;
            brick_position_y11=brick_y11  ;
            brick_position_y12=brick_y12  ;
            brick_position_y13=brick_y13  ;
            brick_position_y14=brick_y14  ;
            brick_position_y15=brick_y15  ;
          end
        else
          begin
            
            if(hit[15] == 1'b0)     //if hit[15]=0, then move the brick out of range and disappear
              begin
                brick_position_x0=11'd1500   ; //out of range of 1279 means disappear
                brick_position_y0=10'd900   ; //out of range of 799 means disappear
              end
            else
              begin
                brick_position_x0=brick_x0   ;
                brick_position_y0=brick_y0   ;
              end
          
            if(hit[14] == 1'b0)
              begin
                brick_position_x1=11'd1500   ; //out of range of 1279 means disappear
                brick_position_y1=10'd900   ; //out of range of 799 means disappear
              end
            else
              begin
                brick_position_x1=brick_x1   ;
                brick_position_y1=brick_y1   ;
              end
          
          if(hit[13] == 1'b0)
              begin
                brick_position_x2=11'd1500   ; //out of range of 1279 means disappear
                brick_position_y2=10'd900   ; //out of range of 799 means disappear
              end
            else
              begin
                brick_position_x2=brick_x2   ;
                brick_position_y2=brick_y2   ;
              end
          
            if(hit[12] == 1'b0)
              begin
                brick_position_x3=11'd1500   ; //out of range of 1279 means disappear
                brick_position_y3=10'd900   ; //out of range of 799 means disappear
              end
            else
              begin
                brick_position_x3=brick_x3   ;
                brick_position_y3=brick_y3   ;
              end
          
          if(hit[11] == 1'b0)
              begin
                brick_position_x4=11'd1500   ; //out of range of 1279 means disappear
                brick_position_y4=10'd900   ; //out of range of 799 means disappear
              end
            else
              begin
                brick_position_x4=brick_x4   ;
                brick_position_y4=brick_y4   ;
              end
          
            if(hit[10] == 1'b0)
              begin
                brick_position_x5=11'd1500   ; //out of range of 1279 means disappear
                brick_position_y5=10'd900   ; //out of range of 799 means disappear
              end
            else
              begin
                brick_position_x5=brick_x5   ;
                brick_position_y5=brick_y5   ;
              end
          
          if(hit[9] == 1'b0)
              begin
                brick_position_x6=11'd1500   ; //out of range of 1279 means disappear
                brick_position_y6=10'd900   ; //out of range of 799 means disappear
              end
            else
              begin
                brick_position_x6=brick_x6   ;
                brick_position_y6=brick_y6   ;
              end
          
            if(hit[8] == 1'b0)
              begin
                brick_position_x7=11'd1500   ; //out of range of 1279 means disappear
                brick_position_y7=10'd900   ; //out of range of 799 means disappear
              end
            else
              begin
                brick_position_x7=brick_x7   ;
                brick_position_y7=brick_y7   ;
              end
          
          
          if(hit[7] == 1'b0)
              begin
                brick_position_x8=11'd1500   ; //out of range of 1279 means disappear
                brick_position_y8=10'd900   ; //out of range of 799 means disappear
              end
            else
              begin
                brick_position_x8=brick_x8   ;
                brick_position_y8=brick_y8   ;
              end
          
            if(hit[6] == 1'b0)
              begin
                brick_position_x9=11'd1500   ; //out of range of 1279 means disappear
                brick_position_y9=10'd900   ; //out of range of 799 means disappear
              end
            else
              begin
                brick_position_x9=brick_x9   ;
                brick_position_y9=brick_y9   ;
              end
          
          if(hit[5] == 1'b0)
              begin
                brick_position_x10=11'd1500   ; //out of range of 1279 means disappear
                brick_position_y10=10'd900   ; //out of range of 799 means disappear
              end
            else
              begin
                brick_position_x10=brick_x10   ;
                brick_position_y10=brick_y10   ;
              end
          
            if(hit[4] == 1'b0)
              begin
                brick_position_x11=11'd1500   ; //out of range of 1279 means disappear
                brick_position_y11=10'd900   ; //out of range of 799 means disappear
              end
            else
              begin
                brick_position_x11=brick_x11   ;
                brick_position_y11=brick_y11   ;
              end
              
              
            if(hit[3] == 1'b0)
              begin
                brick_position_x12=11'd1500   ; //out of range of 1279 means disappear
                brick_position_y12=10'd900   ; //out of range of 799 means disappear
              end
            else
              begin
                brick_position_x12=brick_x12   ;
                brick_position_y12=brick_y12   ;
              end
          
          if(hit[2] == 1'b0)
              begin
                brick_position_x13=11'd1500   ; //out of range of 1279 means disappear
                brick_position_y13=10'd900   ; //out of range of 799 means disappear
              end
            else
              begin
                brick_position_x13=brick_x13   ;
                brick_position_y13=brick_y13   ;
              end
          
            if(hit[1] == 1'b0)
              begin
                brick_position_x14=11'd1500   ; //out of range of 1279 means disappear
                brick_position_y14=10'd900   ; //out of range of 799 means disappear
              end
            else
              begin
                brick_position_x14=brick_x14   ;
                brick_position_y14=brick_y14   ;
              end
            
            if(hit[0] == 1'b0)
              begin
                brick_position_x15=11'd1500   ; //out of range of 1279 means disappear
                brick_position_y15=10'd900   ; //out of range of 799 means disappear
              end
            else
              begin
                brick_position_x15=brick_x15   ;
                brick_position_y15=brick_y15   ;
              end
          end      
      end

    
endmodule
