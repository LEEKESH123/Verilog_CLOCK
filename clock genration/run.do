#vlog clk.v
#vlog clk1.v
vlog clk2.v
vsim tb
add wave *

run -all
