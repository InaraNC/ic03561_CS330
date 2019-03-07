module tb2
(
);
reg clk;
reg MemWrite;
reg MemRead;
reg [63:0] Mem_Addr;
reg [63:0] Write_Data;
wire [63:0] Read_Data;

Data_Memory DM0
(
.clk(clk),
.MemWrite(MemWrite),
.MemRead(MemRead),
.Mem_Addr(Mem_Addr),
.Write_Data(Write_Data),
.Read_Data(Read_Data)
);

initial 
begin
  Write_Data = 64'd100;
  Mem_Addr = 64'd0;
  clk = 1'b0;
  MemWrite = 1'b0;
  MemRead = 1'b0;
  
  #20 MemWrite = 1'b1;
  
  #20 
  MemRead = 1'b1;
  MemWrite = 1'b0;
  
  #20 MemWrite = 1'b1;
  
  #20
  Write_Data = 64'd150;
  Mem_Addr = 64'd10;
  
  #20 MemWrite = 1'b0;
  
  #20 
  MemRead = 1'b0;
  MemWrite = 1'b1;
  
  #20 MemRead = 1'b1;
  #20 MemWrite = 1'b1;
  
end

always
#10 clk = ~clk;

  


endmodule