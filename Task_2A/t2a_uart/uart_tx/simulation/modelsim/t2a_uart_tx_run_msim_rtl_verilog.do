transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/sra-vjti/Downloads/uart-Eyantra23/ab#3395_Task2A/t2a_uart/uart_tx {/home/sra-vjti/Downloads/uart-Eyantra23/ab#3395_Task2A/t2a_uart/uart_tx/uart_tx.v}

vlog -vlog01compat -work work +incdir+/home/sra-vjti/Downloads/uart-Eyantra23/ab#3395_Task2A/t2a_uart/uart_tx/simulation/modelsim {/home/sra-vjti/Downloads/uart-Eyantra23/ab#3395_Task2A/t2a_uart/uart_tx/simulation/modelsim/tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run 848500 ns
