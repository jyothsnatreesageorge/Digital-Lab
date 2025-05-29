module tff_tb(

    );
    reg clr,clk,t;
    wire q;
    tff t1(t,clk,clr,q);
    initial
    begin
        clr=1'b0;
        #10 clr=1'b1;clk=1'b0;
        #10 t=1'b0;
        #10 t=1'b1;
        #10 $finish;
    end
    always #5 clk=~clk;
endmodule
