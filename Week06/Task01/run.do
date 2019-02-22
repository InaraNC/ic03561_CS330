vlog tb1.v ALU_1_bit.v Multiplexer_2x1.v Multiplexer_3x1.v  

vsim -novopt work.tb1


view wave

add wave sim:/tb1/a
add wave sim:/tb1/b
add wave sim:/tb1/CarryIn
add wave sim:/tb1/ALUOp
add wave sim:/tb1/CarryOut
add wave sim:/tb1/Result




run 1000ns