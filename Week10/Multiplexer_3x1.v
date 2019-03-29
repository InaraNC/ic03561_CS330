module Multiplexer_3x1
  ( 
  input a, b, c,
  input [1:0] sel,
  output reg data_out
  );
  always @ (sel or a or b)
  begin
  if (sel == 2'b00)
    data_out = a;
  else if (sel == 2'b01)
    data_out = b;
  else if (sel == 2'b10)
    data_out = c;
  end
  
  endmodule