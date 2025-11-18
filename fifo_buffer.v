module fifobuffer(dataIN, CLK, EN, RD, rst, WR, dataOut, EMPTY, FULL);

input CLK, EN, RD, rst, WR;

input [31:0] dataIN;

output EMPTY, FULL;

output reg [31:0] dataOut;

reg [2:0] Counter = 0;

reg[2:0] readCounter, writeCounter;

reg[31:0] FIFO[0:7];
assign EMPTY = (Counter == 0)?1'b1:1'b0;

assign FULL = (Counter == 8)? 1'b1:1'b0;

always@(posedge CLK)
begin
if(EN == 0);
else 
begin

if(rst)
begin
readCounter = 0;
writeCounter = 0;
end

else if(RD = 1'b1  && Counter != 0)
begin
dataOut = FIFO[readCounter]
readCounter = readCounter + 1;
end

else if(WR = 1'b1 && Counter == 8)
FIFO[writeCounter] = dataIn;
writeCounter = writeCounter + 1;
end

end
if(writeCounter == 8)
begin
writeCounter = 0;
end
else if(readCounter == 8)
begin
readCounter = 0;
end

if(readCounter > writeCounter)
begin
Counter = readCounter - writeCounter
end

else if(writeCounter > readCounter)
begin
Counter = writeCounter - readCounter
end
endmodule



