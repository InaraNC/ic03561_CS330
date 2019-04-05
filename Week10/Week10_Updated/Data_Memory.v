module Data_Memory
(
input clk,
input MemWrite,
input MemRead,
input [63:0] Mem_Addr,
input [63:0] Write_Data,
output reg [63:0] Read_Data
);

reg [7:0] Data_Memo [63:0];
initial
begin
  Data_Memo[0] = 8'd1;
  Data_Memo[1] = 8'd2;
  Data_Memo[2] = 8'd3;
  Data_Memo[3] = 8'd4;
  Data_Memo[4] = 8'd5;
  Data_Memo[5] = 8'd6;
  Data_Memo[6] = 8'd7;
  Data_Memo[7] = 8'd8;
  Data_Memo[8] = 8'd9;
  Data_Memo[9] = 8'd10;
  Data_Memo[10] = 8'd11;
  Data_Memo[11] = 8'd12;
  Data_Memo[12] = 8'd13;
  Data_Memo[13] = 8'd14;
  Data_Memo[14] = 8'd15;
  Data_Memo[15] = 8'd16;
  Data_Memo[16] = 8'd17;
  Data_Memo[17] = 8'd18;
  Data_Memo[18] = 8'd19;
  Data_Memo[19] = 8'd20;
  Data_Memo[20] = 8'd21;
  Data_Memo[21] = 8'd22;
  Data_Memo[22] = 8'd23;
  Data_Memo[23] = 8'd24;
  Data_Memo[24] = 8'd25;
  Data_Memo[25] = 8'd26;
  Data_Memo[26] = 8'd27;
  Data_Memo[27] = 8'd28;
  Data_Memo[28] = 8'd29;
  Data_Memo[29] = 8'd30;
  Data_Memo[30] = 8'd31;
  Data_Memo[31] = 8'd32;
  Data_Memo[32] = 8'd33;
  Data_Memo[33] = 8'd34;
  Data_Memo[34] = 8'd35;
  Data_Memo[35] = 8'd36;
  Data_Memo[36] = 8'd37;
  Data_Memo[37] = 8'd38;
  Data_Memo[38] = 8'd39;
  Data_Memo[39] = 8'd40;
  Data_Memo[40] = 8'd41;
  Data_Memo[41] = 8'd42;
  Data_Memo[42] = 8'd43;
  Data_Memo[43] = 8'd44;
  Data_Memo[44] = 8'd45;
  Data_Memo[45] = 8'd0; //46;
  Data_Memo[46] = 8'd0;   //47;
  Data_Memo[47] = 8'd0;   //48;
  Data_Memo[48] = 8'd0;   //49;
  Data_Memo[49] = 8'd0;   //50;
  Data_Memo[50] = 8'd0;   // 51;
  Data_Memo[51] = 8'd0;   //52;
  Data_Memo[52] = 8'd53;
  Data_Memo[53] = 8'd54;
  Data_Memo[54] = 8'd55;
  Data_Memo[55] = 8'd56;
  Data_Memo[56] = 8'd57;
  Data_Memo[57] = 8'd58;
  Data_Memo[58] = 8'd59;
  Data_Memo[59] = 8'd60;
  Data_Memo[60] = 8'd61;
  Data_Memo[61] = 8'd62;
  Data_Memo[62] = 8'd63;
  Data_Memo[63] = 8'd64;  
end

always@(posedge clk & MemWrite)
begin
  Data_Memo[Mem_Addr % 64] = Write_Data[7:0];
  Data_Memo[(Mem_Addr + 1'b1) % 64] = Write_Data[15:8];
  Data_Memo[(Mem_Addr + 2'b10) % 64] = Write_Data[23:16];
  Data_Memo[(Mem_Addr + 2'b11) % 64] = Write_Data[31:24];
  Data_Memo[(Mem_Addr + 3'b100) % 64] = Write_Data[39:31];
  Data_Memo[(Mem_Addr + 3'b101) % 64] = Write_Data[47:40];
  Data_Memo[(Mem_Addr + 3'b110) % 64] = Write_Data[55:48];
  Data_Memo[(Mem_Addr + 3'b111) % 64] = Write_Data[63:56];
  /*
  Read_Data[15:8] = Data_Memo[(Mem_Addr+1'b1) % 64];
  Read_Data[23:16] = Data_Memo[(Mem_Addr+2'b10) % 64];
  Read_Data[31:24] = Data_Memo[(Mem_Addr+2'b11) % 64];
  Read_Data[39:32] = Data_Memo[(Mem_Addr+3'b100) % 64];
  Read_Data[47:40] = Data_Memo[(Mem_Addr+3'b101) % 64];
  Read_Data[55:48] = Data_Memo[(Mem_Addr+3'b110) % 64];
  Read_Data[63:56] = Data_Memo[(Mem_Addr+3'b111) % 64];
  */
end

always@(Mem_Addr | (MemRead == 1'b1))
begin
  Read_Data[7:0] = Data_Memo[Mem_Addr % 64];
  Read_Data[15:8] = Data_Memo[(Mem_Addr+1'b1) % 64];
  Read_Data[23:16] = Data_Memo[(Mem_Addr+2'b10) % 64];
  Read_Data[31:24] = Data_Memo[(Mem_Addr+2'b11) % 64];
  Read_Data[39:32] = Data_Memo[(Mem_Addr+3'b100) % 64];
  Read_Data[47:40] = Data_Memo[(Mem_Addr+3'b101) % 64];
  Read_Data[55:48] = Data_Memo[(Mem_Addr+3'b110) % 64];
  Read_Data[63:56] = Data_Memo[(Mem_Addr+3'b111) % 64];

end



  
  



endmodule
