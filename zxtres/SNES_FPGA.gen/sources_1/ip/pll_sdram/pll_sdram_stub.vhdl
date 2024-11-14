-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Sun Nov 10 22:20:04 2024
-- Host        : matt-IdeaPad-5-Pro-14IAP7 running 64-bit Linux Mint 21.2
-- Command     : write_vhdl -force -mode synth_stub
--               /home/matt/zx3/mist/SNES_FPGA/zxtres/SNES_FPGA.gen/sources_1/ip/pll_sdram/pll_sdram_stub.vhdl
-- Design      : pll_sdram
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pll_sdram is
  Port ( 
    c0 : out STD_LOGIC;
    c1 : out STD_LOGIC;
    c2 : out STD_LOGIC;
    locked : out STD_LOGIC;
    inclk0 : in STD_LOGIC
  );

end pll_sdram;

architecture stub of pll_sdram is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "c0,c1,c2,locked,inclk0";
begin
end;
