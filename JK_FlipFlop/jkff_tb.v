module jkff_tb(

    );
    reg j,k,clk,clr;
    wire q;
    jkff j1(j,k,clk,clr,q);
    initial
    begin
       clr=1'b0;
       #10 clr=1'b1;clk=1'b0;
       #10 j=1'b0;k=1'b0;
       #10 j=1'b0;k=1'b1;
       #10 j=1'b1;k=1'b0;
       #10 j=1'b1;k=1'b1;
       #10 $finish;
    end
    always #5 clk=~clk;
endmodule
