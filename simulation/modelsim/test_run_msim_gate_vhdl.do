transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {test_8_1200mv_85c_slow.vho}

vlog -vlog01compat -work work +incdir+//Mac/Home/Desktop/FPGA/test {//Mac/Home/Desktop/FPGA/test/test.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=test_8_1200mv_85c_vhd_slow.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  test

add wave *
view structure
view signals
run 10 us
