module johnson_tb(

    );
    reg clr,clk;
    wire [3:0]q;
    johnson j1(clk,clr,q);
    initial
    begin
        clr=1'b0;
        #10 clr=1'b1;clk=1'b0;
        #80 $finish;
    end
    always #5 clk=~clk;
endmodule
