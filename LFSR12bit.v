module LFSR12bit(clk50M,r);
	input clk50M;
	output reg [11:0]r;
	

	initial
	begin
		r = 12'b010010101101;
	end
	
	always@(posedge clk50M) begin
		if (r == 12'b000000000000)
		begin
			r[11:0] <= 12'b010010101101;
		end
		
		
		else 
		begin
		r[11] <= r[7] ^ r[6];
		r <= {r[10:0],r[11]};		
		end
	end
	

endmodule

