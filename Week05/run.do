vlog tb.v Instruction_parser.v

vsim -novopt work.tb
add wave sim:/tb/ip/*
view wave

run 250ns