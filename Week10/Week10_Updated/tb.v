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




initial
begin 
clk = 1'b1;
reset = 1'b0; 
#10 reset = 1'b1;
#10 reset = 1'b0;
end

always
#10 clk = ~ clk;

endmodule
