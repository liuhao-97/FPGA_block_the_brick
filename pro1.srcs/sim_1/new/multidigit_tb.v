module multidigit_tb();
    reg [3:0] dig7, dig6, dig5, dig4, dig3, dig2, dig1, dig0;
    reg clk, rst;

    wire a, b, c, d, e, f, g;
    wire [7:0] an;
        
    multidigit uut (.clk(clk), .rst(rst), .dig7(dig7), .dig6(dig6), .dig5(dig5), .dig4(dig4),
     .dig3(dig3), .dig2(dig2), .dig1(dig1), .dig0(dig0), .a(a), .b(b), .c(c), .d(d), .e(e),
     .f(f), .g(g), .an(an));

    initial begin
        clk = 1'b0;
        rst = 1'b1;
        {dig7,dig6,dig5,dig4,dig3,dig2,dig1,dig0} = 32'd0;
        #15 rst = 1'b0;

        #1200 $finish;

    end
    
    always #5 clk = ~clk;

    always #80 {dig7,dig6,dig5,dig4,dig3,dig2,dig1,dig0} = $random;

endmodule