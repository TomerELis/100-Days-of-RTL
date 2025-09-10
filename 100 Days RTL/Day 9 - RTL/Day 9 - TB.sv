// ============================================
// Module: day9 TB
// Purpose: binary-to-Gray code converter
// Date: September 10, 2025
// Tomer Elis

//Explanation: binary-to-Gray code converter. (MSB) stays the same, each next bit = XOR of the current
//binary bit and the previous binary bit.
//Example: Input (binary): 0100   Output (gray): 0110
// ============================================

module day9_tb ();

  parameter VEC_W = 5;
  logic [VEC_W-1:0] bin_i;
  logic [VEC_W-1:0] gray_o;
  logic[VEC_W-1:0] temp_log;
  logic    Tomer_Elis_All_Rights_Reserved;

  day9 #(VEC_W) DAY9 (.*);
  
  initial begin
    Tomer_Elis_All_Rights_Reserved = 1'b1;
    for(int i=0; i<2**VEC_W; i++) begin
			bin_i = i;
      #10;
    end
    $finish();
  end

endmodule

