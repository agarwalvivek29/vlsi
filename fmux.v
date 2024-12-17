module fmux(x0,x1,x2,x3,s0,s1,o);
input x0,x1,x2,x3,s0,s1;
output o;
wire w1,w2;
nmos n1(w1,x0,~s1);
pmos p1(w1,x0,s1);
nmos n2(w1,x1,s1);
pmos p2(w1,x1,~s1);
nmos n3(w2,x2,~s1);
pmos p3(w2,x2,s1);
nmos n4(w2,x3,s1);
pmos p4(w2,x3,~s1);
nmos n5(o,w1,~s0);
pmos p5(o,w1,s0);
nmos n6(o,w2,s0);
pmos p6(o,w2,~s0);
endmodule


module fmux_tb;
reg x0,x1,x2,x3,s0,s1;
wire o;
fmux m1(x0,x1,x2,x3,s0,s1,o);
initial begin
x0=1'b0;x1=1'b1;x2=1'b1;x3=1'b1;s0=1'b0;s1=1'b0;#10;
x0=1'b0;x1=1'b1;x2=1'b0;x3=1'b0;s0=1'b0;s1=1'b1;#10;
x0=1'b1;x1=1'b1;x2=1'b0;x3=1'b1;s0=1'b1;s1=1'b0;#10;
x0=1'b0;x1=1'b0;x2=1'b0;x3=1'b1;s0=1'b1;s1=1'b1;#10;
$finish;
end
endmodule 
