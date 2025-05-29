module fullsub_tb(

    );
    reg a,b,c;
    wire d,bo;
    fullsub f1(a,b,c,d,bo);
    initial
    begin
        a=1'b0;b=1'b0;c=1'b0;
        #10 a=1'b0;b=1'b0;c=1'b1;
        #10 a=1'b0;b=1'b1;c=1'b0;
        #10 a=1'b0;b=1'b1;c=1'b1;
        #10 a=1'b1;b=1'b0;c=1'b0;
        #10 a=1'b1;b=1'b0;c=1'b1;
        #10 a=1'b1;b=1'b1;c=1'b0;
        #10 a=1'b1;b=1'b1;c=1'b1;
        #10 $finish;
    end
endmodule
