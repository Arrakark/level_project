current_design level_fsm
create_clock [get_ports {clk_i}] -name clk -period 10000 -waveform {0 50}
