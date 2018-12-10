transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/User/Desktop/oac/trabfinal/demux4.vhd}
vcom -93 -work work {C:/Users/User/Desktop/oac/trabfinal/demux2.vhd}
vcom -93 -work work {C:/Users/User/Desktop/oac/trabfinal/mips_pkg.vhd}
vcom -93 -work work {C:/Users/User/Desktop/oac/trabfinal/convbin7seg.vhd}
vcom -93 -work work {C:/Users/User/Desktop/oac/trabfinal/reg.vhd}
vcom -93 -work work {C:/Users/User/Desktop/oac/trabfinal/regbuf.vhd}
vcom -93 -work work {C:/Users/User/Desktop/oac/trabfinal/ulamips.vhd}
vcom -93 -work work {C:/Users/User/Desktop/oac/trabfinal/mux_4.vhd}
vcom -93 -work work {C:/Users/User/Desktop/oac/trabfinal/mux_3.vhd}
vcom -93 -work work {C:/Users/User/Desktop/oac/trabfinal/mux_2.vhd}
vcom -93 -work work {C:/Users/User/Desktop/oac/trabfinal/mips_multi.vhd}
vcom -93 -work work {C:/Users/User/Desktop/oac/trabfinal/mips_control.vhd}
vcom -93 -work work {C:/Users/User/Desktop/oac/trabfinal/extsgn.vhd}
vcom -93 -work work {C:/Users/User/Desktop/oac/trabfinal/breg.vhd}
vcom -93 -work work {C:/Users/User/Desktop/oac/trabfinal/alu_ctr.vhd}
vcom -93 -work work {C:/Users/User/Desktop/oac/trabfinal/extsgn_shift.vhd}
vcom -93 -work work {C:/Users/User/Desktop/oac/trabfinal/byte_ctl.vhd}
vcom -93 -work work {C:/Users/User/Desktop/oac/trabfinal/mux_4_byte.vhd}
vcom -93 -work work {C:/Users/User/Desktop/oac/trabfinal/mux_2_half.vhd}
vcom -93 -work work {C:/Users/User/Desktop/oac/trabfinal/extsgn8.vhd}
vcom -93 -work work {C:/Users/User/Desktop/oac/trabfinal/mips_mem.vhd}

vcom -93 -work work {C:/Users/User/Desktop/oac/trabfinal/mips_multi_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  mips_multi_tb

add wave *
view structure
view signals
run -all
