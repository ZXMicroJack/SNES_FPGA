vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../ipstatic" \
"/opt/vivado/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  \
"/opt/vivado/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../SNES_FPGA.gen/sources_1/ip/pll_sdram/pll_sdram_clk_wiz.v" \
"../../../../SNES_FPGA.gen/sources_1/ip/pll_sdram/pll_sdram.v" \

vlog -work xil_defaultlib \
"glbl.v"

