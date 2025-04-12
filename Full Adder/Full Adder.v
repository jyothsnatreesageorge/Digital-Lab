module halfadder(
    input a,
    input b,
    output s,
    output c
);
    and a1(c,a,b);
    xor x1(s,a,b);
endmodule
module fulladder(
    input a,
    input b,
    input c,
    output s,
    output cout
    );
    wire c1,c2,s1;
    halfadder h1(a,b,s1,c1);
    halfadder h2(s1,c,s,c2);
    or o1(cout,c1,c2);
endmodule
