vlog tb1.v Instruction_Memory.v 

vsim -novopt work.tb1

add wave sim:/tb1/*

view wave
run 1000ns