module FirstTest(onoff,key0,counter,clk50M,clk1k,hs1,A1,b,LED1);
	input onoff, key0, clk50M, clk1k;
	input [23:0]counter;
	output reg b, A1;
	output reg [9:0] LED1;
	output [23:0]hs1;
	
	wire A;
	wire [11:0]r;
	
	LFSR12bit lfsr(clk50M,r[11:0]);
	DownCount downc(r[11:0],~key0,clk1k,A);
	HighScore hscore(b,counter[23:0],hs1[23:0]);
	
	always@(posedge clk50M) 
	begin
		if (onoff) 
		begin
			A1 = b & A;
			
			LED1[9:0] = b & A;
		end
		else 
		begin
			A1 = 1'b0;
			LED1[9:0] = 10'b0000000000;
		end
	end
	
	always@(posedge key0, negedge onoff) 
	begin
		if (~onoff)
			b <= 1'b0;
		else
			b <= b ^ 1'b1;
	end
	
endmodule 