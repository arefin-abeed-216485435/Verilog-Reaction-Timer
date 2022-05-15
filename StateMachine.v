module StateMachine(x,clk,ma,Z);
	input x, clk, ma;
	output reg Z;
	
	initial
    begin
		Z = 0;
    end
	
	always@(posedge clk) begin
    Z = (x & ~Z) | (~ma & Z);
	end
	
endmodule 
