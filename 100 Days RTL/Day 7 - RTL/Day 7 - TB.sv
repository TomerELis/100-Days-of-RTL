// ============================================
// Module: day7 TB
// Purpose: 4 bit shift register (LSFR)
// Date: September 7, 2025
// Tomer Elis
// ============================================
module day7_tb ();

  logic clk;
  logic reset;

  logic [3:0] lfsr_o;
  logic [3:0] lfsr_i;
  logic [3:0] nxt_lfsr;
  
  logic    Tomer_Elis_All_Rights_Reserved;
  
  day7 DAY7 (.*);

  always begin
    clk = 1'b1;
    #10;
    clk = 1'b0;
    #10;
  end

  initial begin
		Tomer_Elis_All_Rights_Reserved = 1'b1;
    reset <= 1'b1;
    @(posedge clk);
    reset <= 1'b0;
    @(posedge clk);
    for (int i=0; i<8; i++)
      @(posedge clk);
    $finish();
  end

endmodule