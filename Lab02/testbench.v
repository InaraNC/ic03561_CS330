module tb
  (
  );
  reg [63:0] a;
  reg [63:0] b;
  reg sel;
  wire [63:0] data_out;
  
  Multiplexer m1
  (
  .a(a),
  .b(b),
  .sel(sel),
  .data_out(data_out)
  );
  
  initial
  begin    
    sel = 1'b0;
    a = 64'b0;
    b = 64'b1;
  end
  
  always 
  #5 sel = ~sel;
  
  initial 
  begin
    #96 b = 64'hFF;
    #3 b = 64'b1;
  end
  
  
  initial
  $monitor("Time = ",$time,"----> Output = %d",data_out);
endmodule  