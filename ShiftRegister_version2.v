module ShiftRegister(clk,x);
	input clk;
	output reg [3:0]x;
	
	initial
  begin
		x = 4'b0001;
  end
	
	always@(posedge clk) 
  begin
    x[3:0] <= {x[2:0],x[3]};
		
	
	end
	
endmodule 
