module Instruction_Memory
  (
  input [63:0] Inst_Address,
  output [31:0] Instruction
  );
  
  reg [7:0] Inst_Memory [15:0];
  initial
  begin
    Inst_Memory[3] = 8'b00000010;
    Inst_Memory[2] = 8'b10000101;
    Inst_Memory[1] = 8'b00110100;
    Inst_Memory[0] = 8'b10000011;
    Inst_Memory[7] = 8'b00000000;
    Inst_Memory[6] = 8'b10011010;
    Inst_Memory[5] = 8'b10000100;
    Inst_Memory[4] = 8'b10110011;
    Inst_Memory[11] = 8'b00000000;
    Inst_Memory[10] = 8'b00010100;
    Inst_Memory[9] = 8'b10000100;
    Inst_Memory[8] = 8'b10010011;
    Inst_Memory[15] = 8'b00000010;
    Inst_Memory[14] = 8'b10010101;
    Inst_Memory[13] = 8'b00110100;
    Inst_Memory[12] = 8'b00100011;
  
  end
    
  assign Instruction[7:0] = Inst_Memory[(Inst_Address % 16)];
  assign Instruction[15:8] = Inst_Memory[((Inst_Address + 1'b1) % 16)];
  assign Instruction[23:16] = Inst_Memory[((Inst_Address + 2'b10) % 16)];
  assign Instruction[31:24] = Inst_Memory[((Inst_Address + 3'b011) % 16)];
  /*
  always @ (Inst_Address)
    //Instruction = inst_memo[(Inst_Address + 3'b011):Inst_Address];
    begin
      Instruction[7:0] = Inst_Memory[Inst_Address];
      Instruction[15:8] = Inst_Memory[(Inst_Address + 1'b1)];
      Instruction[23:16] = Inst_Memory[(Inst_Address + 2'b10)];
      Instruction[31:24] = Inst_Memory[(Inst_Address + 3'b011)];
    end
   */
    
endmodule
