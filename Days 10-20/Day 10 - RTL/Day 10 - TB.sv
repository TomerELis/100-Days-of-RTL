// ============================================
// Module: day10 TB
// Purpose: Counter with a load
// Date: September 12, 2025
// Tomer Elis

//Explanation: counter which supports loading a value and restarting from the last loaded value.
//Example: 
// ============================================

module day10_tb ();

  logic clk;
  logic reset;
  logic load_i;
  logic[3:0] load_val_i;
  logic[3:0] count_o;

  logic[3:0] temp_ff;			//temp_ff is logic since we cant update a wire inside always_ff
  logic    Tomer_Elis_All_Rights_Reserved;

    day10 DUT (.*);

  
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
    reset = 1'b1;
    #15;
    reset = 1'b0;
    #20;
    load_i = 1'b1;
    load_val_i = 4'b1001;
    reset = 1'b1;
    #10;
    reset = 1'b0;
    #100;
  end
      

      
  
endmodule
