vlog list.svh
vsim -novopt  -suppress 12110 tb +test_name=FULL +N=100
#add wave -r sim:/tb/pif/*
run -all

