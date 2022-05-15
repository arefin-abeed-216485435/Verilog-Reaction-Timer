module LED_Dec(x,y,readit,clk50M,LED2);
  
  input [3:0]x;
  input [3:0]y;
	input readit, clk50M;
	output reg [9:0]LED2;
	
	initial
		LED2[9:0] = 10'b0000000000;
  
	always@(posedge clk50M) begin
    if (readit) 
      begin
			if (LED2[7:0] == 8'b00000000) 
        begin
          LED2[3:0] <= x[3:0];
          LED2[7:4] <= y[3:0];
				LED2[9:8] <= 2'b00;
			end
			
		end
		
		else
			LED2[9:0] <= 10'b0000000000;
	end
	
endmodule 
