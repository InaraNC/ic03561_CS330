vlog tb.v Control_Unit.v  

vsim -novopt work.tb

add wave sim:/tb/*
add wave sim:/tb/CU0/*

view wave
run 1000ns