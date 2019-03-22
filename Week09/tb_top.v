module tb_top
(
);
reg [6:0] Opcode;
reg [3:0] Funct;
wire [3:0] Operation;
wire MemRead;
wire Branch;
wire MemtoReg;
wire MemWrite;
wire ALUSrc;
wire RegWrite;

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

initial 
begin
Opcode = 7'b0110011;
Funct = 4'b0000;

#5 Funct = 4'b1000;
#5 Funct = 4'b0111;
#5 Funct = 4'b0110;
#5 Funct = 4'b1010;

#20 Opcode = 7'b0000011;
#5 Funct = 4'b0000;
#5 Funct = 4'b1000;
#5 Funct = 4'b0111;
#5 Funct = 4'b0110;
#5 Funct = 4'b1010;

#20 Opcode = 7'b0100011;
#5 Funct = 4'b0000;
#5 Funct = 4'b1000;
#5 Funct = 4'b0111;
#5 Funct = 4'b0110;
#5 Funct = 4'b1010;

#20 Opcode = 7'b1100011;
#5 Funct = 4'b0000;
#5 Funct = 4'b1000;
#5 Funct = 4'b0111;
#5 Funct = 4'b0110;
#5 Funct = 4'b1010;

#20 Opcode = 7'b1000010;
#5 Funct = 4'b0000;
#5 Funct = 4'b1000;
#5 Funct = 4'b0111;
#5 Funct = 4'b0110;
#5 Funct = 4'b1010;

end

endmodule