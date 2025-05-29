module dff_tb(

    );
    reg clk,clr,d;
    wire q;
    dff d1(d,clk,clr,q);
    initial
    begin
        clr=1'b0;
        #10 clr=1'b0;clk=1'b0;d=11'b0;
        #10 d=1'b1;
        #10 $finish;
    end
    always #5 clk=~clk;
endmodule
