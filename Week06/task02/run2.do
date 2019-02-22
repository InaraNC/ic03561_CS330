vlog tb2.v ALU_1_bit.v Multiplexer_2x1.v Multiplexer_3x1.v  

vsim -novopt work.tb2


view wave

add wave sim:/tb2/a
add wave sim:/tb2/b
add wave sim:/tb2/CarryIn
add wave sim:/tb2/ALUOp
add wave sim:/tb2/CarryOut
add wave sim:/tb2/Result




run 1000ns