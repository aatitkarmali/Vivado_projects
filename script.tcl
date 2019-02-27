############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project mult
set_top mult
add_files ./src/mult.cpp
add_files ./lib/my_mult.h
add_files -tb ./src/mult_tb.cpp
open_solution "solution"
set_part {xa7a12tcsg325-1q}
create_clock -period 10 -name default
#source "./mult/solution/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design -compiler gcc
export_design -rtl verilog -format ip_catalog
