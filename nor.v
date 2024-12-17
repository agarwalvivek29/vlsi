module norr (x,y,z);
input x,y;
output z;
wire q, vdd, gnd;
assign vdd = 1'b1;
assign gnd = 1'b0;
pmos p1 (q,vdd,x); /* pmos name(drain, source,
gate)*/
pmos p2 (z,q,y);
nmos n1 (z,gnd,x); /* pmos name(drain, source,
gate)*/
nmos n2 (z,gnd,y);
endmodule


module norr_tb;
reg x1, y1;
wire z1;
norr nor1 (x1,y1,z1);
initial begin
x1 = 1'b0; y1 = 1'b0; #1
x1 = 1'b0; y1 = 1'b1; #1
x1 = 1'b1; y1 = 1'b0; #1
x1 = 1'b1; y1 = 1'b1; #2
$finish;
end
endmodule