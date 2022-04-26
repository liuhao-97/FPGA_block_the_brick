`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2022 08:26:43 PM
// Design Name: 
// Module Name: score_seg_tb
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


module score_seg_tb();
reg clk, rst;
reg [15:0] hit=16'b1111_1111_1111_1111;
wire a, b, c, d, e, f, g;
wire [7:0] an;

score_seg ss (
.clk(clk), .rst(rst),
.hit(hit),
.a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g),
.an(an)
    );

    
initial begin
    clk = 1'b0;
    rst = 1'b1;
    #15 rst = 1'b0;
    hit = 16'b1111_1111_1111_1111;
    #30 hit = 16'b1110_1111_1111_1111;
    #30 hit = 16'b1110_1111_1111_1100;
    #30 hit = 16'b1000_0000_0000_1100;
end

always #5 clk = ~clk;



endmodule









//module score_seg_tb();
//    reg clk, rst;
//    reg [15:0] hits=16'b1111_1111_1111_1111;
//    wire a, b, c, d, e, f, g;
//    wire [7:0] an;
        
//    score_seg uut (.clk(clk), .rst(rst), .hits(hits), .a(a), .b(b), .c(c), .d(d), .e(e),
//     .f(f), .g(g), .an(an));

//    initial begin
//        clk = 1'b0;
//        rst = 1'b1;
//        #15 rst = 1'b0;
//        #1200 $finish;
//    end
    
//    always #5 clk = ~clk;


//endmodule





