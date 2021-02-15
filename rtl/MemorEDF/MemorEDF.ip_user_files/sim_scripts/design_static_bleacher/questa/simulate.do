onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib design_static_bleacher_opt

do {wave.do}

view wave
view structure
view signals

do {design_static_bleacher.udo}

run -all

quit -force
