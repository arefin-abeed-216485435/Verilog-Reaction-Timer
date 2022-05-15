module DownCount(c,start,clk1k,out);
	input [11:0]c;
	input start, clk1k;
	output reg out;
	
	reg [11:0]counter;
	
	initial
	begin
		out = 1'b0;
	end
	
	always@(posedge clk1k, posedge start) 
	begin
		if (start) 
		begin
			counter[11:0] <= c[11:0];
			out <= 1'b0;
		end
		
		else 
		begin
			if (counter == 12'b000000000000)
			begin
				out <= 1'b1;
			end
			
			else 
			begin
				counter <= counter - 1'b1;
				out <= 1'b0;
			end
		end
	end
	
endmodule
