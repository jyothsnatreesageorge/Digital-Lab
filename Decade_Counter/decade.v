module decade(
    input clr,
    input clk,
    output reg [3:0] q
    );
    always @(posedge clk or clr)
    begin
        if(!clr)
            q=4'b0000;
        else if(q==4'b1001)
            q=4'b0000;
        else
            q=q+1;
    end
endmodule
