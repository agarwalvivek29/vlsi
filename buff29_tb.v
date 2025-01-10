module buff29_tb;
reg x1;
wire yi;
buff29 buff292(x1, y1);
initial begin
x1 = 1'b0;#5
x1 = 1'b1;#10
$finish;
end
endmodule
