module Multiplexer
  ( 
  input a, b,
  input sel,
  output reg data_out
  );
  always @ (sel or a or b)
  if (sel)
    data_out = b;
  else
    data_out = a;
    
  endmodule
  
