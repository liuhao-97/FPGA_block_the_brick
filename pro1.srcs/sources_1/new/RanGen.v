`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2022 05:19:46 PM
// Design Name: 
// Module Name: RanGen
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


module RanGen(
input clk, rst,

input start,
input [7:0] seed,    
output reg [7:0] random_number,
output reg [5:0] random_speed

//output reg [2:0] random_speed
//output reg [2:0] random_speed_y
    );
    
    always@(posedge clk)
      begin
        if(rst)
        random_number <= seed;

        else
          begin
            random_number[0] <= random_number[7] ;
            random_number[1] <= random_number[0] ;
            random_number[2] <= random_number[1] ;
            random_number[3] <= random_number[2] ;
            random_number[4] <= random_number[3] ^ random_number[7] ;
            random_number[5] <= random_number[4] ^ random_number[7] ;
            random_number[6] <= random_number[5] ^ random_number[7] ;
            random_number[7] <= random_number[6] ;
          end  
      end
    

    always@(posedge clk)
    begin
      if(rst)
        begin
          random_speed <= 3'b0;
          //random_speed_y <= 3'b0;
        end
      else
        begin
          random_speed <= random_number%10+1'b1;
          //random_speed_y <= random_number%3+1'b1;
        end
    end
    
endmodule
