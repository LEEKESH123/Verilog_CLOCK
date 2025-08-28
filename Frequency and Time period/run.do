#vlog duty1.v
vlog duty2.v
vlog duty3.v
#vsim tb +freq=1.5 +dc=50 +cycles=20
#vsim tb +freq=200 +dc=40 +cycles=20
vsim tb +freq=5 +dc=40 +cycles=20
add wave *
run -all
