`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2022 02:28:00 PM
// Design Name: 
// Module Name: vga_out
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
//////////////////////s////////////////////////////////////////////////////////////


module vga_out(
input clk, 
input [3:0] draw_r, draw_g, draw_b,
output [3:0] pix_r, pix_g, pix_b, 
output hsync, vsync,
output reg [10:0] curr_x = 11'b0,
output reg [9:0] curr_y = 10'b0
    );
    
reg [10:0] hcount = 11'b0;
reg [9:0] vcount= 10'b0;


always@(posedge clk)
begin
  if(hcount >= 11'd1679)
    begin
      hcount <= 11'd0;
    end
  else 
    begin
      hcount <= hcount + 11'd1;
    end
end
  

always@(posedge clk)
begin
  if(hcount >= 11'd1679) 
    begin
      if (vcount >= 10'd827) vcount <= 10'b0;
      else vcount <= vcount + 1'b1;
    end   
end


always@(posedge clk)
begin
  if((hcount >= 11'd336) && (hcount <= 11'd1615))
    begin
      if(curr_x >= 11'd1279)
        begin
          curr_x <= 11'd0;
        end
      else 
        begin
          curr_x <= curr_x + 11'd1;
        end
    end   
end
  

always@(posedge clk)
begin
  if((vcount >= 10'd27) && (vcount <= 10'd826))
    begin
      if(curr_x >= 11'd1279) 
        begin
          if (curr_y >= 10'd799) curr_y <= 10'b0;
          else curr_y <= curr_y + 1'b1;
        end  
    end 
end

    
assign hsync = (hcount <= 11'd135) ? 1'b0 : 1'b1 ;
assign vsync = (vcount <= 10'd2) ? 1'b1 : 1'b0 ;

assign pix_r = ((curr_x>=0) & (hcount>=336) & (curr_x<=1279) & (hcount<=1615) & (curr_y>0) & (vcount>=27) & (curr_y<=799) & (vcount<=826)) ? draw_r :4'b0000;
assign pix_g = ((curr_x>=0) & (hcount>=336) & (curr_x<=1279) & (hcount<=1615) & (curr_y>0) & (vcount>=27) & (curr_y<=799) & (vcount<=826)) ? draw_g :4'b0000;
assign pix_b = ((curr_x>=0) & (hcount>=336) & (curr_x<=1279) & (hcount<=1615) & (curr_y>0) & (vcount>=27) & (curr_y<=799) & (vcount<=826)) ? draw_b :4'b0000;


endmodule
