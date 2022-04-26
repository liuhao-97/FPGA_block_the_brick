`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2022 09:23:19 AM
// Design Name: 
// Module Name: led_light
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


module led_light(
input clk, rst,
input [15:0] hit,
output [15:0] led
    );
    
    reg led = 16'b0000_0000_0000_0000;
    
//    always@(posedge clk)
//    begin
//      if(rst)
//        begin
//          led <= 16'b1111_1111_1111_1111;
//        end
//        else
//          begin
            
          
//          end
    
    end
    
    
    
    
    
    
    
endmodule
