vlog tb2.v Data_Memory.v 

vsim -novopt work.tb2

add wave sim:/tb2/*

view wave
run 1000ns