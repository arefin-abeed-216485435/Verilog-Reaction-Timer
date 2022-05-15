module clockin(input clock50m, input [32:0] dist, output reg uu);
wire so = (dist == 33'b000000000000000000000000000001110);
 

	always@(posedge clk50M) 
	begin
	if(so)
	begin
	uu <= 1;
	end
	else
	begin
	uu <= 0;
	end
	end
	end
	
	
	
endmodule
