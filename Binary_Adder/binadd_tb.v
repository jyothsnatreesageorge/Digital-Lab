module binadd_tb(

    );
    reg [1:0] a;
    reg [1:0] b;
    reg c;
    wire [1:0] s;
    wire cout;
    binadd b1(a,b,c,s,cout);
    initial
    begin
        a=2'b00;b=2'b00;c=1'b0;
        #10 a=2'b00;b=2'b01;
        #10 a=2'b00;b=2'b10;
        #10 a=2'b00;b=2'b11;
        #10 a=2'b01;b=2'b00;
        #10 a=2'b01;b=2'b01;
        #10 a=2'b01;b=2'b10;
        #10 a=2'b01;b=2'b11;
        #10 a=2'b10;b=2'b00;
        #10 a=2'b10;b=2'b01;
        #10 a=2'b10;b=2'b10;
        #10 a=2'b10;b=2'b11;
        #10 a=2'b11;b=2'b00;
        #10 a=2'b11;b=2'b01;
        #10 a=2'b11;b=2'b10;
        #10 a=2'b11;b=2'b11;
        #10 $finish;
    end
endmodule
