module dff(
    input d,
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
            case({d})
            1'b0:q=0;
            1'b1:q=1;
            endcase
        end
    end
endmodule
