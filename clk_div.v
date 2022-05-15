module clk_div(clk50M,clk1k);
reg [14:0] counter;
output reg clk1k;
input clk50M;
initial 
begin
    counter = 0;
    clk1k = 0;
end
always @(posedge clk50M) begin
    if (counter == 0) begin
        counter <= 24999;
        clk1k <= ~clk1k;
    end else begin
        counter <= counter -1;
    end
end
endmodule
