module srff_tb(

    );
    reg clr,clk,s,r;
    wire q;
    srff s1(s,r,clr,clk,q);
    initial
    begin
        clr=1'b0;
        #10 clr=1'b1;clk=1'b0;
        #10 s=1'b0;r=1'b0;
        #10 s=1'b0;r=1'b1;
        #10 s=1'b1;r=1'b0;
        #10 s=1'b1;r=1'b1;
        #10 $finish;
    end
    always #5 clk=~clk;
endmodule
