module demux_tb(

    );
    reg i;
    reg [1:0] s;
    wire [3:0] y;
    demux d1(i,s,y);
    initial
    begin
        s=2'b00;i=1'b1;
        #10 s=2'b01;i=1'b1;
        #10 s=2'b10;i=1'b1;
        #10 s=2'b11;i=1'b1;
        #10 $finish;
    end
endmodule
