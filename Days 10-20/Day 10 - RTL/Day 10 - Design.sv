// ============================================
// Module: day10
// Purpose: Counter with a load
// Date: September 12, 2025
// Tomer Elis

//Explanation: counter which supports loading a value and restarting from the last loaded value.
//Example: NULL
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
  always_ff @(posedge clk or posedge reset) begin			//four possible cases
    if (reset)			                                    //case 1: reset -> clear counter
      temp_ff <= 4'b0;                                           
    else if (load_i && temp_ff == 4'b1111)	 	           //case 2: reload when counter reaches max
      temp_ff <= load_val_i;
    else if (temp_ff == 4'b1111) 				               //case 3: wrap to zero (no reload)
      temp_ff <= 4'b0;
    else
      temp_ff <= temp_ff+1;														//case 4: normal counting
    
    	
  end
//-------------------------------------------------------------------------------------
  
  assign count_o = temp_ff; 											    //update wire

endmodule



//Bug I had: there is a difference between 4'b1 and 4'b1111.




