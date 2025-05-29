module boolean2(
    input a,
    input b,
    input c,
    output y
    );
    wire y1,y2,y3;
    not n1(y1,a);
    not n2(y2,b);
    and a1(y3,c,y2);
    or o1(y,y1,y3);
endmodule
