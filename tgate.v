module tgate(a,s,y);
input a,s;
output y;
pmos u1(y,a,~s); /* pmos name(drain, source,
gate)*/
nmos u2(y,a,s); /* nmos name(drain, source,
gate)*/
endmodule

module tgate_tb;
reg in, sel;
wire out;
tgate u3(in,sel,out);
initial begin
in = 1'b0 ; sel = 1'b0 ; #10
in = 1'b1 ; sel = 1'b0 ; #10
in = 1'b0 ; sel = 1'b0 ; #10
in = 1'b1 ; sel = 1'b0 ; #10
in = 1'b0 ; sel = 1'b1 ; #10
in = 1'b1 ; sel = 1'b1 ; #10
in = 1'b0 ; sel = 1'b1 ; #10
in = 1'b1 ; sel = 1'b1 ; #10
$finish;
end
endmodule