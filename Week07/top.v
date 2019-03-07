module top
(
input [63:0] WriteData,
input RegWrite,
input clk,
input reset,
input [31:0] instruction,
output [63:0] ReadData1,
output [63:0] ReadData2
);

wire [4:0] rd_wire;
wire [4:0] rs1_wire;
wire [4:0] rs2_wire;
wire [6:0] opcode_wire;
wire [2:0] func3_wire;
wire [6:0] func7_wire;


Instruction_parser ip
(
.instruction(instruction),
.opcode(opcode_wire),
.rd(rd_wire),
.func3(func3_wire),
.rs1(rs1_wire),
.rs2(rs2_wire),
.func7(func7_wire)
);

registerFile rF
(
.RS1(rs1_wire),
.RS2(rs2_wire),
.RD(rd_wire),
.WriteData(WriteData),
.RegWrite(RegWrite),
.clk(clk),
.reset(reset),
.ReadData1(ReadData1),
.ReadData2(ReadData2)
);




endmodule 