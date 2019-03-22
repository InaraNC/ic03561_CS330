vlog tb_top.v top_control.v ALU_Control.v Control_Unit.v  

vsim -novopt work.tb_top

add wave sim:/tb_top/*
add wave sim:/tb_top/AC0/*
add wave sim:/tb_top/CU0/*

view wave
run 1000ns