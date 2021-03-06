module tb
(
);

reg clk;
reg reset;

RISC_V_Processor risc0
(
.clk(clk),
.reset(reset)
);

always
#5 clk = ~ clk;


initial
begin 
clk = 1'b0;
reset = 1'b1;

#7
reset = 1'b0;
end



endmodule
