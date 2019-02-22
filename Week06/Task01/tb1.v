module tb1
(
);
reg a;
reg b;
reg CarryIn;
reg [3:0] ALUOp;
wire CarryOut;
wire Result;

ALU_1_bit alu
(
.a(a),
.b(b),
.CarryIn(CarryIn),
.ALUOp(ALUOp),
.CarryOut(CarryOut),
.Result(Result)
);

initial 
begin
  a = 1'b1;
  b = 1'b0;
  CarryIn = 1'b0;
  ALUOp = 4'b0000;
  
  #10 a = 1'b1;
  #10 b = 1'b0;
  #10 CarryIn = 1'b0;
  #10 ALUOp = 4'b0001;  
  
  #10 a = 1'b1;
  #10 b = 1'b0;
  #10 CarryIn = 1'b0;
  #10 ALUOp = 4'b0010; 
  
  #10 a = 1'b1;
  #10 b = 1'b0;
  #10 CarryIn = 1'b1;
  #10 ALUOp = 4'b0110; 
  
  #10 a = 1'b1;
  #10 b = 1'b0;
  #10 CarryIn = 1'b0;
  #10 ALUOp = 4'b1100; 
  
  #10 a = 1'b1;
  #10 b = 1'b1;
  #10 CarryIn = 1'b0;
  #10 ALUOp = 4'b0000;
  
  
  #10 a = 1'b1;
  #10 b = 1'b1;
  #10 CarryIn = 1'b0;
  #10 ALUOp = 4'b0001;  
  
  #10 a = 1'b1;
  #10 b = 1'b1;
  #10 CarryIn = 1'b0;
  #10 ALUOp = 4'b0010; 
  
  #10 a = 1'b1;
  #10 b = 1'b1;
  #10 CarryIn = 1'b1;
  #10 ALUOp = 4'b0110; 
  
  #10 a = 1'b1;
  #10 b = 1'b1;
  #10 CarryIn = 1'b0;
  #10 ALUOp = 4'b1100; 
  
  #10 a = 1'b0;
  #10 b = 1'b1;
  #10 CarryIn = 1'b0;
  #10 ALUOp = 4'b0000;
  
  
  #10 a = 1'b0;
  #10 b = 1'b1;
  #10 CarryIn = 1'b0;
  #10 ALUOp = 4'b0001;  
  
  #10 a = 1'b0;
  #10 b = 1'b1;
  #10 CarryIn = 1'b0;
  #10 ALUOp = 4'b0010; 
  
  #10 a = 1'b0;
  #10 b = 1'b1;
  #10 CarryIn = 1'b1;
  #10 ALUOp = 4'b0110; 
  
  #10 a = 1'b0;
  #10 b = 1'b1;
  #10 CarryIn = 1'b0;
  #10 ALUOp = 4'b1100; 
  
end

endmodule
