module tb
  (
  );
  
  reg [31:0] instruction;
  wire [63:0] imm_data;
  
  immediate_data_extractor ide
  (
  .instruction(instruction),
  .imm_data(imm_data)
  );
  
  initial 
  instruction = 32'b00000001001100110000010100000011;
  
endmodule
