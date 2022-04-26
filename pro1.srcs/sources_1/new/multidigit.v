`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2022 04:32:28 PM
// Design Name: 
// Module Name: multidigit
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



module multidigit(
        input clk, rst,
        input [3:0] dig7, dig6, dig5, dig4, dig3, dig2, dig1, dig0,
        output a, b, c, d, e, f, g,
        output reg [7:0] an
    );
    
    wire led_clk;
    reg [3:0] dig_sel;
    reg [2:0] led_index = 3'd0;
    reg [28:0] clk_count = 11'd0;
    
    always @(posedge clk)
        clk_count <= clk_count + 1'b1;
    
    assign led_clk = clk_count[16];
    assign div_clk = clk_count[25];
        
    always@(posedge led_clk)
        if(rst)
            led_index <= 3'd0;
        else
            led_index <= led_index + 1'b1;

    always@*
    begin   
        an = 8'b11111111;
        an[led_index] = 1'b0;
        case (led_index)
            3'd0: dig_sel = dig0;
            3'd1: dig_sel = dig1;
            3'd2: dig_sel = dig2;
            3'd3: dig_sel = dig3;
            3'd4: dig_sel = dig4;
            3'd5: dig_sel = dig5;
            3'd6: dig_sel = dig6;
            3'd7: dig_sel = dig7;
        endcase     
    end

    sevenseg M1 (.num(dig_sel), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g));
    
endmodule
















//module multidigit(input clk, rst, 
//input [3:0] dig7, dig6, dig5, dig4,
//     dig3, dig2, dig1, dig0,
//     output reg a,b,c,d,e,f,g,
//     output [7:0] an
//    ); 
    
//    wire [7:0] a0,b0,c0,d0,e0,f0,g0;
//    wire [31:0] dig;
//    reg [7:0] current_state = S0;
//    reg [7:0] next_state;
//    parameter S0 = 8'b1111_1110,
//             S1 = 8'b1111_1101,
//             S2 = 8'b1111_1011,
//             S3 = 8'b1111_0111,
//             S4 = 8'b1110_1111,
//             S5 = 8'b1101_1111,
//             S6 = 8'b1011_1111,
//             S7 = 8'b0111_1111;
    
//    assign dig = {dig7, dig6, dig5, dig4, dig3, dig2, dig1, dig0};
//    assign an = current_state;
    
//    genvar i;
    
//    generate 
//    for (i = 0; i < 8;i= i+1)
//        begin:r_loop
//            sevenseg ssg (.num(dig[4*i+3:4*i]),.a(a0[i]),.b(b0[i]),.c(c0[i]),.d(d0[i]),.e(e0[i]),.f(f0[i]),.g(g0[i])) ;        
//        end 
//    endgenerate 
    
    
    
//    always@(posedge clk)
//    begin
//        if (rst)
//            current_state <= S0             ;
//        else
//            current_state <= next_state     ;   
//    end
    
//    always@*
//    begin
//        case (current_state)
//            S0: next_state = S1       ;
//            S1: next_state = S2       ; 
//            S2: next_state = S3       ;
//            S3: next_state = S4       ; 
//            S4: next_state = S5       ;
//            S5: next_state = S6       ; 
//            S6: next_state = S7       ;  
//            S7: next_state = S0       ;          
//            default: next_state = S0  ;
//        endcase 
//    end
    
    
    
//    always@(posedge clk)
//    begin
//        if (rst)
//            {a,b,c,d,e,f,g} <= 7'b1 ; 
//        else
//            begin
//                case(next_state)
//                    S0:  {a,b,c,d,e,f,g} <= {a0[0],b0[0],c0[0],d0[0],e0[0],f0[0],g0[0]}  ;
//                    S1:  {a,b,c,d,e,f,g} <= {a0[1],b0[1],c0[1],d0[1],e0[1],f0[1],g0[1]}  ;
//                    S2:  {a,b,c,d,e,f,g} <= {a0[2],b0[2],c0[2],d0[2],e0[2],f0[2],g0[2]}  ;
//                    S3:  {a,b,c,d,e,f,g} <= {a0[3],b0[3],c0[3],d0[3],e0[3],f0[3],g0[3]}  ;
//                    S4:  {a,b,c,d,e,f,g} <= {a0[4],b0[4],c0[4],d0[4],e0[4],f0[4],g0[4]}  ;
//                    S5:  {a,b,c,d,e,f,g} <= {a0[5],b0[5],c0[5],d0[5],e0[5],f0[5],g0[5]}  ;
//                    S6:  {a,b,c,d,e,f,g} <= {a0[6],b0[6],c0[6],d0[6],e0[6],f0[6],g0[6]}  ;
//                    S7:  {a,b,c,d,e,f,g} <= {a0[7],b0[7],c0[7],d0[7],e0[7],f0[7],g0[7]}  ;
//                    default: {a,b,c,d,e,f,g} <= 7'b111_1111;
//                 endcase
//            end  
//    end    

//endmodule
