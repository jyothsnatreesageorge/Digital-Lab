module ring(
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
        q[3]<=q[0];
        q[2]<=q[3];
        q[1]<=q[2];
        q[0]<=q[1];
    end
  end  
endmodule
