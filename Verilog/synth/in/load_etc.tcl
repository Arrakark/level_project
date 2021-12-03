set DESIGN level_fsm
set SYN_EFF high 
set MAP_EFF high
set SYN_PATH "."
set PDKDIR /CMC/kits/GPDK45/gsclib045_all_v4.4/gsclib045/
set_attribute lib_search_path /CMC/kits/GPDK45/gsclib045_all_v4.4/gsclib045/timing
set_attribute library {slow_vdd1v0_basicCells.lib}
read_hdl -sv ./in/level_fsm.sv
elaborate $DESIGN
timestat ELABORATION
check_design -unresolved
read_sdc ./in/timing.sdc

synthesize -to_generic -eff $SYN_EFF
timestat GENERIC

synthesize -to_mapped -eff $MAP_EFF -no_incr
timestat MAPPED


synthesize -to_mapped -eff $MAP_EFF -incr
insert_tiehilo_cells
timestat INCREMENTAL


report area > ./out/${DESIGN}_area.rpt
report gates > ./out/${DESIGN}_gates.rpt
report timing > ./out/${DESIGN}_timing.rpt
report power > ./out/${DESIGN}_power.rpt

write_hdl -mapped > ./out/${DESIGN}_map.v

write_sdc > ./out/${DESIGN}_map.sdc

write_sdf > ./out/${DESIGN}_map.sdf

timestat FINAL
puts "Exiting..."


