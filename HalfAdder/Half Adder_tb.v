module halfadder_tb(

    );
    reg a,b;
    wire c,s;
    halfadder h1(a,b,s,c);
    halfadder2 h2(a,b,s,c);
    halfadder3 h3(a,b,s,c);
    initial
    begin
        a=1'b0;b=1'b0;
        #10 a=1'b0;b=1'b1;
        #10 a=1'b1;b=1'b0;
        #10 a=1'b1;b=1'b1;
        #10 $finish;
    end
