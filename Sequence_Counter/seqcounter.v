module seqcounter(
    input clr,
    input clk,
    output reg [3:0] q
    );
    always @(posedge clk or clr)
    begin
        if(!clr)
            q=4'b1000;
        else
            begin
                case(q)
                    4'b1000:q=4'b1100;
                    4'b1100:q=4'b1101;
                    4'b1101:q=4'b1111;
                    4'b1111:q=4'b1000;
                endcase
            end
    end
endmodule
