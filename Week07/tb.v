module tb
(
);

reg [63:0] WriteData;
reg [4:0] RS1;
reg [4:0] RS2;
reg [4:0] RD;
reg RegWrite;
reg clk;
reg reset;
wire [63:0] ReadData1;
wire [63:0] ReadData2;

registerFile rf
(
.WriteData(WriteData),
.RS1(RS1),
.RS2(RS2),
.RD(RD),
.RegWrite(RegWrite),
.clk(clk),
.reset(reset),
.ReadData1(ReadData1),
.ReadData2(ReadData2)
);

initial
begin
 WriteData = 64'd23;
 RS1 = 5'd5;
 RS2 = 5'd6;
 RD = 5'd29;
 RegWrite = 1'b0;
 clk = 1'b0;
 reset = 1'b0;

#50
 clk=1'b1;
 RegWrite = 1'b1;
 
 #50 
 RegWrite = 1'b0;
 
 #50
 clk = 1'b1;
 RS1 = 5'd29;
 RS2 = 5'd25;
 RD = 5'd0;
 
 #10
 RegWrite = 1'b1;
 
 #10
 RegWrite = 1'b0;
 
 #50
 RS1 = 5'd0;
 RS2 = 5'd1;
 RD = 5'd15;
 
 
 
 
 
 
 
 
 
 
end
endmodule
