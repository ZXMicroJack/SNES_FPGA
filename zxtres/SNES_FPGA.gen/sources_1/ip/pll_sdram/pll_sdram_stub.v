// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Sun Nov 10 22:20:04 2024
// Host        : matt-IdeaPad-5-Pro-14IAP7 running 64-bit Linux Mint 21.2
// Command     : write_verilog -force -mode synth_stub
//               /home/matt/zx3/mist/SNES_FPGA/zxtres/SNES_FPGA.gen/sources_1/ip/pll_sdram/pll_sdram_stub.v
// Design      : pll_sdram
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module pll_sdram(c0, c1, c2, locked, inclk0)
/* synthesis syn_black_box black_box_pad_pin="c0,c1,c2,locked,inclk0" */;
  output c0;
  output c1;
  output c2;
  output locked;
  input inclk0;
endmodule
