#!/bin/bash

name=level_fsm_tb

iverilog -Wall -s $name -g2012 -o $name -c project_files.txt
vvp $name
gtkwave $name.vcd