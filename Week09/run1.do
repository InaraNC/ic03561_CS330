vlog tb2.v ALU_Control.v  

vsim -novopt work.tb2

add wave sim:/tb2/*
add wave sim:/tb2/AC0/*


view wave
run 1000ns