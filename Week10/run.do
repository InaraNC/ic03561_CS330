vlog tb.v RISC_V_Processor.v Adder.v ALU_64_bit.v ALU_Control.v Control_Unit.v Data_Memory.v immediate_data_extractor.v Instruction_Memory.v Instruction_parser.v Multiplexer_2x1.v Program_Counter.v registerFile.v                                 

vsim -novopt work.tb

add wave sim:/tb/*
add wave sim:/tb/risc0/*

view wave
run 1000ns