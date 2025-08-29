// Simple edge detector TB

module day3_tb ();

  logic    clk;
  logic    reset;

  logic    a_i;

  logic    rising_edge_o;
  logic    falling_edge_o;
  logic 	 prev_i;
  logic    Tomer_Elis_All_Rights_Reserved;

    day3 DUT (.*);
  
  
  
  
  //sequential part (clk):
  //---------------------------------------------------------------------------
  always begin
    clk = 1'b1;
    #10;
    clk = 1'b0;
    #10;
  end
  //---------------------------------------------------------------------------
  
  
  //combinational part:
	//---------------------------------------------------------------------------
  initial begin 
    Tomer_Elis_All_Rights_Reserved <= 1'b1;
    for (int i=0; i<3; i++) begin
    reset <= 1'b0;
    prev_i <= 1'b1;
    a_i <= 1'b1;
    @(posedge clk);   //wait until the next rising edge of clk
     a_i <= 1'b0;
    @(posedge clk);	  //wait until the next rising edge of clk
    prev_i <= 1'b0;
    reset <= 1'b1;
    @(posedge clk);	  //wait until the next rising edge of clk
     a_i <= 1'b1;
    #10;
    end

  	//$finish();
  end

endmodule
