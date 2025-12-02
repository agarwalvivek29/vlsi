module fifo_tb;
reg clk, rst, rd, wr, en;
reg [31:0] dataIn;
wire [31:0] dataOut;
wire EMPTY, FULL;

fifo uut(.(clk), .rst(rst), .rd(rd), .wr(wr), .en(en), dataIn(dataIn), .dataOut(dataOut), .EMPTY(EMPTY), .FULL(FULL));
initial begin

rst = 1;
clk = 0;
en = 0;
dataIn = 32'h0;
wr = 0;
rd = 0;

#100;
en = 1;
rst = 1;
#20;
rst = 0;
wr = 1;
dataIn = 32'h0;
#20;
dataIn = 32'h1;
#20;
dataIn = 32'h2;
#20;
dataIn = 32'h3;
#20;
dataIn = 32'h4;
#20;
wr = 0;
rd = 1;

end
always#10 clk = ~clk;
endmodule