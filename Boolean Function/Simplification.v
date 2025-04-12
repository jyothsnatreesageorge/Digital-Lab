module booleanfn(
    input a,
    input b,
    input c,
    input d,
    output reg y
    );
    wire y1,y2,y3,y4,y5,y6,y7,y8,y9,y10;
    reg y1,y2,y3,y4,y5,y6,y7,y8,y9,y10;
        not n1(y1,a);
        not n2(y2,b);
        not n3(y3,c);
        not n4(y4,d);
        and a1(y5,y1,b);
  and a2(y6,y5,y3);  //Structural modelling
    always@(*)
    begin
        y1=~a;
        y2=~b;
        y3=~c;
        y4=~d;
        y5=y1&b&y3;
        y6=a&c&d;
        y7=a&y2&y3&y4;
        y8=y1&y2&c&y4;
        y=y5|y6|y7|y8;  //Behavioural modelling
    end
endmodule
