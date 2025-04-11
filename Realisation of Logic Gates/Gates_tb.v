module gates_tb(

    );
    reg a,b;
    wire AND,OR,NOR,XOR,NAND;
  gates g1(a,b,AND,NOR,OR,XOR,NAND);  //Structural Modellling
  gates1 g1(a,b,AND,OR,NOR,XOR,NAND);  //Dataflow modelling
  gates2 g1(a,b,AND,OR,NOR,XOR,NAND);  //Behaviuoral modelling
    initial
    begin
        a=1'b0;b=1'b0;
        #10 a=1'b0;b=1'b1;
        #10 a=1'b1;b=1'b0;
        #10 a=1'b1;b=1'b1;
        #10 $finish;
        
    end
endmodule
