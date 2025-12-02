module fifo(clk, rd, rst, wr, en, dataIn, dataOut, EMPTY, FULL);
input clk, rd, rst, wr, en;
output EMPTY, FULL;

input [7:0] dataIn;
output reg[7:0] dataOut;

reg[2:0] Count = 0;
reg[2:0] readcounter = 0, writecounter = 0;
reg[31:0] FIFO[0:7];
assign EMPTY = (Count == 0)?1'b1:1'b0;
assign FULL = (Count == 8)?1'b1:1'b0;

always@(posedge clk)
begin
if(en == 0);
else
begin
if(rst)
begin
readcounter = 0;
writecounter = 0;
end
else if(rd == 1'b1 && Count != 0)
begin
dataOut = FIFO[readcounter];
readcounter = readcounter + 1;
end
else if(wr == 1'b1 && Count < 8)
begin
FIFO[writecounter] = dataIn;
writecounter = writecounter + 1;
end
else;
end
if(writecounter == 8)
begin
writecounter = 0;
end
else if(readcounter == 8)
begin
readcounter = 0;
end
if(readcounter > writecounter)
begin
Count = readcounter - writecounter;
end
else if(writecounter > readcounter)
begin
Count = writecounter - readcounter;
end
end
endmodule
