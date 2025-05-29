module fullsub(
    input a,
    input b,
    input c,
    output d,
    output bo
    );
    wire y1,y2,y3,y4,y5,y6,y7,y8,y9,y10;
    nor n1(y1,a,b);
    nor n2(y2,y1,a);
    nor n3(y3,y1,b);
    nor n4(y4,y2,y3);
    nor n5(y5,y4,y4);
    nor n6(y6,y5,c);
    nor n7(y7,y6,y5);
    nor n8(y8,y6,c);
    nor n9(y9,y7,y8);
    nor n10(d,y9,y9);
    nor n11(y10,y2,y7);
    nor n12(bo,y10,y10);
    /*assign d = a ^ b ^ c;
    assign bo = (~a & b) | (b & c) | (~a & c);*/

endmodule
