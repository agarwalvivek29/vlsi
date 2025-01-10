module sadd29_tb;
    reg clk;
    reg rst;
    reg pload;
    reg enable;
    reg [7:0] adata;
    reg [7:0] bdata;
    wire [7:0] pout;

    sadd29 uut (
        .clk(clk),
        .rst(rst),
        .pload(pload),
        .adata(adata),
        .bdata(bdata),
        .enable(enable),
        .pout(pout)
    );

    always #10 clk = ~clk;

    initial begin
        clk = 0;
        rst = 0;
        pload = 0;
        enable = 0;
        adata = 8'b0;
        bdata = 8'b0;

        rst = 1;
        #20;
        rst = 0;

        adata = 8'b10101010;
        bdata = 8'b01010101;
        pload = 1;
        #20; 
        pload = 0;

        enable = 1;
        #160;
        enable = 0;

        #100;
        $stop;
    end
endmodule
