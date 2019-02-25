module tb3
(
);
reg [63:0] a;
reg [63:0] b;
reg [3:0] ALUOp;
wire Zero;
wire [63:0] Result;

ALU_64_bit alu64
(
.a(a),
.b(b),
.ALUOp(ALUOp),
.Zero(Zero),
.Result(Result)
);

initial
begin
  a=64'b0000000000000000000000000000000000000000000000000000000000001110;
  b= 64'b0000000000000000000000000000000000000000000000000000000000001010;
  ALUOp = 4'b0000;
  #10 ALUOp = 4'b0001;
  #10 ALUOp = 4'b0010;
  #10 ALUOp = 4'b0110;
  #10 ALUOp = 4'b1100;
end

endmodule
