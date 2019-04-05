module Program_Counter
  (
  input clk,
  input reset,
  input [63:0] PC_In,
  output reg [63:0] PC_Out  
  );
  
  
  always @ (posedge clk)
  begin
    //if (reset == 1'b1)
      //PC_Out<= 64'b0;   
    if(reset == 1'b0)
      PC_Out <= PC_In;
  end 
      
  always @ (reset)
  //begin
  //  if (reset==1'b1)
      PC_Out<= 64'b0;   
    
  //end
      
    
    //if (reset == 1'b1)
     // PC_Out <= 64'b0;
    //else
      //PC_Out <= PC_In;
  
endmodule
    