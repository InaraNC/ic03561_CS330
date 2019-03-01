vlog tb.v registerFile.v  

vsim -novopt work.tb

add wave sim:/tb/*

view wave
run 1000ns