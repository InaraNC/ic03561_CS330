module tb
(
);

reg [31:0] instruction;
wire [6:0] opcode;
wire [4:0] rd;
wire [2:0] func3;
wire [4:0] rs1;
wire [4:0] rs2;
wire [6:0] func7;

Instruction_parser ip
(
.instruction(instruction),
.opcode(opcode),
.rd(rd),
.func3(func3),
.rs1(rs1),
.rs2(rs2),
.func7(func7)
);

initial
begin
instruction = 32'b00000001001100110000010100110011;    //opcode=0110011; rd=01010; func3=000; rs1=00110; rs2=10011; func7=0000000;           
#50 instruction = 32'b00000001111111111000010100111011;   //opcode=0111011; rd=01010; func3=000; rs1=11111; rs2=11111; func7=0000000; 
  
end


/*
initial
begin
  $monitor("Time = ", $time, "---> Opcode = %d",opcode);
  $monitor("Time = ", $time, "---> rd = %d",rd);
  $monitor("Time = ", $time, "---> func3 = %d",func3);
  $monitor("Time = ", $time, "---> rs1 = %d",rs1);
  $monitor("Time = ", $time, "---> rs2 = %d",rs2);
  $monitor("Time = ", $time, "---> func7 = %d",func7);
end
*/
endmodule


