module topTB
(
);
reg [63:0] WriteData;
reg RegWrite;
reg clk;
reg reset;
reg [31:0] instruction;
wire [63:0] ReadData1;
wire [63:0] ReadData2;

top top0
(
.WriteData(WriteData),
.RegWrite(RegWrite),
.clk(clk),
.reset(reset),
.instruction(instruction),
.ReadData1(ReadData1),
.ReadData2(ReadData2)
);

initial 
begin
  WriteData = 64'd10;
  clk = 1'b0;
  reset = 1'b0;
  RegWrite = 1'b0;
  instruction = 32'b01100001011001000000010000100000; //rd = 01000(x8)=45, rs1 = 01000(x8), rs2 = 10110(x22)=80   
  
  #75
  instruction = 32'b00100000011101000000001000110001; //rd = 00100(x4)=44, rs1 = 01000(x8)=45, rs2 = 00111(x7)=75
  
  #10
  WriteData = 64'd32;
  instruction = 32'b00100000011100100000001000110001; //rd = 00100(x4)=44, rs1 = 01000(x8)=45, rs2 = 00111(x7)=75
  
   
  
  
end

always
begin
#20 clk=~clk;
#40 RegWrite = ~RegWrite;  
end


endmodule
