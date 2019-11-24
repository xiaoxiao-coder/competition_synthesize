onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Shift_RAM_3x3_bit_opt

do {wave.do}

view wave
view structure
view signals

do {Shift_RAM_3x3_bit.udo}

run -all

quit -force
