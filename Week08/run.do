vlog tb.v Adder.v Instruction_Fetch.v Instruction_Memory.v Program_Counter.v  

vsim -novopt work.tb

add wave sim:/tb/*
add wave sim:/tb/if0/*
add wave sim:/tb/if0/adder0/*
add wave sim:/tb/if0/PC0/*
add wave sim:/tb/if0/IM0/*


view wave
run 1000ns