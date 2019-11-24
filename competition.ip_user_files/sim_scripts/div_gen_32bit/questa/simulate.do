onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib div_gen_32bit_opt

do {wave.do}

view wave
view structure
view signals

do {div_gen_32bit.udo}

run -all

quit -force
