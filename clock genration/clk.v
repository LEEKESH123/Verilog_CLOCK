//clock genration
module tb;
	reg clk;
	initial begin
	clk = 0;
	end
	always #5 clk = ~clk;

	initial begin
	#500;
	$finish;
	end

endmodule














