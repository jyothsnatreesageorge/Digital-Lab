module gates(
    input a,
    input b,
    output AND,
    output NOR,
    output OR,
    output XOR,
    output NAND
    );
    and a1(AND,a,b);
    or o1(OR,a,b);
    nor n1(NOR,a,b);
    xor x1(XOR,a,b);
    nand n(NAND,a,b);
endmodule  /*Structural modelling*/

module gates1(
    input a,
    input b,
    output AND,
    output OR,
    output NOR,
    output XOR,
    output NAND
);
assign AND=a&b;
assign OR=a|b;
assign NOR=~(a|b);
assign NAND=~(a&b);
assign XOR=a^b;
endmodule  /*Dataflow modelling*/

module gates2(
    input a,
    input b,
    output reg AND,
    output reg OR,
    output reg NOR,
    output reg XOR,
    output reg NAND
);
    always @(*)
    begin
        AND=a&b;
        OR=a|b;
        NOR=~(a|b);
        NAND=~(a&b);
        XOR=a^b;
    end
endmodule  /*Behavioural modelling*/
