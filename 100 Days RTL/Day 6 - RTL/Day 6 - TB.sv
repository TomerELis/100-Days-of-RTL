// ============================================
// Module: day6 TB
// Purpose: simple shift register
// Date: September 1, 2025
// Tomer Elis
// ============================================
module day6_tb ();

  logic   clk;
  logic   reset;
  logic   x_i;      // Serial input

  logic[3:0]   sr_o;
  logic[3:0] temp_ff;
  logic    Tomer_Elis_All_Rights_Reserved;
  
  	day6 DUT (.*);

  //making clk:
  //---------------------------------------------------------------------------
  always begin
    #10;
    clk <= 1'b1;
    #10;
    clk <= 1'b0;
  end
  //---------------------------------------------------------------------------
  
  initial begin 
    Tomer_Elis_All_Rights_Reserved = 1'b1;
    x_i <= 1'b0;
    reset = 1'b1;
    @(posedge clk);	
    reset = 1'b0;
    @(posedge clk);	
    for(int i=0; i<8; i=i+1) begin
      //x_i <= 1'b1;
      x_i <= i%2;
      @(posedge clk);	
    end
    $finish();
  end

endmodule
