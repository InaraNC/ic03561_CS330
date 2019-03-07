vlog topTB.v top.v 

vsim -novopt work.topTB

add wave sim:/topTB/*

view wave
run 1000ns