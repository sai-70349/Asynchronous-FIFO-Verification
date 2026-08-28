vlog list.svh
vopt tb +cover=fcbest -o CONCURRENT
vsim -coverage CONCURRENT +test_name=CONCURRENT +N=105
do exclusion.do
coverage save -onexit CONCURRENT.ucdb
add wave -r sim:/tb/pif/*
run -all
