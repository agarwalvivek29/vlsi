module buff29(x,y);
input x;
output y;
wire q, vdd, gnd;
assign vdd = 1'b1;
assign gnd = 1'b0;
pmos p1(q, vdd, x);
nmos n1(q, gnd, x);
pmos p2(y, vdd, q);
nmos n2(y, gnd, q);
endmodule
