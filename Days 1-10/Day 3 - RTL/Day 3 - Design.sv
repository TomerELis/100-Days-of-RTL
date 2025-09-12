 // An edge detector

module day3 (
  input     wire    clk,
  input     wire    reset,

  input     wire    a_i,

  output    wire    rising_edge_o,
  output    wire    falling_edge_o
);

  logic prev_i;
  //sample the previous input/reset to prev_i
  always_ff @(posedge clk or posedge reset)
    if (reset)
      prev_i <= 1'b0;
  	else
      prev_i <= a_i;
  
  
  //if prev input is down and a_i (current input) is equal 1 --> raising
  assign rising_edge_o = (~prev_i)&a_i;
  
  //if the opposite --> falling
  assign falling_edge_o = (prev_i)&(~a_i);
  
    	

endmodule
