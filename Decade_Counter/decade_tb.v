module decade_tb(

    );
    reg clr,clk;
    wire [3:0] q;
    decade d1(clr,clk,q);
    initial
    begin
        clr=1'b0;
        #10 clr=1'b1;clk=1'b0;
        #200 $finish;
    end
    always #5 clk=~clk;
endmodule
