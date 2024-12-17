module buff(x,y);
input x;
output y;
wire q,vdd, gnd;
assign vdd = 1'b1;
assign gnd = 1'b0;
pmos p1 (q,vdd,x); /* pmos name(drain, source,
gate)*/
pmos p2 (y,vdd,q);
nmos n1 (q,gnd,x); /* pmos name(drain, source,
gate)*/
nmos n2 (y,gnd,q);
endmodule


module buff_tb;
reg X1;
wire Y1;
buff buf1 (X1,Y1);
initial begin
X1=1'b0; #1
X1=1'b1; #2
$finish;
end
endmodule