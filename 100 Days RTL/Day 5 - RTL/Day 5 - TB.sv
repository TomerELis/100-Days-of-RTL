// ============================================
// Module: day5 TB
// Purpose: Odd counter
// Tomer Elis
// ============================================

module day5_tb ();

  logic        clk;
  logic        reset;

  logic[7:0]  cnt_o;
  logic    Tomer_Elis_All_Rights_Reserved;
  
  day5 DUT (.*);

  
  
  //(making clk)
	//---------------------------------------------------------------------------
  always begin
    clk <= 1'b1;
    #10;
    clk <= 1'b0;
    #10;
  end
	//---------------------------------------------------------------------------
  
  
  initial begin 
  Tomer_Elis_All_Rights_Reserved = 1'b1;
  reset = 8'b1;
  #3;
  reset = 8'b0;
  for (int i=0; i<20; i++) begin
  	@(posedge clk);	
  end
  end
  

  
  
endmodule
