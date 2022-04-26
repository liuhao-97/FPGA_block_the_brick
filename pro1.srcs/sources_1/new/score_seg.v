`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2022 05:14:11 PM
// Design Name: 
// Module Name: score_seg
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
//////////////////////////////////s////////////////////////////////////////////////

////record the score. hit one brick then add one. max 16 scores
//module score_seg(
//input clk, rst,
//input [15:0] hit,

//output a, b, c, d, e, f, g,
//output [7:0] an
//    );
    
////    reg [3:0] dig7=4'd0, dig6=4'd0, dig5=4'd0, dig4=4'd0, dig3=4'd0;
////    reg [3:0] dig2=4'd1, dig1=4'd1, dig0=4'd0;
    
//     multidigit uut (.clk(clk), .rst(rst), .dig7(dig7), .dig6(dig6), .dig5(dig5), .dig4(dig4),
//     .dig3(dig3), .dig2(dig2), .dig1(dig1), .dig0(dig0), .a(a), .b(b), .c(c), .d(d), .e(e),
//     .f(f), .g(g), .an(an));
    
    
////    multidigit md (.clk(clk), .rst(rst), .dig7(dig7), .dig6(dig6), .dig5(dig5), 
////    .dig4(dig4), .dig3(dig3), .dig2(dig2), .dig1(dig1), .dig0(dig0), 
////    .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .an(an));
    
////    reg [5:0] score;
////    integer i;
    
////    always@*
////      begin
////        score = 6'd0;
////        for(i=0;i<16;i=i+1)
////          begin
////            score = score + hit[i]; //count 1 in hit
////          end
////        score = 6'd16-score;        //count 0 in hit
////      end
   
    
////    always@*
////        begin
////            dig0 = score%10;
////            dig1 = score/10%10;            
////        end

   
//endmodule




//record the score. hit one brick then add one. max 16 scores
module score_seg(
input clk, rst,
input [15:0] hit,
output a, b, c, d, e, f, g,
output [7:0] an
    );
reg [3:0] dig7=4'b0, dig6=4'b0, dig5=4'b0, dig4=4'b0,
     dig3=4'b0, dig2=4'b0, dig1=4'b0, dig0=4'b0;
        
multidigit uut (.clk(clk), .rst(rst), .dig7(dig7), .dig6(dig6), .dig5(dig5), .dig4(dig4),
 .dig3(dig3), .dig2(dig2), .dig1(dig1), .dig0(dig0), .a(a), .b(b), .c(c), .d(d), .e(e),
 .f(f), .g(g), .an(an));
   
   reg [5:0] score=0;
   integer i;
   
   always@*
      begin
        if(rst)
          score = 6'b0;
        else
          begin
            score = 6'b0;
            for(i=0;i<16;i=i+1)
              score = score + hit[i]; //count 1 in hit     
             score = 6'd16-score;        //count 0 in hit       
          end         
      end
    
    always@*
      begin
        dig0 = score%10;
        dig1 = score/10%10;  
      end
    
   
endmodule





