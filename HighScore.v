module HighScore(b,Curr,hs);
	input b;
	input [23:0]Curr;
	output reg [23:0]hs;
	
	always@(negedge b) begin
		if (hs == 0 && Curr != 0)
			hs = Curr;
	
		else begin
			if(Curr < hs && Curr != 0)
				hs[23:0] = Curr[23:0];
				
		end
	end
	
endmodule 