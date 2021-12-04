#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed Nov 17 10:27:17 2021                
#                                                     
#######################################################

#@(#)CDS: Innovus v18.10-p002_1 (64bit) 05/29/2018 19:19 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 18.10-p002_1 NR180522-1057/18_10-UB (database version 2.30, 418.7.1) {superthreading v1.46}
#@(#)CDS: AAE 18.10-p004 (64bit) 05/29/2018 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 18.10-p003_1 () May 15 2018 10:23:07 ( )
#@(#)CDS: SYNTECH 18.10-a012_1 () Apr 19 2018 01:27:21 ( )
#@(#)CDS: CPE v18.10-p005
#@(#)CDS: IQRC/TQRC 18.1.1-s118 (64bit) Fri Mar 23 17:23:45 PDT 2018 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
set init_gnd_net VSS
set init_lef_file {/CMC/kits/GPDK45/gsclib045_all_v4.4/gsclib045/lef/gsclib045_tech.lef /CMC/kits/GPDK45/gsclib045_all_v4.4/gsclib045/lef/gsclib045_macro.lef /CMC/kits/GPDK45/gsclib045_all_v4.4/gsclib045/lef/gsclib045_multibitsDFF.lef}
set init_design_settop 0
set init_verilog ../Verilog/synth/out/level_fsm_map.v
set init_mmmc_file MMMC.tcl
set init_pwr_net VDD
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site CoreSite -r 0.928716904277 0.9 5 5 5 5
uiSetTool select
getIoFlowFlag
fit
set ptngSprNoRefreshPins 1
setPtnPinStatus -cell level_fsm -pin clk_i -status unplaced -silent
set ptngSprNoRefreshPins 0
ptnSprRefreshPinsAndBlockages
gui_select -rect {0.630 3.821 0.630 4.525}
set ptngSprNoRefreshPins 1
setPtnPinStatus -cell level_fsm -pin clk_i -status unplaced -silent
set ptngSprNoRefreshPins 0
ptnSprRefreshPinsAndBlockages
set ptngSprNoRefreshPins 1
setPtnPinStatus -cell level_fsm -pin clk_i -status unplaced -silent
set ptngSprNoRefreshPins 0
ptnSprRefreshPinsAndBlockages
set ptngSprNoRefreshPins 1
setPtnPinStatus -cell level_fsm -pin clk_i -status unplaced -silent
setPtnPinStatus -cell level_fsm -pin VDD -status unplaced -silent
setPtnPinStatus -cell level_fsm -pin VSS -status unplaced -silent
set ptngSprNoRefreshPins 0
ptnSprRefreshPinsAndBlockages
gui_select -rect {-0.133 0.011 -0.044 -0.025}
gui_select -rect {-0.007 -0.024 -0.006 0.060}
uiSetTool moveWire
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
selectObject IO_Pin i2c_write_o
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
deselectAll
selectObject IO_Pin i2c_write_o
uiSetTool moveWire
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
deselectAll
selectObject IO_Pin i2c_write_o
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
deselectAll
selectObject IO_Pin clk_i
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
deselectAll
selectObject IO_Pin i2c_write_o
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
deselectAll
selectObject IO_Pin clk_i
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
deselectAll
selectObject IO_Pin clk_i
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
deselectAll
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 5 -spreadType center -spacing 0.5 -pin {clk_i i2c_arb_lost_i i2c_busy_i {i2c_data_out_i[0]} {i2c_data_out_i[1]} {i2c_data_out_i[2]} {i2c_data_out_i[3]} {i2c_data_out_i[4]} {i2c_data_out_i[5]} {i2c_data_out_i[6]} {i2c_data_out_i[7]} i2c_data_out_valid_i i2c_rxak_i i2c_write_done_i reset_i}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 5 -spreadType center -spacing 0.5 -pin {clk_i i2c_arb_lost_i i2c_busy_i {i2c_data_out_i[0]} {i2c_data_out_i[1]} {i2c_data_out_i[2]} {i2c_data_out_i[3]} {i2c_data_out_i[4]} {i2c_data_out_i[5]} {i2c_data_out_i[6]} {i2c_data_out_i[7]} i2c_data_out_valid_i i2c_rxak_i i2c_write_done_i reset_i}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 5 -spreadType center -spacing 0.50 -pin {{led_o[0]} {led_o[1]} {led_o[2]} {led_o[3]} {led_o[4]} {led_o[5]} {led_o[6]} {led_o[7]} {led_o[8]} error_led_o {i2c_command_byte_o[0]} {i2c_command_byte_o[1]} {i2c_command_byte_o[2]} {i2c_command_byte_o[3]} {i2c_command_byte_o[4]} {i2c_command_byte_o[5]} {i2c_command_byte_o[6]} {i2c_command_byte_o[7]} {i2c_din_o[0]} {i2c_din_o[1]} {i2c_din_o[2]} {i2c_din_o[3]} {i2c_din_o[4]} {i2c_din_o[5]} {i2c_din_o[6]} {i2c_din_o[7]} {i2c_num_bytes_o[0]} {i2c_num_bytes_o[1]} {i2c_num_bytes_o[2]} {i2c_num_bytes_o[3]} {i2c_num_bytes_o[4]} {i2c_num_bytes_o[5]} {i2c_num_bytes_o[6]} {i2c_num_bytes_o[7]} i2c_read_o {i2c_slave_addr_o[0]} {i2c_slave_addr_o[1]} {i2c_slave_addr_o[2]} {i2c_slave_addr_o[3]} {i2c_slave_addr_o[4]} {i2c_slave_addr_o[5]} {i2c_slave_addr_o[6]} {i2c_slave_addr_o[7]} i2c_write_o}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.08 -pinDepth 0.25 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 5 -spreadType center -spacing -0.57 -pin {{led_o[0]} {led_o[1]} {led_o[2]} {led_o[3]} {led_o[4]} {led_o[5]} {led_o[6]} {led_o[7]} {led_o[8]} error_led_o {i2c_command_byte_o[0]} {i2c_command_byte_o[1]} {i2c_command_byte_o[2]} {i2c_command_byte_o[3]} {i2c_command_byte_o[4]} {i2c_command_byte_o[5]} {i2c_command_byte_o[6]} {i2c_command_byte_o[7]} {i2c_din_o[0]} {i2c_din_o[1]} {i2c_din_o[2]} {i2c_din_o[3]} {i2c_din_o[4]} {i2c_din_o[5]} {i2c_din_o[6]} {i2c_din_o[7]} {i2c_num_bytes_o[0]} {i2c_num_bytes_o[1]} {i2c_num_bytes_o[2]} {i2c_num_bytes_o[3]} {i2c_num_bytes_o[4]} {i2c_num_bytes_o[5]} {i2c_num_bytes_o[6]} {i2c_num_bytes_o[7]} i2c_read_o {i2c_slave_addr_o[0]} {i2c_slave_addr_o[1]} {i2c_slave_addr_o[2]} {i2c_slave_addr_o[3]} {i2c_slave_addr_o[4]} {i2c_slave_addr_o[5]} {i2c_slave_addr_o[6]} {i2c_slave_addr_o[7]} i2c_write_o}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.08 -pinDepth 0.25 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 5 -spreadType center -spacing -0.57 -pin {{led_o[0]} {led_o[1]} {led_o[2]} {led_o[3]} {led_o[4]} {led_o[5]} {led_o[6]} {led_o[7]} {led_o[8]} error_led_o {i2c_command_byte_o[0]} {i2c_command_byte_o[1]} {i2c_command_byte_o[2]} {i2c_command_byte_o[3]} {i2c_command_byte_o[4]} {i2c_command_byte_o[5]} {i2c_command_byte_o[6]} {i2c_command_byte_o[7]} {i2c_din_o[0]} {i2c_din_o[1]} {i2c_din_o[2]} {i2c_din_o[3]} {i2c_din_o[4]} {i2c_din_o[5]} {i2c_din_o[6]} {i2c_din_o[7]} {i2c_num_bytes_o[0]} {i2c_num_bytes_o[1]} {i2c_num_bytes_o[2]} {i2c_num_bytes_o[3]} {i2c_num_bytes_o[4]} {i2c_num_bytes_o[5]} {i2c_num_bytes_o[6]} {i2c_num_bytes_o[7]} i2c_read_o {i2c_slave_addr_o[0]} {i2c_slave_addr_o[1]} {i2c_slave_addr_o[2]} {i2c_slave_addr_o[3]} {i2c_slave_addr_o[4]} {i2c_slave_addr_o[5]} {i2c_slave_addr_o[6]} {i2c_slave_addr_o[7]} i2c_write_o}
setPinAssignMode -pinEditInBatch false
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
zoomBox 38.165 21.836 42.738 23.614
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
fit
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -use GROUND -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 5 -spreadType center -spacing 0.5 -pin {VDD VSS}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -use GROUND -pinWidth 0.08 -pinDepth 0.25 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 5 -spreadType center -spacing -0.6 -pin {VDD VSS}
setPinAssignMode -pinEditInBatch false
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
editSplit
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal1 bottom Metal1 left Metal2 right Metal2} -width {top 1.5 bottom 1.5 left 1.5 right 1.5} -spacing {top 0.5 bottom 0.5 left 0.5 right 0.5} -offset {top 0.5 bottom 0.5 left 0.5 right 0.5} -center 0 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -instanceBasename *
globalNetConnect VSS -type pgpin -pin VSS -instanceBasename *
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -instanceBasename *
globalNetConnect VSS -type pgpin -pin VSS -instanceBasename *
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal11(11) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal11(11) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal11(11) }
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -droutePostRouteSpreadWire 1
setNanoRouteMode -quiet -droutePostRouteWidenWireRule LEFSpecialRouteSpec
setNanoRouteMode -quiet -timingEngine {}
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {DLY4X4 DLY4X1 DLY3X4 DLY3X1 DLY2X4 DLY2X1 DLY1X4 DLY1X1 CLKBUFX8 CLKBUFX6 CLKBUFX4 CLKBUFX3 CLKBUFX20 CLKBUFX2 CLKBUFX16 CLKBUFX12 BUFX8 BUFX6 BUFX4 BUFX3 BUFX20 BUFX2 BUFX16 BUFX12 INVXL INVX8 INVX6 INVX4 INVX3 INVX20 INVX2 INVX16 INVX12 INVX1 CLKINVX8 CLKINVX6 CLKINVX4 CLKINVX3 CLKINVX20 CLKINVX2 CLKINVX16 CLKINVX12 CLKINVX1} -maxAllowedDelay 1
setPlaceMode -reset
setPlaceMode -congEffort auto -timingDriven 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 0 -placeIOPins 1 -moduleAwareSpare 0 -preserveRouting 0 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {DLY4X4 DLY4X1 DLY3X4 DLY3X1 DLY2X4 DLY2X1 DLY1X4 DLY1X1 CLKBUFX8 CLKBUFX6 CLKBUFX4 CLKBUFX3 CLKBUFX20 CLKBUFX2 CLKBUFX16 CLKBUFX12 BUFX8 BUFX6 BUFX4 BUFX3 BUFX20 BUFX2 BUFX16 BUFX12 INVXL INVX8 INVX6 INVX4 INVX3 INVX20 INVX2 INVX16 INVX12 INVX1 CLKINVX8 CLKINVX6 CLKINVX4 CLKINVX3 CLKINVX20 CLKINVX2 CLKINVX16 CLKINVX12 CLKINVX1} -maxAllowedDelay 1
setPlaceMode -fp false
place_design
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
selectObject IO_Pin i2c_arb_lost_i
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
deselectAll
selectObject IO_Pin i2c_arb_lost_i
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
deselectAll
editSplit
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
getCTSMode -engine -quiet
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
editSplit
