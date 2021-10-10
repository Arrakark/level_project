set DESIGN level_fsm
set SYN_EFF medium
set MAP_EFF high
set SYN_PATH "."
set PDKDIR /ubc/ece/data/cmc2/kits/ncsu_pdk/FreePDK15/
set_attribute lib_search_path /ubc/ece/data/cmc2/kits/ncsu_pdk/FreePDK15/NanGate_15nm_OCL_v0.1_2014_06_Apache.A/front_end/timing_power_noise/CCS
set_attribute library {NanGate_15nm_OCL_worst_low_conditional_ccs.lib}
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
quit

