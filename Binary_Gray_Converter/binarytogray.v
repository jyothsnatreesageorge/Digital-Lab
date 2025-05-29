module binarytogray(
    input [2:0] a,
    output reg [2:0] y
    );
    always @(*)
    begin
        /*case(a)
            3'b000:y=3'b000;
            3'b001:y=3'b001;
            3'b010:y=3'b011;
            3'b011:y=3'b010;
            3'b100:y=3'b110;
            3'b101:y=3'b111;
            3'b110:y=3'b101;
            3'b111:y=3'b100;
        endcase*/
        y[2]=a[2];
        y[1]=a[1]^a[2];
        y[0]=a[0]^a[1];
    end
endmodule
