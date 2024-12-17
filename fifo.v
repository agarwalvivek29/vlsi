module FIFObuffer(
    input Clk,
    input [31:0] dataIn,
    input RD,
    input WR,
    input EN,
    input Rst,
    output reg [31:0] dataOut,
    output EMPTY,
    output FULL
);

reg [31:0] FIFO [7:0];
reg [2:0] readCounter = 0, writeCounter = 0, Count = 0;

assign EMPTY = (Count == 0);
assign FULL = (Count == 8);

always @(posedge Clk) begin
    if (EN) begin
        if (Rst) begin
            readCounter <= 0;
            writeCounter <= 0;
            Count <= 0;
        end else begin
            if (RD && Count > 0) begin
                dataOut <= FIFO[readCounter];
                readCounter <= (readCounter + 1) % 8;
                Count <= Count - 1;
            end
            if (WR && Count < 8) begin
                FIFO[writeCounter] <= dataIn;
                writeCounter <= (writeCounter + 1) % 8;
                Count <= Count + 1;
            end
        end
    end
end

endmodule



module FIFObuffer_tb;
    reg Clk, RD, WR, EN, Rst;
    reg [31:0] dataIn;
    wire [31:0] dataOut;
    wire EMPTY, FULL;

    FIFObuffer uut (
        .Clk(Clk), .dataIn(dataIn), .RD(RD), .WR(WR), .EN(EN),
        .dataOut(dataOut), .Rst(Rst), .EMPTY(EMPTY), .FULL(FULL)
    );


    always #10 Clk = ~Clk;

    initial begin
        
        Clk = 0; RD = 0; WR = 0; EN = 0; Rst = 1; dataIn = 0;

   
        #20 Rst = 0; EN = 1;

 
        WR = 1;
        repeat (5) begin
            #20 dataIn = dataIn + 1;
        end
        WR = 0;

  
        RD = 1;
        #100;

        $finish;
    end
endmodule