// ============================================
// Module: day8 TB	
// Purpose: Binary to one-hot
// Date: September 9, 2025
// Tomer Elis

//Explanation: This module converts a binary number into a one-hot representation in hex.
//Example: If the binary input is 01001 (which equals 9 in decimal), the one-hot output will be 0x0200 (512 in decimal and 0100000000 in binary).
// ============================================

module day8_tb();

  localparam BIN_W = 4;
  localparam ONE_HOT_W = 16;

  logic [BIN_W-1:0] bin_i;
  logic [ONE_HOT_W-1:0] one_hot_o;
  logic    Tomer_Elis_All_Rights_Reserved;

  day8 #(BIN_W, ONE_HOT_W) DAY8 (.*);

  initial begin
    Tomer_Elis_All_Rights_Reserved = 1'b1;
    for(int i=0; i<15; i++) begin
      bin_i = i;
      #10;
    end
    $finish();
  end


endmodule
