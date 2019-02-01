vlog testbench.v Multiplexer_2x1.v

vsim -novopt work.tb

view wave

add wave sim:/tb/a
add wave sim:/tb/b 
add wave sim:/tb/sel
add wave sim:/tb/data_out


run 250ns