module fifo_tb;
reg clk, en, rd, wr, rst;
reg [31:0] dataIn;
wire [31:0] dataOut;

wire EMPTY;
wire FULL;

fifo uut(.clk(clk), .rd(rd), .rst(rst), .wr(wr), .en(en), .dataIn(dataIn), .dataOut(dataOut), .EMPTY(EMPTY), .FULL(FULL));
initial begin
clk = 1'b0;
rd = 1'b0;
rst = 1'b1;
wr = 1'b0;
en = 1'b0;
dataIn = 32'h0;

#100;
rst = 1'b1;
en = 1'b1;

#20;
rst = 1'b0;
wr = 1'b1;
dataIn = 32'h1;
#20;
dataIn = 32'h2;
#20;
dataIn = 32'h3;
#20;
dataIn = 32'h4;
#20;
wr = 1'b0;
rd = 1'b1;
end
always#10 clk = ~clk;
endmodule

