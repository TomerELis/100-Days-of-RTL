// ============================================
// Module: day10
// Purpose: Counter with a load
// Date: September 12, 2025
// Tomer Elis

//Explanation: counter which supports loading a value and restarting from the last loaded value.
//Example: 
// ============================================

// Counter with a load
module day10 (
  input     wire          clk,
  input     wire          reset,
  input     wire          load_i,
  input     wire[3:0]     load_val_i,

  output    wire[3:0]     count_o
);

  logic[3:0] temp_ff;			//temp_ff is logic since we cant update a wire inside always_ff

//sequential part
//-------------------------------------------------------------------------------------
  always_ff @(posedge clk or posedge reset) begin
    if (reset && load_i)
      temp_ff <= load_val_i;
    if (reset && (!load_i))
      temp_ff <= 4'b0;
    else
      temp_ff <= temp_ff+1;
  end
//-------------------------------------------------------------------------------------
  
  assign count_o = temp_ff;

endmodule
