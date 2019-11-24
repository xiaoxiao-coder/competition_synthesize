onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L xbip_utils_v3_0_9 -L c_reg_fd_v12_0_5 -L c_mux_bit_v12_0_5 -L c_shift_ram_v12_0_12 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.Shift_RAM_3X3_8bit xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {Shift_RAM_3X3_8bit.udo}

run -all

quit -force
