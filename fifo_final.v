module fifo(dataIn, clk, en, rd, rst, wr, dataOut, EMPTY, FULL)
input [31:0] dataIn;
output reg [31:0]dataOut;

input clk, en, rd, rst, wr;

output FULL, EMPTY;

reg[2:0] Counter = 0;

reg[2:0] readCounter, writeCounter;

reg[2:0] FIFO[0:7]

assign EMPTY = (Counter == 0)?1'b1:1'b0;

assign FULL  = (Counter == 8)? 1'b1: 1'b0;

always@(posedge clk or rst)
begin
if(EN == 0);
else
begin
if(rst)
begin
readCounter = 0;
writeCounter = 0;

end
else if(RD == 1'b1 && Counter != 0)
begin
dataOut = fifo





module fifo_tb;

reg clk;
reg rn;
reg rd;
reg wr;
reg en;

reg[31:0]dataIn;

wire[31:0]dataOut;

fifo uut (.clk(clk), .rn(rn), .dataIn(dataIn), .rd(rd), .rst(rst), .en(en), .dataOut(dataOut), .FULL(FULL), .EMPTY(EMPTY));
initial begin

clk = 0;

rn = 0;
rd = 0;
en = 0;
rst = 0;

dataIn = 32'h0;
rst = 1;
#100;
EN = 1'b1;
rst = 1'b1;
#20;
rst = 1'b0;
wr = 1'b1;

dataIn = 32'h0;
#20;

do the same till 32'h4

#20;
wr = 1'b0;
rd = 1'b1;
end
always #10 clk = ~clk;
endmodule


