module tb2
(
);

reg [5:0] a;
reg [5:0] b;
reg CarryIn;
reg [3:0] ALUOp;
wire [5:0] CarryOut;
wire [5:0] Result;

ALU_1_bit alu0
(
.a(a[0]),
.b(b[0]),
.CarryIn(CarryIn),
.ALUOp(ALUOp),
.CarryOut(CarryOut[0]),
.Result(Result[0])
);

ALU_1_bit alu01
(
.a(a[1]),
.b(b[1]),
.CarryIn(CarryOut[0]),
.ALUOp(ALUOp),
.CarryOut(CarryOut[1]),
.Result(Result[1])
);

ALU_1_bit alu2
(
.a(a[2]),
.b(b[2]),
.CarryIn(CarryOut[1]),
.ALUOp(ALUOp),
.CarryOut(CarryOut[2]),
.Result(Result[2])
);

ALU_1_bit alu3
(
.a(a[3]),
.b(b[3]),
.CarryIn(CarryOut[2]),
.ALUOp(ALUOp),
.CarryOut(CarryOut[3]),
.Result(Result[3])
);

ALU_1_bit alu4
(
.a(a[4]),
.b(b[4]),
.CarryIn(CarryOut[3]),
.ALUOp(ALUOp),
.CarryOut(CarryOut[4]),
.Result(Result[4])
);

ALU_1_bit alu5
(
.a(a[5]),
.b(b[5]),
.CarryIn(CarryOut[4]),
.ALUOp(ALUOp),
.CarryOut(CarryOut[5]),
.Result(Result[5])
);

initial 
begin
  a = 6'b100101;
  b = 6'b010010;
  CarryIn = 1'b0;
  ALUOp = 4'b0000;
  
  #10 a = 6'b100101;
  #10 b = 6'b010010;
  #10 CarryIn = 1'b0;
  #10 ALUOp = 4'b0001;  
  
  #10 a = 6'b100101;
  #10 b = 6'b010010;
  #10 CarryIn = 1'b0;
  #10 ALUOp = 4'b0010; 
  
  #10 a = 6'b100101;
  #10 b = 6'b010010;
  #10 CarryIn = 1'b1;
  #10 ALUOp = 4'b0110; 
  
  #10 a = 6'b100101;
  #10 b = 6'b010010;
  #10 CarryIn = 1'b0;
  #10 ALUOp = 4'b1100; 
  
  #10 a = 6'b100101;
  #10 b = 6'b010010;
  #10 CarryIn = 1'b0;
  #10 ALUOp = 4'b0000;
  
  
  #10 a = 6'b100101;
  #10 b = 6'b010010;
  #10 CarryIn = 1'b0;
  #10 ALUOp = 4'b0001;  
  
  #10 a = 6'b100101;
  #10 b = 6'b010010;
  #10 CarryIn = 1'b0;
  #10 ALUOp = 4'b0010; 
  
  #10 a = 6'b100101;
  #10 b = 6'b010010;
  #10 CarryIn = 1'b1;
  #10 ALUOp = 4'b0110; 
  
  #10 a = 6'b100101;
  #10 b = 6'b010010;
  #10 CarryIn = 1'b0;
  #10 ALUOp = 4'b1100; 
  
  #10 a = 6'b100101;
  #10 b = 6'b010010;
  #10 CarryIn = 1'b0;
  #10 ALUOp = 4'b0000;
  
  
  #10 a = 6'b100101;
  #10 b = 6'b010010;
  #10 CarryIn = 1'b0;
  #10 ALUOp = 4'b0001;  
  
  #10 a = 6'b100101;
  #10 b = 6'b010010;
  #10 CarryIn = 1'b0;
  #10 ALUOp = 4'b0010; 
  
  #10 a = 6'b100101;
  #10 b = 6'b010010;
  #10 CarryIn = 1'b1;
  #10 ALUOp = 4'b0110; 
  
  #10 a = 6'b100101;
  #10 b = 6'b010010;
  #10 CarryIn = 1'b0;
  #10 ALUOp = 4'b1100; 
  
end

endmodule
