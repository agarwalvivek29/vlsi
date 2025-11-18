module serialadder_tb;

reg clk, rst, pload, enable;

reg [7:0] adata;

reg [7:0] bdata;

wire [7:0] pout;

serialadder uut(.clk(clk), .rst(rst), .pload(pload), .enable(enable), .adata(adata), .bdata(bdata), .pout(pout));

always #10 clk = ~clk;

clk = 0;

rst = 0;

pload = 0;
enable = 0;

adata = 8'b0;
bdata = 8'b0;

rst = 1;
#10;
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
