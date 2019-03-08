module Instruction_Fetch
(
input clk,
input reset,
output [31:0] Instruction
);

wire [63:0] adder_out;
wire [63:0] PC_output;


Program_Counter PC0
(
.clk(clk),
.reset(reset),
.PC_In(adder_out),
.PC_Out(PC_output)
);

Adder adder0
(
.a(PC_output),
.b(64'd4),
.out(adder_out)
);

Instruction_Memory IM0
(
.Inst_Address(PC_output),
.Instruction(Instruction)
);

endmodule
