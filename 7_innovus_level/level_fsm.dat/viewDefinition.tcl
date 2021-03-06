if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name lsMin\
   -timing\
    [list ${::IMEX::libVar}/mmmc/fast_vdd1v0_basicCells.lib]
create_library_set -name lsMax\
   -timing\
    [list ${::IMEX::libVar}/lib/typ/slow_vdd1v0_basicCells.lib]
create_rc_corner -name rcWorst\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -qx_tech_file ${::IMEX::libVar}/mmmc/rcWorst/gpdk045.tch
create_rc_corner -name rcBest\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -qx_tech_file ${::IMEX::libVar}/mmmc/rcWorst/gpdk045.tch
create_delay_corner -name dc_lsMin_rcBest\
   -library_set lsMin\
   -rc_corner rcBest
create_delay_corner -name dc_lsMax_rcWorst\
   -library_set lsMax\
   -rc_corner rcWorst
create_constraint_mode -name cmFunc\
   -sdc_files\
    [list ${::IMEX::libVar}/mmmc/level_fsm_map.sdc]
create_analysis_view -name av_lsMin_rcBest_cmFunc -constraint_mode cmFunc -delay_corner dc_lsMin_rcBest
create_analysis_view -name av_lsMax_rcWorst_cmFunc -constraint_mode cmFunc -delay_corner dc_lsMax_rcWorst
set_analysis_view -setup [list av_lsMax_rcWorst_cmFunc] -hold [list av_lsMin_rcBest_cmFunc]
