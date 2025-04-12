module halfadder(
    input a,
    input b,
    output s,
    output c
    );
    xor x1(s,a,b);
    and n1(c,a,b);
endmodule  //Structural modelling

module halfadder2(
    input a,
    input b,
    output s,
    output c
);
    assign s=a^b;
    assign c=a&b;
endmodule  //Dataflow modelling

module halfadder3(
    input a,
    input b,
    output reg s,
    output reg c
);
    always @(*)
    begin
        s=a^b;
        c=a&b;
    end
endmodule  //Behavioural modelling
