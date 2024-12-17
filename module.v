module
serialadder(clk,rst,pload,adata,bdata,enable,pout);
 input clk,rst,pload,enable;
 input [7:0] adata, bdata;
 output [7:0] pout;
wire shiftrega_lsb, shiftregb_lsb;
 reg [7:0] shiftrega, shiftregb, shiftregc;
 wire sum,cout, sum_del, cout_del;
 reg holdc;
full_adder_1bit
bit_adder_inst(shiftrega[0],shiftregb[0],holdc,sum,cout);
assign pout=shiftregc;
assign sum_del = sum & enable;
assign cout_del = cout & enable;
always@(posedge clk or rst )
 begin
 if (rst) begin
 shiftrega<=8'd0;
 shiftregb<=8'd0;
 shiftregc<=8'd0;
 end else if(pload ) begin
 shiftrega<=adata;
 shiftregb<=bdata;
 shiftregc<=8'b0;
 end else if(enable) begin
 shiftrega <=shiftrega>>1;
 shiftrega[7]<=shiftrega_lsb;
 shiftregb<=shiftregb>>1;
 shiftregb[7] <=shiftregb_lsb;
 shiftregc <=shiftregc>>1;
 shiftregc[7] <=sum_del;
 end
end
// combo logic
assign shiftrega_lsb=shiftrega[0];
assign shiftregb_lsb=shiftregb[0];
always@(posedge clk or rst)
 begin
 if(rst) begin
 holdc <=1'b0;
 end else if(enable)
 holdc<=cout_del;
 else
 holdc<=1'b0;
 end
endmodule
module full_adder_1bit(a,b,ci,s,co);
input a,b,ci;
output s,co;
assign s = (a^b^ci);
assign co = ((a&b) | (b&ci) | (ci & a));
endmodule 


module tb_serialadder;
 reg clk;
 reg rst;
 reg pload;
 reg enable;
 reg [7:0] adata;
 reg [7:0] bdata;
 wire [7:0] pout;
 serialadder uut (
 .clk(clk),
 .rst(rst),
 .pload(pload),
 .adata(adata),
 .bdata(bdata),
 .enable(enable),
 .pout(pout));
 always #10 clk = ~clk;
 clk = 0;
 rst = 0;
 pload = 0;
 enable = 0;
 adata = 8'b0;
 bdata = 8'b0;
 rst = 1;
 #20;
 rst = 0;

 adata = 8'b10101010
 bdata = 8'b01010101;
 pload = 1;
 #20; // Wait for the pload to be
processed
 pload = 0;
 enable = 1;
 #160;
 enable = 0;

 // Finish simulation
 #100;
 $stop;
 end
 // Monitor outputs
 initial begin
 $monitor("Time = %0t, adata =
%b, bdata = %b, pout = %b", $time,
adata, bdata, pout);
 end
endmodule













module FIFObuffer( Clk,
 dataIn,
 RD,
 WR,
 EN,
 dataOut,
 Rst,
 EMPTY,
 FULL );
input Clk,
 RD,
 WR,
 EN,
 Rst;
output EMPTY, FULL;
input [31:0] dataIn;
output reg [31:0] dataOut; // internal registers
reg [2:0] Count = 0;
reg [31:0] FIFO [0:7];
reg [2:0] readCounter = 0, writeCounter = 0;
assign EMPTY = (Count==0)? 1'b1:1'b0;
assign FULL = (Count==8)? 1'b1:1'b0;
always @ (posedge Clk)
begin
if (EN==0);
else
begin
if (Rst)
begin
readCounter = 0;
 writeCounter = 0;
end
else if (RD ==1'b1 && Count!=0)
begin
 dataOut = FIFO[readCounter];
 readCounter = readCounter+1;
 end
else if (WR==1'b1 && Count<8)
begin
 FIFO[writeCounter] = dataIn;
writeCounter = writeCounter+1;
 end
 else;
end
if (writeCounter==8)
 writeCounter=0;
else if (readCounter==8)
 readCounter=0;
else;
if (readCounter > writeCounter)
begin
Count=readCounter-writeCounter;
 end
 else if (writeCounter > readCounter)
Count=writeCounter-readCounter;
 else;
end
endmodule



module FIFObuffer_tb;
reg Clk;
 reg [31:0] dataIn;
 reg RD;
reg WR;
 reg EN;
reg Rst;
wire [31:0] dataOut;
wire EMPTY;
 wire FULL;
 FIFObuffer uut ( .Clk(Clk),
.dataIn(dataIn),
.RD(RD),
 .WR(WR),
 .EN(EN),
 .dataOut(dataOut),
 .Rst(Rst),
 .EMPTY(EMPTY),
 .FULL(FULL));
 initial begin
 Clk = 1'b0;
 dataIn = 32'h0;
 RD = 1'b0;
 WR = 1'b0;
 EN = 1'b0;
 Rst = 1'b1;
 #100;
 EN = 1'b1;
 Rst = 1'b1;
 #20;
 Rst = 1'b0;
 WR = 1'b1;
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
 WR = 1'b0;
 RD = 1'b1;
 end
always #10 Clk = ~Clk;
endmodule 





















