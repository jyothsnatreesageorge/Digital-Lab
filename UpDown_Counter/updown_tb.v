module updown_tb(

    );
    reg clr,clk,mode;
    wire [2:0] q;
    updown u1(clr,clk,mode,q);
    initial
    begin
        clr=1'b0;mode=1'b0;
        #10 clr=1'b1;clk=1'b0;
        #70 mode=1'b1;
        #70 $finish;
    end
    always #5 clk=~clk;
endmodule
