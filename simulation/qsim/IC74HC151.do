onerror {exit -code 1}
vlib work
vlog -work work IC74HC151.vo
vlog -work work simuliation.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.IC74HC151_vlg_vec_tst -voptargs="+acc"
vcd file -direction IC74HC151.msim.vcd
vcd add -internal IC74HC151_vlg_vec_tst/*
vcd add -internal IC74HC151_vlg_vec_tst/i1/*
run -all
quit -f
