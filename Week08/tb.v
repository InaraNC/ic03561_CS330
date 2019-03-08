module tb
(
);
reg clk;
reg reset;
wire [31:0] Instruction;

Instruction_Fetch if0
(
.clk(clk),
.reset(reset),
.Instruction(Instruction)
);

initial
begin
  clk = 1'b0;
  reset = 1'b0; 
  #10 reset = 1'b1;
end
  

always 
#10 clk = ~clk;


endmodule