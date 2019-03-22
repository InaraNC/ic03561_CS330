module tb
(
);
reg [6:0] Opcode;
wire MemRead;
wire Branch;
wire MemtoReg;
wire [1:0] ALUOp;
wire MemWrite;
wire ALUSrc;
wire RegWrite;

Control_Unit CU0
(
.Opcode(Opcode),
.MemRead(MemRead),
.Branch(Branch),
.MemtoReg(MemtoReg),
.ALUOp(ALUOp),
.MemWrite(MemWrite),
.ALUSrc(ALUSrc),
.RegWrite(RegWrite)
);

initial
begin
Opcode = 7'b0110011;
#20 Opcode = 7'b0000011;
#20 Opcode = 7'b0100011;
#20 Opcode = 7'b1100011;
#20 Opcode = 7'b1000010;
end

endmodule
