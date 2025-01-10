module fifo29_tb;
    reg Clk, RD, WR, EN, Rst;
    reg [31:0] dataIn;
    wire [31:0] dataOut;
    wire EMPTY, FULL;

    fifo29 uut (
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
