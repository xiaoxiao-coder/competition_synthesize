-makelib xcelium_lib/xil_defaultlib -sv \
  "D:/anzhuang/VIVADO/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/anzhuang/VIVADO/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_2 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../competition.srcs/sources_1/ip/vga_rom/sim/vga_rom.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

