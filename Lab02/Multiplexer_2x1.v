module Multiplexer
  ( 
  input [63:0] a, [63:0] b,
  input sel,
  output reg [63:0] data_out
  );
  always @ (sel or a or b)
  if (sel)
    data_out = b;
  else
    data_out = a;
    
  endmodule
  
