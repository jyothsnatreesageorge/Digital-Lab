module updown(
    input clr,
    input clk,
    input mode,
    output reg [2:0] q
    );
    always @(posedge clk or clr)
    begin
        if(!clr)
            q=3'b000;
        else if(mode==0)
            q=q+1;
        else if(mode==1)
            q=q-1;
    end
endmodule
