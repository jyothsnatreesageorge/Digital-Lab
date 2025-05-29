module jkff(
    input j,
    input k,
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
            case({j,k})
                2'b00:q=q;
                2'b01:q=0;
                2'b10:q=1;
                2'b11:q=~q;
            endcase
        end
    end
endmodule
