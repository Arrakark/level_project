onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /level_fsm_tb/clk_i
add wave -noupdate /level_fsm_tb/reset_i
add wave -noupdate /level_fsm_tb/i2c_busy_i
add wave -noupdate /level_fsm_tb/i2c_rxak_i
add wave -noupdate /level_fsm_tb/i2c_arb_lost_i
add wave -noupdate /level_fsm_tb/i2c_write_done_i
add wave -noupdate /level_fsm_tb/i2c_data_out_valid_i
add wave -noupdate /level_fsm_tb/i2c_data_out_i
add wave -noupdate /level_fsm_tb/i2c_write_o
add wave -noupdate /level_fsm_tb/i2c_read_o
add wave -noupdate /level_fsm_tb/i2c_slave_addr_o
add wave -noupdate /level_fsm_tb/i2c_din_o
add wave -noupdate /level_fsm_tb/i2c_command_byte_o
add wave -noupdate /level_fsm_tb/i2c_num_bytes_o
add wave -noupdate /level_fsm_tb/error_led_o
add wave -noupdate /level_fsm_tb/led_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 200
configure wave -valuecolwidth 168
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {3550 ps} {9560 ps}
