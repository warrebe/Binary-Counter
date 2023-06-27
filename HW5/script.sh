#!/bin/bash

# Create the work library
if [ ! -d "work" ]; then
   echo "work library does not exist"
   vlib work
fi

# Compile the SV file.
if [ -s tb_count.sv ]; then
   vlog count.sv tb_count.sv -work work
fi

# Simulate the SV file
vsim work.tb_count -voptargs=+acc=npr

add wave *

# For design-vision, create dv_script
echo "analyze -format sverilog  -lib WORK count.sv" >| script$$
echo "elaborate count -lib WORK" >> script$$
echo "compile" >> script$$
echo "report_timing > timing.txt" >> script$$
echo "report_area > area.txt" >> script$$
echo "write -hierarchy -format verilog -output count.gate.v" >> script$$
echo "quit" >> script$$
cp script$$ dv_script
rm script$$

# Synthesize the design by runnig dv_script that just created.
dc_shell-xg-t -f dv_script

# To simulate the gate design, compile the code.
mkdir gate_src
mv *.v gate_src/
cd gate_src/

# Compile the code
vlog count.gate.v /nfs/guille/a1/cadlibs/synop_lib/SAED_EDK90nm/Digital_Standard_Cell_Library/verilog/*.v

# Run modelSim
vsim tb_count -t ns




