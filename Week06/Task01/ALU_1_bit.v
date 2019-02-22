module ALU_1_bit
( 
input a,
input b,
input CarryIn,
input [3:0] ALUOp,
output reg CarryOut,
output wire Result
);

wire mux1out;
wire mux2out;
wire mux3out;
reg add;
wire x;
wire y;
wire z;


Multiplexer m1
(
.a(a),
.b(~a),
.sel(ALUOp[3]),
.data_out(mux1out)

);

Multiplexer m2
(
.a(b),
.b(~b),
.sel(ALUOp[2]),
.data_out(mux2out)

);

assign x = mux1out & mux2out;
assign y = mux1out | mux2out;
assign z = add;
assign Result = mux3out;

always@(*)
begin
add = ((mux1out & (~mux2out) & (~CarryIn)) | ((~mux1out) & mux2out & (~CarryIn)) | ((~mux1out) & (~mux2out) & CarryIn) | (mux1out & mux2out & CarryIn));
CarryOut = (mux1out & CarryIn) | (mux2out & CarryIn) | (mux1out & mux2out);
end 

Multiplexer_3x1 m3
(
.a(x),
.b(y),
.c(z),
.sel(ALUOp[1:0]),
.data_out(mux3out)

);

always @ (*)
begin
  if ((ALUOp != 4'b0010) || (ALUOp != 4'b0110))
    CarryOut = 1'b0;
end

endmodule