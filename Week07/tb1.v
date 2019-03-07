module tb1
(
);
reg [63:0] Inst_Address;
wire [31:0] Instruction;

Instruction_Memory InstMemo
(
.Inst_Address(Inst_Address),
.Instruction(Instruction)
);

initial 
begin
  Inst_Address = 64'd0;
  #100 Inst_Address = 64'd4;
  #100 Inst_Address = 64'd8;
  #100 Inst_Address = 64'd12;
  #100 Inst_Address = 64'd16;
  #100 Inst_Address = 64'd32;
  #100 Inst_Address = 64'd100;
end


endmodule
