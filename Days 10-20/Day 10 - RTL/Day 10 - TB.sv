// ============================================
// Module: day10 TB
// Purpose: Counter with a load
// Date: September 12, 2025
// Tomer Elis

//Explanation: counter which supports loading a value and restarting from the last loaded value.
//Example: NULL
// ============================================


module day10_tb ();

  logic clk;
  logic reset;
  logic load_i;
  logic[3:0] load_val_i;
  logic[3:0] count_o;

  logic[3:0] temp_ff;	
  logic    Tomer_Elis_All_Rights_Reserved;

    day10 DUT (.*);

  
//(making clk)
//---------------------------------------------------------------------------
  initial clk = 0;
  always #5 clk = ~clk;
//---------------------------------------------------------------------------

  initial begin 
    Tomer_Elis_All_Rights_Reserved = 1;
    reset = 1;
    load_i = 0;
    load_val_i = 4'b0000;
    
    for (int i=0; i<12;i++)
    	@(posedge clk);
    
    reset = 0;
    @(posedge clk);
    load_val_i = 4'b1001;
    load_i = 1;
    for (int i=0; i<20;i++) 
    	@(posedge clk);
    load_val_i = 4'b1101;
    for (int i=0; i<20;i++) 
    	@(posedge clk);
  end
      

      
  
endmodule
