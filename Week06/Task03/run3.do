vlog tb3.v ALU_64_bit.v 

vsim -novopt work.tb3


view wave

add wave sim:/tb3/a
add wave sim:/tb3/b
add wave sim:/tb3/ALUOp
add wave sim:/tb3/Zero
add wave sim:/tb3/Result




run 1000ns