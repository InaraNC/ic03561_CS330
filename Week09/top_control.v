module top_control
(
input [6:0] Opcode,
input [3:0] Funct,
output [3:0] Operation,
output MemRead,
output Branch,
output MemtoReg,
output MemWrite,
output ALUSrc,
output RegWrite

);
wire [1:0] alu_wire;

Control_Unit CU0
(
.Opcode(Opcode),
.MemRead(MemRead),
.Branch(Branch),
.MemtoReg(MemtoReg),
.ALUOp(alu_wire),
.MemWrite(MemWrite),
.ALUSrc(ALUSrc),
.RegWrite(RegWrite)

);

ALU_Control AC0
(
.ALUOp(alu_wire),
.Funct(Funct),
.Operation(Operation)
);





endmodule 