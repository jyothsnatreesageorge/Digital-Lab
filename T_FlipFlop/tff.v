module tff(
    input t,
    input clk,
    input clr,
    output reg q
    );
    always @(posedge clk or clr)
    begin
        if(!clr)
            q=1'b0;
        else
        begin
            case(t)
                1'b0:q=q;
                1'b1:q=~q;
            endcase
        end
    end
endmodule
