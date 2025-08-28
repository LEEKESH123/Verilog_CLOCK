`timescale 1ns/1ps
module tb;
	reg clk;
	real freq,tp,dc,ton,toff;
	integer cycles;

	initial begin
	clk = 0;
	if($value$pluseargs("freq=%f",freq));
	if($value$pluseargs("dc=%f",dc));
	if($value$pluseargs("cycles=%d",cycles));

	tp = 1/freq;
	ton = (dc*tp)/100.0;
	toff = tp - ton;
	 $display("Frequency = %0f GHz", freq);
        $display("Duty Cycle = %0f %%", dc);
        $display("Period (Tp) = %0f ns", tp);
        $display("TON = %0f ns, TOFF = %0f ns", ton, toff);
	end

	initial begin
		forever begin
			clk = 1; #(ton);
			clk = 0; #(toff);
			end
		end

		initial begin
		#(tp * 20);
		 $display("Stopping after 20 cycles worth of time");

		$finish;
		end
endmodule

