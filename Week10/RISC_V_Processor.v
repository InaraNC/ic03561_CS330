module RISC_V_Processor
(
input clk,
input reset
);


wire [63:0] pc_input;
wire [63:0] pc_output;
wire [63:0] adder0_output;
wire [63:0] imm_data;
wire [63:0] adder1_output;
wire sel_m0;
wire [31:0] inst;
wire [6:0] opcode;
wire [4:0] rd;
wire [2:0] func3;
wire [4:0] rs1;
wire [4:0] rs2;
wire [6:0] func7;
wire MemRead;
wire Branch;
wire MemtoReg;
wire [1:0] ALUOp;
wire MemWrite;
wire ALUSrc;
wire RegWrite;
wire [63:0] ReadData1;
wire [63:0] ReadData2;
wire [63:0] alu_inputb;
wire [3:0] operation;
wire [63:0] result;
wire [63:0] Read_Data;
wire [63:0] WriteData_input;
 
Program_Counter PC0
(
.clk(clk),
.reset(reset),
.PC_In(pc_input),
.PC_Out(pc_output)
);

Adder adder0
(
.a(pc_output),
.b(64'd4),
.out(adder0_output)
);

Adder adder1
(
.a(pc_output),
.b(imm_data<<1),
.out(adder1_output)
);

Multiplexer_2x1 m0
(
.a(adder0_output),
.b(adder1_output),
.sel(sel_m0),
.data_out(pc_input)
);

Instruction_Memory InstMem0
(
.Inst_Address(pc_output),
.Instruction(inst)
);

Instruction_parser inst_parser0
(
.instruction(inst),
.opcode(opcode),
.rd(rd),
.func3(func3),
.rs1(rs1),
.rs2(rs2),
.func7(func7)
);

immediate_data_extractor ide0
(
.instruction(inst),
.imm_data(imm_data)
);


Control_Unit CU0
(
.Opcode(opcode),
.MemRead(MemRead),
.Branch(Branch),
.MemtoReg(MemtoReg),
.ALUOp(ALUOp),
.MemWrite(MemWrite),
.ALUSrc(ALUSrc),
.RegWrite(RegWrite)
);


registerFile rf0
(
.WriteData(WriteData_input),
.RS1(rs1),
.RS2(rs2),
.RD(rd),
.RegWrite(RegWrite),
.clk(clk),
.reset(reset),
.ReadData1(ReadData1),
.ReadData2(ReadData2)
);

Multiplexer_2x1 m1
(
.a(ReadData2),
.b(imm_data),
.sel(ALUSrc),
.data_out(alu_inputb)
);

ALU_64_bit alu0
(
.a(ReadData1),
.b(alu_inputb),
.ALUOp(operation),
.Result(result),
.Zero(sel_m0)
);

wire [3:0] funct_wire;
assign funct_wire[3] = inst[30];
assign funct_wire[2:0]=inst[14:12];

ALU_Control AC0
(
.ALUOp(ALUOp),
.Funct(funct_wire),
.Operation(operation)
);

Data_Memory DM0
(
.clk(clk),
.MemWrite(MemWrite),
.MemRead(MemRead),
.Mem_Addr(result),
.Write_Data(ReadData2),
.Read_Data(Read_Data)
);

Multiplexer_2x1 m2
(
.a(result),
.b(Read_Data),
.sel(MemtoReg),
.data_out(WriteData_input)
);


















endmodule
