module tb;
    reg clk;
    integer i;
    
    initial clk = 0;
    
    always #5 clk = ~clk;
    
    initial begin
        for (i = 0; i < 20; i = i + 1) begin
            @(posedge clk);   
        end
        $finish;
    end
endmodule
	
