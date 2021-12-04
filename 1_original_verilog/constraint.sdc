
# PLL Constraints
#################
create_clock -period 20.0 -name clk -waveform {0.000 5.000} [get_ports {clk}]

#set_output_delay -clock clk -max -3.903 [get_ports {scl_oe}]
#set_output_delay -clock clk -min -1.615 [get_ports {scl_oe}]
#set_output_delay -clock clk -min -1.615 [get_ports {sda_oe}]
#set_output_delay -clock clk -max -3.903 [get_ports {sda_oe}]