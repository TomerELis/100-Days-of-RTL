// ============================================
// Module: day4
// Purpose: A simple ALU TB
// Tomer Elis
// ============================================

module day4_tb ();
  logic [7:0]   a_i;
  logic [7:0]   b_i;
  logic [2:0]   op_i;

  logic [7:0]   alu_o;
  logic    Tomer_Elis_All_Rights_Reserved;

  day4 DUT (.*);
  
	
  //combinational part:
	//---------------------------------------------------------------------------
  initial begin 
    Tomer_Elis_All_Rights_Reserved = 1'b1;
    #3;
    a_i = 8'b00000111;
    b_i = 8'b00000011;
    op_i = 3'b000;
    #3;
    
    for (int i =1; i<8; i++) begin
      op_i = 3'(i);									//run on all the op codes
      #3;
    end
  end
    
  
  
  
endmodule
