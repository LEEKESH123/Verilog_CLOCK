`timescale 1ns/1ps
module tb;
	reg clk;
	real freq,dc,tp,ton,toff;
	integer cycles,i;

	initial begin
	clk = 0;
	if($value$plusargs("freq=%f",freq));
	if($value$plusargs("dc=%f",dc));
	if($value$plusargs("cycles=%d",cycles));
	
	tp = 1/freq;
	ton = (dc*tp) / 100;
	toff = tp - ton;

	end

	initial begin
	for(i = 0; i < cycles ; i = i+1) begin
		clk = 1; #(ton);
		clk = 0; #(toff);
	end
	$finish;
	end
	endmodule
