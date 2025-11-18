module serialadder(clk,rst,pload,adata,bdata,enable,pout);
  input clk,rst,pload,enable;
  input [7:0] adata, bdata;
  output [7:0] pout;

  wire shiftrega_lsb,  shiftregb_lsb;
    reg [7:0] shiftrega, shiftregb, shiftregc;

  wire sum,cout, sum_del, cout_del;
  reg holdc;

// instantiated the full adder ( combo circuit)
full_adder_1bit bit_adder_inst(shiftrega[0],shiftregb[0],holdc,sum,cout);
  
assign pout=shiftregc;
assign  sum_del =  sum & enable;
assign  cout_del = cout & enable;

// sequential block -- shift registers and shifting logic
always@(posedge clk or rst )
 begin
   if (rst) begin
     shiftrega<=8'd0;
     shiftregb<=8'd0;
     shiftregc<=8'd0;
   end else if(pload )   begin
     shiftrega<=adata;
     shiftregb<=bdata;
     shiftregc<=8'b0;
   end else if(enable) begin
     shiftrega   <=shiftrega>>1;
     shiftrega[7]<=shiftrega_lsb;
 
     shiftregb<=shiftregb>>1;
     shiftregb[7] <=shiftregb_lsb;

     shiftregc    <=shiftregc>>1;
     shiftregc[7] <=sum_del;
  end 

end

// combo logic
assign  shiftrega_lsb=shiftrega[0];
assign  shiftregb_lsb=shiftregb[0];


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