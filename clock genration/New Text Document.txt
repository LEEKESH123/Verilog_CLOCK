//clock genration
module tb;
	reg clk;
	initial begin
	clk = 0;
	end

	initial begin
	forever #5 clk=~clk;
	end
	initial begin
	#100;
	$finish;
	end

endmodule














