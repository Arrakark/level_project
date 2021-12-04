
# Efinity Interface Designer SDC
# Version: 2021.1.165
# Date: 2021-10-14 00:40

# Copyright (C) 2017 - 2021 Efinix Inc. All rights reserved.

# Device: T8F81
# Project: level
# Timing Model: C2 (final)

# PLL Constraints
#################
create_clock -period 20.00 -waveform {10.00 20.00} [get_ports {clk}]

# GPIO Constraints
####################
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {pll_clkin}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {pll_clkin}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {reset_i}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {reset_i}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {error_led_o}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {error_led_o}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led_o[0]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led_o[0]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led_o[1]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led_o[1]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led_o[2]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led_o[2]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led_o[3]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led_o[3]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led_o[4]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led_o[4]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led_o[5]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led_o[5]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led_o[6]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led_o[6]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led_o[7]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led_o[7]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led_o[8]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led_o[8]}]
set_input_delay -clock clk -max 5.958 [get_ports {scl_i}]
set_input_delay -clock clk -min 2.128 [get_ports {scl_i}]
set_output_delay -clock clk -max -3.903 [get_ports {scl_o}]
set_output_delay -clock clk -min -1.615 [get_ports {scl_o}]
set_output_delay -clock clk -max -3.913 [get_ports {scl_oe}]
set_output_delay -clock clk -min -1.612 [get_ports {scl_oe}]
set_input_delay -clock clk -max 5.958 [get_ports {sda_i}]
set_input_delay -clock clk -min 2.128 [get_ports {sda_i}]
set_output_delay -clock clk -max -3.903 [get_ports {sda_o}]
set_output_delay -clock clk -min -1.615 [get_ports {sda_o}]
set_output_delay -clock clk -max -3.913 [get_ports {sda_oe}]
set_output_delay -clock clk -min -1.612 [get_ports {sda_oe}]
