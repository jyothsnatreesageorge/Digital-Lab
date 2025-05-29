module srff(
    input s,
    input r,
    input clr,
    input clk,
    output reg q
    );
    always @(posedge clk or clr)
    begin
        if(!clr)
            q=1'b0;
        case ({s,r})
            2'b00:q=q;
            2'b01:q=1'b0;
            2'b10:q=1'b1;
            2'b11:q=1'bX;
        endcase
    end
endmodule
