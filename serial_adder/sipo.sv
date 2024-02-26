
module SIPO_register # (parameter WIDTH = 8) (
      	input clk,rst,serial_in,en,
      	output  reg [WIDTH:0] sum);

reg [WIDTH:0] tmp;
bit[4:0] i;

always @(posedge clk) begin
	if(rst)    begin
		tmp <= 9'b0;i<=0;
		sum <= 9'b0;
	end
	else if(en && i<WIDTH+2)  begin
		tmp     <= tmp>>1;
		tmp[WIDTH]   <= serial_in;
		i <= i+1;
	end
	else
		sum <= tmp;
end
endmodule
