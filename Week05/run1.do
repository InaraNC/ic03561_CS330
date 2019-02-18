vlog tb1.v immediate_data_extractor.v

vsim -novopt work.tb


view wave

add wave sim:/tb/instruction
add wave sim:/tb/imm_data


run 250ns