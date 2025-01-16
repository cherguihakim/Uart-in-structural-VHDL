onerror {exit -code 1}
vlib work
vlog -work work Laboratoire4.vo
vlog -work work Simulation_diagram_test.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.diagram_test_uart_fsm_with_uart_emetteur_vlg_vec_tst -voptargs="+acc"
vcd file -direction Laboratoire4.msim.vcd
vcd add -internal diagram_test_uart_fsm_with_uart_emetteur_vlg_vec_tst/*
vcd add -internal diagram_test_uart_fsm_with_uart_emetteur_vlg_vec_tst/i1/*
run -all
quit -f
