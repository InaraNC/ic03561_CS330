module ALU_64_bit
(

input [63:0] a,
input [63:0] b,
input [3:0] ALUOp,
output reg [63:0] Result,
output reg Zero

);

always @(*)
begin
  
  if (ALUOp == 4'b0000)
    Result = a & b;
  else if (ALUOp == 4'b0001)
    Result = a | b;
  else if (ALUOp == 4'b0010)
    Result = a + b;
  else if (ALUOp == 4'b0110)
    Result = a - b;
  else if (ALUOp == 4'b1100)
    Result = ~(a | b);
    
end
  
always @(*)
begin
  if (Result == 64'b0000000000000000000000000000000000000000000000000000000000000000)
    Zero = 1'b1;
  else 
    Zero = 1'b0;
    
end

endmodule
  
    