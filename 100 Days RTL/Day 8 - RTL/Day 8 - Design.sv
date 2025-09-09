// ============================================
// Module: day8 
// Purpose: Binary to one-hot
// Date: September 9, 2025
// Tomer Elis

//Explanation: This module converts a binary number into a one-hot representation in hex.
//Example: If the binary input is 01001 (which equals 9 in decimal), the one-hot output will be 0x0200.
// ============================================

//Note: The # after a module name is used for parameters.
module day8#(
  parameter BIN_W       = 4,
  parameter ONE_HOT_W   = 16
)(
  input   wire[BIN_W-1:0]     bin_i,
  output  wire[ONE_HOT_W-1:0] one_hot_o
);

    // Shift a single '1' bit, "bin_i" times to the correct spot.
  assign one_hot_o = 1 << bin_i;

endmodule
