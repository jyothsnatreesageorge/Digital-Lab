module binadd(
    input [1:0] a,
    input [1:0] b,
    input c,
    output reg [1:0] s,
    output reg cout
    );
    always @(a or b)
    begin
        {cout,s}=a+b;
    end
endmodule
