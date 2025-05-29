module mux_tb(

    );
    reg [1:0]s;
    reg [3:0]i;
    wire y;
    mux m1(s,i,y);
    initial
    begin
        i=4'b1001;s=2'b00;
        #10 i=4'b0101;s=2'b01;
        #10 i=4'b0010;s=2'b10;
        #10 i=4'b0011;s=2'b11;
        #10 $finish;
    end
endmodule
