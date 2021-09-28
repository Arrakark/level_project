
//
// Verific Verilog Description of module level
//

module level (clk, reset_i, sda_oe, sda_o, sda_i, scl_oe, scl_o, 
            scl_i, error_led_o, led_o);
    input clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input reset_i /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    output sda_oe /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output sda_o /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    input sda_i /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    output scl_oe /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output scl_o /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    input scl_i /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    output error_led_o /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [8:0]led_o /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    
    
    wire \level_inst/raw_buffer[0] , \i2c_command_byte[0] , i2c_write, 
        \level_inst/raw_buffer[1] , \level_inst/raw_buffer[2] , \level_inst/raw_buffer[3] , 
        \level_inst/raw_buffer[4] , \level_inst/raw_buffer[5] , \level_inst/raw_buffer[6] , 
        \level_inst/raw_buffer[7] , \i2c_command_byte[4] , \i2c_command_byte[6] , 
        i2c_read, \level_inst/state[3] , \level_inst/state[4] , \level_inst/state[5] , 
        \level_inst/state[6] , \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[0] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data3 , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data2 , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/write_p , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStartS0 , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data4 , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStart1 , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[0] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStop , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStart , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mstaS1 , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mstaS0 , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int_p1 , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int_p1 , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[0] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/mbcr_write0[0] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[0] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[5] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_1 , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_0 , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaOutMaster , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_next_p1 , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_spike_cnt[0] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[4] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_1 , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_wr_data0[0] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[3] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data1 , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/master , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/xfer_complete1 , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/xfer_complete2 , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_0 , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_rd_data0[0] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[0] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStopS0 , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data0 , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/read_p , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data4 , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/data_cnt[0] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data3 , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data2 , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data1 , 
        \i2c_data_out[0] , \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data0 , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[0] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[1] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[10] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaOutSlave , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[9] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[0] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[8] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/wait_uc , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[7] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[6] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[5] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[4] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[0] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[3] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[2] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detect_start_pulse , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[1] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[0] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/uc_wr_data_p1 , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[2] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[1] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_spike_cnt[1] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[0] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[0] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_spike_cnt[1] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/arb_lost , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[2] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[7] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBSR[7] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[6] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbcr_wr1 , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbcr_wr2 , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/rep_start , 
        i2c_busy, \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbbS0 , 
        i2c_arb_lost, i2c_rxak, \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_spike_cnt[0] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/msta , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[1] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[2] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[3] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[1] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[2] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[3] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[4] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[5] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[6] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[7] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[8] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[9] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[10] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[1] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[2] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[3] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[4] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[5] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[6] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[7] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[0] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[1] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[2] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[3] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[1] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[2] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[3] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[4] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[5] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[6] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[7] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[3] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[4] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[5] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[6] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[7] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[1] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[2] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[3] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[4] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[5] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[6] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[7] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[2] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[3] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[1] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[4] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[6] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[7] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[2] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[3] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[4] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[5] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/mbcr_write0[1] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_wr_data0[1] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_rd_data0[1] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[1] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[2] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[3] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[4] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[5] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[6] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[7] , 
        \i2c_data_out[1] , \i2c_data_out[2] , \i2c_data_out[3] , \i2c_data_out[4] , 
        \i2c_data_out[5] , \i2c_data_out[6] , \i2c_data_out[7] , \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_slave_addr0[4] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[1] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[2] , 
        \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[3] , 
        n212, n214, n217, n218, n219, n220, n221, n222, n223, 
        n224, n225, n226, n227, n235, n236, n237, n238, n239, 
        n240, n241, n242, n243, n244, n246, n248, n251, n252, 
        n254, n256, n257, n258, n259, n260, n266, n267, n269, 
        n272, n275, n279, n281, n283, n284, n290, n291, n292, 
        n293, n294, n296, n298, n299, n304, n305, n307, n308, 
        n309, n310, n312, n313, n314, n315, n316, n317, n318, 
        n319, n320, n321, n322, n323, n324, n325, n327, n328, 
        n329, n330, n331, n333, n334, n335, n336, n337, n338, 
        n339, n340, n341, n342, n344, n345, n346, n347, n349, 
        n350, n351, n352, n356, n357, n358, n359, n360, n361, 
        n362, n363, n364, n365, n366, n367, n368, n369, n370, 
        n371, n372, n373, n374, n375, n376, n378, n379, n380, 
        n381, n382, n390, n391, n392, n393, n394, n402, n403, 
        n404, n405, n406, n407, n408, n409, n410, n411, n412, 
        n413, n414, n415, n416, n417, n418, n419, n420, n421, 
        n422, n423, n424, n425, n426, n427, n428, \clk~O , n440, 
        n441, n442, n443, n444, n445, n446, n447, n448, n449, 
        n450, n451, n452, n453, n454, n455, n456, n457, n458, 
        n459, n460, n461, n462, n463, n464, n465, n466, n467, 
        n468, n469, n470, n471, n472, n473, n474, n475, n476, 
        n477, n478, n479, n480, n481, n482, n483, n484, n485, 
        n486, n487, n488, n489, n490, n491, n492, n493, n494, 
        n495, n496, n497, n498, n499, n500, n501, n502, n503, 
        n504, n505, n506, n507, n508, n509, n510, n511, n512, 
        n513, n514, n515, n516, n517, n518, n519, n520, n521, 
        n522, n523, n524, n525, n526, n527, n528, n529, n530, 
        n531, n532, n533, n534, n535, n536, n537, n538, n539, 
        n540, n541, n542, n543, n544, n545, n546, n547, n548, 
        n549, n550, n551, n552, n553, n554, n555, n556, n557, 
        n558, n559, n560, n561, n562, n563, n564, n565, n566, 
        n567, n568, n569, n570, n571, n572, n573, n574, n575, 
        n576, n577, n578, n579, n580, n581, n582, n583, n584, 
        n585, n586, n587, n588, n589, n590, n591, n592, n593, 
        n594, n595, n596, n597, n598, n599, n600, n601, n602, 
        n603, n604, n605, n606, n607, n608, n609, n610, n611, 
        n612, n613, n614, n615, n616, n617, n618, n619, n620, 
        n621, n622, n623, n624, n625, n626, n627, n628, n629, 
        n630, n631, n632, n633, n634, n635, n636, n637, n638, 
        n639;
    
    EFX_LUT4 LUT__636 (.I0(\level_inst/raw_buffer[2] ), .I1(\level_inst/raw_buffer[1] ), 
            .I2(n440), .I3(\level_inst/raw_buffer[7] ), .O(n212)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h008f */ ;
    defparam LUT__636.LUTMASK = 16'h008f;
    EFX_FF \level_inst/led_o[0]~FF  (.D(n212), .CE(n214), .CLK(\clk~O ), 
           .SR(reset_i), .Q(led_o[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/led_o[0]~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/led_o[0]~FF .CE_POLARITY = 1'b0;
    defparam \level_inst/led_o[0]~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/led_o[0]~FF .D_POLARITY = 1'b1;
    defparam \level_inst/led_o[0]~FF .SR_SYNC = 1'b1;
    defparam \level_inst/led_o[0]~FF .SR_VALUE = 1'b0;
    defparam \level_inst/led_o[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \level_inst/raw_buffer[0]~FF  (.D(\i2c_data_out[0] ), .CE(n217), 
           .CLK(\clk~O ), .SR(reset_i), .Q(\level_inst/raw_buffer[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/raw_buffer[0]~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/raw_buffer[0]~FF .CE_POLARITY = 1'b1;
    defparam \level_inst/raw_buffer[0]~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/raw_buffer[0]~FF .D_POLARITY = 1'b1;
    defparam \level_inst/raw_buffer[0]~FF .SR_SYNC = 1'b1;
    defparam \level_inst/raw_buffer[0]~FF .SR_VALUE = 1'b0;
    defparam \level_inst/raw_buffer[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \level_inst/i2c_command_byte[0]~FF  (.D(n218), .CE(1'b1), .CLK(\clk~O ), 
           .SR(reset_i), .Q(\i2c_command_byte[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/i2c_command_byte[0]~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/i2c_command_byte[0]~FF .CE_POLARITY = 1'b1;
    defparam \level_inst/i2c_command_byte[0]~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/i2c_command_byte[0]~FF .D_POLARITY = 1'b1;
    defparam \level_inst/i2c_command_byte[0]~FF .SR_SYNC = 1'b1;
    defparam \level_inst/i2c_command_byte[0]~FF .SR_VALUE = 1'b0;
    defparam \level_inst/i2c_command_byte[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \level_inst/i2c_write~FF  (.D(n219), .CE(1'b1), .CLK(\clk~O ), 
           .SR(reset_i), .Q(i2c_write)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/i2c_write~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/i2c_write~FF .CE_POLARITY = 1'b1;
    defparam \level_inst/i2c_write~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/i2c_write~FF .D_POLARITY = 1'b0;
    defparam \level_inst/i2c_write~FF .SR_SYNC = 1'b1;
    defparam \level_inst/i2c_write~FF .SR_VALUE = 1'b0;
    defparam \level_inst/i2c_write~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \level_inst/led_o[1]~FF  (.D(n220), .CE(n214), .CLK(\clk~O ), 
           .SR(reset_i), .Q(led_o[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/led_o[1]~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/led_o[1]~FF .CE_POLARITY = 1'b0;
    defparam \level_inst/led_o[1]~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/led_o[1]~FF .D_POLARITY = 1'b1;
    defparam \level_inst/led_o[1]~FF .SR_SYNC = 1'b1;
    defparam \level_inst/led_o[1]~FF .SR_VALUE = 1'b0;
    defparam \level_inst/led_o[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \level_inst/led_o[2]~FF  (.D(n221), .CE(n214), .CLK(\clk~O ), 
           .SR(reset_i), .Q(led_o[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/led_o[2]~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/led_o[2]~FF .CE_POLARITY = 1'b0;
    defparam \level_inst/led_o[2]~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/led_o[2]~FF .D_POLARITY = 1'b1;
    defparam \level_inst/led_o[2]~FF .SR_SYNC = 1'b1;
    defparam \level_inst/led_o[2]~FF .SR_VALUE = 1'b0;
    defparam \level_inst/led_o[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \level_inst/led_o[3]~FF  (.D(n222), .CE(n214), .CLK(\clk~O ), 
           .SR(reset_i), .Q(led_o[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/led_o[3]~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/led_o[3]~FF .CE_POLARITY = 1'b0;
    defparam \level_inst/led_o[3]~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/led_o[3]~FF .D_POLARITY = 1'b1;
    defparam \level_inst/led_o[3]~FF .SR_SYNC = 1'b1;
    defparam \level_inst/led_o[3]~FF .SR_VALUE = 1'b0;
    defparam \level_inst/led_o[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \level_inst/led_o[4]~FF  (.D(n223), .CE(n214), .CLK(\clk~O ), 
           .SR(reset_i), .Q(led_o[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/led_o[4]~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/led_o[4]~FF .CE_POLARITY = 1'b0;
    defparam \level_inst/led_o[4]~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/led_o[4]~FF .D_POLARITY = 1'b1;
    defparam \level_inst/led_o[4]~FF .SR_SYNC = 1'b1;
    defparam \level_inst/led_o[4]~FF .SR_VALUE = 1'b0;
    defparam \level_inst/led_o[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \level_inst/led_o[5]~FF  (.D(n224), .CE(n214), .CLK(\clk~O ), 
           .SR(reset_i), .Q(led_o[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/led_o[5]~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/led_o[5]~FF .CE_POLARITY = 1'b0;
    defparam \level_inst/led_o[5]~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/led_o[5]~FF .D_POLARITY = 1'b1;
    defparam \level_inst/led_o[5]~FF .SR_SYNC = 1'b1;
    defparam \level_inst/led_o[5]~FF .SR_VALUE = 1'b0;
    defparam \level_inst/led_o[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \level_inst/led_o[6]~FF  (.D(n225), .CE(n214), .CLK(\clk~O ), 
           .SR(reset_i), .Q(led_o[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/led_o[6]~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/led_o[6]~FF .CE_POLARITY = 1'b0;
    defparam \level_inst/led_o[6]~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/led_o[6]~FF .D_POLARITY = 1'b1;
    defparam \level_inst/led_o[6]~FF .SR_SYNC = 1'b1;
    defparam \level_inst/led_o[6]~FF .SR_VALUE = 1'b0;
    defparam \level_inst/led_o[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \level_inst/led_o[7]~FF  (.D(n226), .CE(n214), .CLK(\clk~O ), 
           .SR(reset_i), .Q(led_o[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/led_o[7]~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/led_o[7]~FF .CE_POLARITY = 1'b0;
    defparam \level_inst/led_o[7]~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/led_o[7]~FF .D_POLARITY = 1'b1;
    defparam \level_inst/led_o[7]~FF .SR_SYNC = 1'b1;
    defparam \level_inst/led_o[7]~FF .SR_VALUE = 1'b0;
    defparam \level_inst/led_o[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \level_inst/led_o[8]~FF  (.D(n227), .CE(n214), .CLK(\clk~O ), 
           .SR(reset_i), .Q(led_o[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/led_o[8]~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/led_o[8]~FF .CE_POLARITY = 1'b0;
    defparam \level_inst/led_o[8]~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/led_o[8]~FF .D_POLARITY = 1'b1;
    defparam \level_inst/led_o[8]~FF .SR_SYNC = 1'b1;
    defparam \level_inst/led_o[8]~FF .SR_VALUE = 1'b0;
    defparam \level_inst/led_o[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \level_inst/raw_buffer[1]~FF  (.D(\i2c_data_out[1] ), .CE(n217), 
           .CLK(\clk~O ), .SR(reset_i), .Q(\level_inst/raw_buffer[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/raw_buffer[1]~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/raw_buffer[1]~FF .CE_POLARITY = 1'b1;
    defparam \level_inst/raw_buffer[1]~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/raw_buffer[1]~FF .D_POLARITY = 1'b1;
    defparam \level_inst/raw_buffer[1]~FF .SR_SYNC = 1'b1;
    defparam \level_inst/raw_buffer[1]~FF .SR_VALUE = 1'b0;
    defparam \level_inst/raw_buffer[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \level_inst/raw_buffer[2]~FF  (.D(\i2c_data_out[2] ), .CE(n217), 
           .CLK(\clk~O ), .SR(reset_i), .Q(\level_inst/raw_buffer[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/raw_buffer[2]~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/raw_buffer[2]~FF .CE_POLARITY = 1'b1;
    defparam \level_inst/raw_buffer[2]~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/raw_buffer[2]~FF .D_POLARITY = 1'b1;
    defparam \level_inst/raw_buffer[2]~FF .SR_SYNC = 1'b1;
    defparam \level_inst/raw_buffer[2]~FF .SR_VALUE = 1'b0;
    defparam \level_inst/raw_buffer[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \level_inst/raw_buffer[3]~FF  (.D(\i2c_data_out[3] ), .CE(n217), 
           .CLK(\clk~O ), .SR(reset_i), .Q(\level_inst/raw_buffer[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/raw_buffer[3]~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/raw_buffer[3]~FF .CE_POLARITY = 1'b1;
    defparam \level_inst/raw_buffer[3]~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/raw_buffer[3]~FF .D_POLARITY = 1'b1;
    defparam \level_inst/raw_buffer[3]~FF .SR_SYNC = 1'b1;
    defparam \level_inst/raw_buffer[3]~FF .SR_VALUE = 1'b0;
    defparam \level_inst/raw_buffer[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \level_inst/raw_buffer[4]~FF  (.D(\i2c_data_out[4] ), .CE(n217), 
           .CLK(\clk~O ), .SR(reset_i), .Q(\level_inst/raw_buffer[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/raw_buffer[4]~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/raw_buffer[4]~FF .CE_POLARITY = 1'b1;
    defparam \level_inst/raw_buffer[4]~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/raw_buffer[4]~FF .D_POLARITY = 1'b1;
    defparam \level_inst/raw_buffer[4]~FF .SR_SYNC = 1'b1;
    defparam \level_inst/raw_buffer[4]~FF .SR_VALUE = 1'b0;
    defparam \level_inst/raw_buffer[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \level_inst/raw_buffer[5]~FF  (.D(\i2c_data_out[5] ), .CE(n217), 
           .CLK(\clk~O ), .SR(reset_i), .Q(\level_inst/raw_buffer[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/raw_buffer[5]~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/raw_buffer[5]~FF .CE_POLARITY = 1'b1;
    defparam \level_inst/raw_buffer[5]~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/raw_buffer[5]~FF .D_POLARITY = 1'b1;
    defparam \level_inst/raw_buffer[5]~FF .SR_SYNC = 1'b1;
    defparam \level_inst/raw_buffer[5]~FF .SR_VALUE = 1'b0;
    defparam \level_inst/raw_buffer[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \level_inst/raw_buffer[6]~FF  (.D(\i2c_data_out[6] ), .CE(n217), 
           .CLK(\clk~O ), .SR(reset_i), .Q(\level_inst/raw_buffer[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/raw_buffer[6]~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/raw_buffer[6]~FF .CE_POLARITY = 1'b1;
    defparam \level_inst/raw_buffer[6]~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/raw_buffer[6]~FF .D_POLARITY = 1'b1;
    defparam \level_inst/raw_buffer[6]~FF .SR_SYNC = 1'b1;
    defparam \level_inst/raw_buffer[6]~FF .SR_VALUE = 1'b0;
    defparam \level_inst/raw_buffer[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \level_inst/raw_buffer[7]~FF  (.D(\i2c_data_out[7] ), .CE(n217), 
           .CLK(\clk~O ), .SR(reset_i), .Q(\level_inst/raw_buffer[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/raw_buffer[7]~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/raw_buffer[7]~FF .CE_POLARITY = 1'b1;
    defparam \level_inst/raw_buffer[7]~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/raw_buffer[7]~FF .D_POLARITY = 1'b1;
    defparam \level_inst/raw_buffer[7]~FF .SR_SYNC = 1'b1;
    defparam \level_inst/raw_buffer[7]~FF .SR_VALUE = 1'b0;
    defparam \level_inst/raw_buffer[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \level_inst/i2c_command_byte[4]~FF  (.D(n235), .CE(1'b1), .CLK(\clk~O ), 
           .SR(reset_i), .Q(\i2c_command_byte[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/i2c_command_byte[4]~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/i2c_command_byte[4]~FF .CE_POLARITY = 1'b1;
    defparam \level_inst/i2c_command_byte[4]~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/i2c_command_byte[4]~FF .D_POLARITY = 1'b1;
    defparam \level_inst/i2c_command_byte[4]~FF .SR_SYNC = 1'b1;
    defparam \level_inst/i2c_command_byte[4]~FF .SR_VALUE = 1'b0;
    defparam \level_inst/i2c_command_byte[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \level_inst/i2c_command_byte[6]~FF  (.D(n236), .CE(1'b1), .CLK(\clk~O ), 
           .SR(reset_i), .Q(\i2c_command_byte[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/i2c_command_byte[6]~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/i2c_command_byte[6]~FF .CE_POLARITY = 1'b1;
    defparam \level_inst/i2c_command_byte[6]~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/i2c_command_byte[6]~FF .D_POLARITY = 1'b1;
    defparam \level_inst/i2c_command_byte[6]~FF .SR_SYNC = 1'b1;
    defparam \level_inst/i2c_command_byte[6]~FF .SR_VALUE = 1'b0;
    defparam \level_inst/i2c_command_byte[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \level_inst/i2c_read~FF  (.D(n237), .CE(1'b1), .CLK(\clk~O ), 
           .SR(reset_i), .Q(i2c_read)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/i2c_read~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/i2c_read~FF .CE_POLARITY = 1'b1;
    defparam \level_inst/i2c_read~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/i2c_read~FF .D_POLARITY = 1'b0;
    defparam \level_inst/i2c_read~FF .SR_SYNC = 1'b1;
    defparam \level_inst/i2c_read~FF .SR_VALUE = 1'b0;
    defparam \level_inst/i2c_read~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \level_inst/error_led_o~FF  (.D(n238), .CE(1'b1), .CLK(\clk~O ), 
           .SR(reset_i), .Q(error_led_o)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/error_led_o~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/error_led_o~FF .CE_POLARITY = 1'b1;
    defparam \level_inst/error_led_o~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/error_led_o~FF .D_POLARITY = 1'b1;
    defparam \level_inst/error_led_o~FF .SR_SYNC = 1'b1;
    defparam \level_inst/error_led_o~FF .SR_VALUE = 1'b0;
    defparam \level_inst/error_led_o~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \level_inst/state[3]~FF  (.D(n239), .CE(1'b1), .CLK(\clk~O ), 
           .SR(reset_i), .Q(\level_inst/state[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/state[3]~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/state[3]~FF .CE_POLARITY = 1'b1;
    defparam \level_inst/state[3]~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/state[3]~FF .D_POLARITY = 1'b1;
    defparam \level_inst/state[3]~FF .SR_SYNC = 1'b1;
    defparam \level_inst/state[3]~FF .SR_VALUE = 1'b0;
    defparam \level_inst/state[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \level_inst/state[4]~FF  (.D(n240), .CE(1'b1), .CLK(\clk~O ), 
           .SR(reset_i), .Q(\level_inst/state[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/state[4]~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/state[4]~FF .CE_POLARITY = 1'b1;
    defparam \level_inst/state[4]~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/state[4]~FF .D_POLARITY = 1'b1;
    defparam \level_inst/state[4]~FF .SR_SYNC = 1'b1;
    defparam \level_inst/state[4]~FF .SR_VALUE = 1'b0;
    defparam \level_inst/state[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \level_inst/state[5]~FF  (.D(n241), .CE(1'b1), .CLK(\clk~O ), 
           .SR(reset_i), .Q(\level_inst/state[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/state[5]~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/state[5]~FF .CE_POLARITY = 1'b1;
    defparam \level_inst/state[5]~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/state[5]~FF .D_POLARITY = 1'b1;
    defparam \level_inst/state[5]~FF .SR_SYNC = 1'b1;
    defparam \level_inst/state[5]~FF .SR_VALUE = 1'b0;
    defparam \level_inst/state[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \level_inst/state[6]~FF  (.D(n242), .CE(1'b1), .CLK(\clk~O ), 
           .SR(reset_i), .Q(\level_inst/state[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/level_fsm.sv(165)
    defparam \level_inst/state[6]~FF .CLK_POLARITY = 1'b1;
    defparam \level_inst/state[6]~FF .CE_POLARITY = 1'b1;
    defparam \level_inst/state[6]~FF .SR_POLARITY = 1'b0;
    defparam \level_inst/state[6]~FF .D_POLARITY = 1'b1;
    defparam \level_inst/state[6]~FF .SR_SYNC = 1'b1;
    defparam \level_inst/state[6]~FF .SR_VALUE = 1'b0;
    defparam \level_inst/state[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0]~FF  (.D(n243), 
           .CE(1'b1), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(482)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[0]~FF  (.D(n244), 
           .CE(n406), .CLK(\clk~O ), .SR(n246), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(610)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[0]~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[0]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[0]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[0]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[0]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data3~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data2 ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data3 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(2655)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data3~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data3~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data3~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data3~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data3~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data3~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data3~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_o~FF  (.D(n248), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(scl_o)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1412)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_o~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_o~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_o~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_o~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_o~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_o~FF .SR_VALUE = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_o~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data2~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data1 ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(2655)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data2~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data2~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data2~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data2~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data2~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data2~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/write_p~FF  (.D(n251), 
           .CE(1'b1), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/write_p )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(2663)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/write_p~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/write_p~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/write_p~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/write_p~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/write_p~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/write_p~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/write_p~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStartS0~FF  (.D(n252), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStartS0 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1334)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStartS0~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStartS0~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStartS0~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStartS0~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStartS0~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStartS0~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStartS0~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data4~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data3 ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(2655)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data4~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data4~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data4~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data4~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data4~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data4~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data4~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_o~FF  (.D(n254), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(sda_o)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1406)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_o~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_o~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_o~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_o~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_o~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_o~FF .SR_VALUE = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_o~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStart1~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStart ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStart1 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1323)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStart1~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStart1~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStart1~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStart1~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStart1~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStart1~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStart1~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[0]~FF  (.D(n256), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1552)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[0]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[0]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[0]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[0]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[0]~FF .SR_VALUE = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStop~FF  (.D(n257), 
           .CE(n258), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStop )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1346)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStop~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStop~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStop~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStop~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStop~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStop~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStop~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStart~FF  (.D(n259), 
           .CE(n260), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStart )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1317)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStart~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStart~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStart~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStart~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStart~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStart~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStart~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mstaS1~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mstaS0 ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mstaS1 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1303)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mstaS1~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mstaS1~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mstaS1~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mstaS1~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mstaS1~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mstaS1~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mstaS1~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mstaS0~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/msta ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mstaS0 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1297)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mstaS0~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mstaS0~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mstaS0~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mstaS0~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mstaS0~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mstaS0~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mstaS0~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int_p1~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int_p1 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1281)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int_p1~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int_p1~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int_p1~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int_p1~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int_p1~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int_p1~FF .SR_VALUE = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int_p1~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int_p1~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int_p1 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1281)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int_p1~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int_p1~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int_p1~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int_p1~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int_p1~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int_p1~FF .SR_VALUE = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int_p1~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[0]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[0] ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n266), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1400)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[0]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[0]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[0]~FF .D_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[0]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[0]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/mbcr_write0[0]~FF  (.D(n267), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[3] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/mbcr_write0[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(703)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/mbcr_write0[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/mbcr_write0[0]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/mbcr_write0[0]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/mbcr_write0[0]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/mbcr_write0[0]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/mbcr_write0[0]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/mbcr_write0[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[0]~FF  (.D(n269), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1376)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[0]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[0]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[0]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[0]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[0]~FF .SR_VALUE = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_1 ), 
           .CE(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_spike_cnt[1] ), 
           .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1266)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int~FF .SR_VALUE = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[5]~FF  (.D(n272), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1376)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[5]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[5]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[5]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[5]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[5]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[5]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_1~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_0 ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_1 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1238)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_1~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_1~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_1~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_1~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_1~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_1~FF .SR_VALUE = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_1~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_0~FF  (.D(scl_i), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_0 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1238)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_0~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_0~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_0~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_0~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_0~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_0~FF .SR_VALUE = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_0~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaOutMaster~FF  (.D(n275), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaOutMaster )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1391)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaOutMaster~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaOutMaster~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaOutMaster~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaOutMaster~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaOutMaster~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaOutMaster~FF .SR_VALUE = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaOutMaster~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_next_p1~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_1 ), 
           .CE(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_spike_cnt[1] ), 
           .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_next_p1 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1222)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_next_p1~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_next_p1~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_next_p1~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_next_p1~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_next_p1~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_next_p1~FF .SR_VALUE = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_next_p1~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_spike_cnt[0]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_spike_cnt[0] ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n279), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_spike_cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1255)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_spike_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_spike_cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_spike_cnt[0]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_spike_cnt[0]~FF .D_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_spike_cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_spike_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_spike_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_next_p1 ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1213)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int~FF .SR_VALUE = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[4]~FF  (.D(n281), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1376)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[4]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[4]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[4]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[4]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[4]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[4]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_1~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_0 ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_1 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1185)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_1~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_1~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_1~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_1~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_1~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_1~FF .SR_VALUE = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_1~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_wr_data0[0]~FF  (.D(n283), 
           .CE(1'b1), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_wr_data0[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(756)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_wr_data0[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_wr_data0[0]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_wr_data0[0]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_wr_data0[0]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_wr_data0[0]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_wr_data0[0]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_wr_data0[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[3]~FF  (.D(n284), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1376)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[3]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[3]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[3]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[3]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[3]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[3]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data1~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data0 ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data1 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(2655)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data1~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data1~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data1~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data1~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data1~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data1~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data1~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/master~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/msta ), 
           .CE(i2c_busy), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/master )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1367)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/master~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/master~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/master~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/master~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/master~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/master~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/master~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/xfer_complete1~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBSR[7] ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/xfer_complete1 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(741)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/xfer_complete1~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/xfer_complete1~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/xfer_complete1~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/xfer_complete1~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/xfer_complete1~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/xfer_complete1~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/xfer_complete1~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/xfer_complete2~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/xfer_complete1 ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/xfer_complete2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(741)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/xfer_complete2~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/xfer_complete2~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/xfer_complete2~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/xfer_complete2~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/xfer_complete2~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/xfer_complete2~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/xfer_complete2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_0~FF  (.D(sda_i), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_0 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1185)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_0~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_0~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_0~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_0~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_0~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_0~FF .SR_VALUE = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_0~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_rd_data0[0]~FF  (.D(n290), 
           .CE(1'b1), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_rd_data0[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(767)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_rd_data0[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_rd_data0[0]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_rd_data0[0]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_rd_data0[0]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_rd_data0[0]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_rd_data0[0]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_rd_data0[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[0]~FF  (.D(n291), 
           .CE(n292), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(786)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[0]~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[0]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[0]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStopS0~FF  (.D(n293), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStopS0 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1358)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStopS0~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStopS0~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStopS0~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStopS0~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStopS0~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStopS0~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStopS0~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data0~FF  (.D(1'b0), 
           .CE(n294), .CLK(\clk~O ), .SR(i2c_read), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data0 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(2637)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data0~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data0~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data0~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data0~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data0~FF .SR_SYNC = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data0~FF .SR_VALUE = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data0~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/read_p~FF  (.D(n296), 
           .CE(1'b1), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/read_p )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(2663)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/read_p~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/read_p~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/read_p~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/read_p~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/read_p~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/read_p~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/read_p~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data4~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data3 ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(2655)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data4~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data4~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data4~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data4~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data4~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data4~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data4~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/data_cnt[0]~FF  (.D(n298), 
           .CE(n299), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/data_cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(800)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/data_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/data_cnt[0]~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/data_cnt[0]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/data_cnt[0]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/data_cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/data_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/data_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data3~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data2 ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data3 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(2655)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data3~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data3~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data3~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data3~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data3~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data3~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data3~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data2~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data1 ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(2655)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data2~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data2~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data2~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data2~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data2~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data2~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data1~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data0 ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data1 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(2655)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data1~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data1~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data1~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data1~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data1~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data1~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data1~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[0]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[0] ), 
           .CE(n304), .CLK(\clk~O ), .SR(reset_i), .Q(\i2c_data_out[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(810)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[0]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[0]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[0]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[0]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[0]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data0~FF  (.D(1'b0), 
           .CE(n305), .CLK(\clk~O ), .SR(i2c_write), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data0 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(2637)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data0~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data0~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data0~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data0~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data0~FF .SR_SYNC = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data0~FF .SR_VALUE = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data0~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[0]~FF  (.D(reset_i), 
           .CE(1'b1), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(861)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[0]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[0]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[0]~FF .D_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[0]~FF .SR_SYNC = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[0]~FF .SR_VALUE = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[1]~FF  (.D(n307), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1376)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[1]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[1]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[1]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[1]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[1]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[10]~FF  (.D(n308), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n266), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1400)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[10]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[10]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[10]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[10]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[10]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[10]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaOutSlave~FF  (.D(n309), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaOutSlave )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1563)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaOutSlave~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaOutSlave~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaOutSlave~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaOutSlave~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaOutSlave~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaOutSlave~FF .SR_VALUE = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaOutSlave~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[9]~FF  (.D(n310), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n266), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1400)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[9]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[9]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[9]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[9]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[9]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[9]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[0]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[0] ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n312), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1571)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[0]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[0]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[0]~FF .D_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[0]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[0]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[8]~FF  (.D(n313), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n266), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1400)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[8]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[8]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[8]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[8]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[8]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[8]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/wait_uc~FF  (.D(n314), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/wait_uc )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1663)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/wait_uc~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/wait_uc~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/wait_uc~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/wait_uc~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/wait_uc~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/wait_uc~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/wait_uc~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[7]~FF  (.D(n315), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n266), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1400)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[7]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[7]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[7]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[7]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[7]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[7]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[6]~FF  (.D(n316), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n266), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1400)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[6]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[6]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[6]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[6]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[6]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[6]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[5]~FF  (.D(n317), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n266), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1400)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[5]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[5]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[5]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[5]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[5]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[5]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[4]~FF  (.D(n318), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n266), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1400)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[4]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[4]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[4]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[4]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[4]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[4]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[0]~FF  (.D(n319), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n320), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1672)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[0]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[0]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[0]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[0]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[0]~FF .SR_VALUE = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[3]~FF  (.D(n321), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n266), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1400)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[3]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[3]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[3]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[3]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[3]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[3]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[2]~FF  (.D(n322), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n266), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1400)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[2]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[2]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[2]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[2]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[2]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[2]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detect_start_pulse~FF  (.D(n252), 
           .CE(n323), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detect_start_pulse )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1685)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detect_start_pulse~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detect_start_pulse~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detect_start_pulse~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detect_start_pulse~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detect_start_pulse~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detect_start_pulse~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detect_start_pulse~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[1]~FF  (.D(n324), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n266), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1400)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[1]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[1]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[1]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[1]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[1]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[1]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[0]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int ), 
           .CE(n325), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1855)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[0]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[0]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[0]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[0]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[0]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/uc_wr_data_p1~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_wr_data0[1] ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/uc_wr_data_p1 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1872)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/uc_wr_data_p1~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/uc_wr_data_p1~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/uc_wr_data_p1~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/uc_wr_data_p1~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/uc_wr_data_p1~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/uc_wr_data_p1~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/uc_wr_data_p1~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[2]~FF  (.D(n327), 
           .CE(n328), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1881)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[2]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[2]~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[2]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[2]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[2]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[2]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[1]~FF  (.D(n329), 
           .CE(n328), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1881)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[1]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[1]~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[1]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[1]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[1]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[1]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_spike_cnt[1]~FF  (.D(n330), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n279), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_spike_cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1255)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_spike_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_spike_cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_spike_cnt[1]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_spike_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_spike_cnt[1]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_spike_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_spike_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[0]~FF  (.D(n331), 
           .CE(n328), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1881)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[0]~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[0]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[0]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[0]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[0]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[0]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[0] ), 
           .CE(n333), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1890)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[0]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[0]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[0]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[0]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[0]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_spike_cnt[1]~FF  (.D(n334), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n335), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_spike_cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1202)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_spike_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_spike_cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_spike_cnt[1]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_spike_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_spike_cnt[1]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_spike_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_spike_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/arb_lost~FF  (.D(n336), 
           .CE(n337), .CLK(\clk~O ), .SR(n338), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/arb_lost )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1915)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/arb_lost~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/arb_lost~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/arb_lost~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/arb_lost~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/arb_lost~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/arb_lost~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/arb_lost~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[2]~FF  (.D(n339), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1376)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[2]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[2]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[2]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[2]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[2]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[2]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[7]~FF  (.D(n340), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1376)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[7]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[7]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[7]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[7]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[7]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[7]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBSR[7]~FF  (.D(n341), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBSR[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1942)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBSR[7]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBSR[7]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBSR[7]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBSR[7]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBSR[7]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBSR[7]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBSR[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[6]~FF  (.D(n342), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1376)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[6]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[6]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[6]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[6]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[6]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[6]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbcr_wr1~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/mbcr_write0[1] ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbcr_wr1 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1969)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbcr_wr1~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbcr_wr1~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbcr_wr1~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbcr_wr1~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbcr_wr1~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbcr_wr1~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbcr_wr1~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbcr_wr2~FF  (.D(n344), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbcr_wr2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1969)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbcr_wr2~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbcr_wr2~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbcr_wr2~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbcr_wr2~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbcr_wr2~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbcr_wr2~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbcr_wr2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/rep_start~FF  (.D(n345), 
           .CE(n346), .CLK(\clk~O ), .SR(n347), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/rep_start )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1988)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/rep_start~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/rep_start~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/rep_start~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/rep_start~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/rep_start~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/rep_start~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/rep_start~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_busy~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStartS0 ), 
           .CE(n349), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(i2c_busy)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(2001)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_busy~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_busy~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_busy~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_busy~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_busy~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_busy~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_busy~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbbS0~FF  (.D(i2c_busy), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbbS0 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(2008)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbbS0~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbbS0~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbbS0~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbbS0~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbbS0~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbbS0~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbbS0~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_arb_lost~FF  (.D(1'b1), 
           .CE(n350), .CLK(\clk~O ), .SR(n351), .Q(i2c_arb_lost)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(2032)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_arb_lost~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_arb_lost~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_arb_lost~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_arb_lost~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_arb_lost~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_arb_lost~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_arb_lost~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_rxak~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int ), 
           .CE(n352), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(i2c_rxak)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(2083)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_rxak~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_rxak~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_rxak~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_rxak~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_rxak~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_rxak~FF .SR_VALUE = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_rxak~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_spike_cnt[0]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_spike_cnt[0] ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n335), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_spike_cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1202)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_spike_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_spike_cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_spike_cnt[0]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_spike_cnt[0]~FF .D_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_spike_cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_spike_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_spike_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/msta~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[5] ), 
           .CE(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbcr_wr1 ), 
           .CLK(\clk~O ), .SR(n356), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/msta )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1162)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/msta~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/msta~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/msta~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/msta~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/msta~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/msta~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/msta~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[1]~FF  (.D(n357), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1552)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[1]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[1]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[1]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[1]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[1]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[2]~FF  (.D(n358), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1552)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[2]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[2]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[2]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[2]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[2]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[2]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[3]~FF  (.D(n359), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1552)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[3]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[3]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[3]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[3]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[3]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[3]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[1]~FF  (.D(n360), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n312), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1571)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[1]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[1]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[1]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[1]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[1]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[1]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[2]~FF  (.D(n361), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n312), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1571)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[2]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[2]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[2]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[2]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[2]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[2]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[3]~FF  (.D(n362), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n312), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1571)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[3]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[3]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[3]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[3]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[3]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[3]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[4]~FF  (.D(n363), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n312), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1571)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[4]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[4]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[4]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[4]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[4]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[4]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[5]~FF  (.D(n364), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n312), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1571)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[5]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[5]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[5]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[5]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[5]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[5]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[6]~FF  (.D(n365), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n312), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1571)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[6]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[6]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[6]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[6]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[6]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[6]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[7]~FF  (.D(n366), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n312), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1571)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[7]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[7]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[7]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[7]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[7]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[7]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[8]~FF  (.D(n367), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n312), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1571)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[8]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[8]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[8]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[8]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[8]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[8]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[9]~FF  (.D(n368), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n312), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1571)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[9]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[9]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[9]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[9]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[9]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[9]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[10]~FF  (.D(n369), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n312), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1571)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[10]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[10]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[10]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[10]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[10]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[10]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[1]~FF  (.D(n370), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n320), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1672)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[1]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[1]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[1]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[1]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[1]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[2]~FF  (.D(n371), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n320), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1672)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[2]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[2]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[2]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[2]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[2]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[2]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[3]~FF  (.D(n372), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n320), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1672)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[3]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[3]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[3]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[3]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[3]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[3]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[4]~FF  (.D(n373), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n320), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1672)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[4]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[4]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[4]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[4]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[4]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[4]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[5]~FF  (.D(n374), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n320), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1672)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[5]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[5]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[5]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[5]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[5]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[5]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[6]~FF  (.D(n375), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n320), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1672)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[6]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[6]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[6]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[6]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[6]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[6]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[7]~FF  (.D(n376), 
           .CE(1'b1), .CLK(\clk~O ), .SR(n320), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1672)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[7]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[7]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[7]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[7]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[7]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[7]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[0]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[0] ), 
           .CE(n378), .CLK(\clk~O ), .SR(n379), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1694)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[0]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[0]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[0]~FF .D_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[0]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[0]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[1]~FF  (.D(n380), 
           .CE(n378), .CLK(\clk~O ), .SR(n379), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1694)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[1]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[1]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[1]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[1]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[1]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[1]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[2]~FF  (.D(n381), 
           .CE(n378), .CLK(\clk~O ), .SR(n379), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1694)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[2]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[2]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[2]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[2]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[2]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[2]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[3]~FF  (.D(n382), 
           .CE(n378), .CLK(\clk~O ), .SR(n379), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1694)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[3]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[3]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[3]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[3]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[3]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[3]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[1]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[0] ), 
           .CE(n325), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1855)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[1]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[1]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[1]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[1]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[1]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[1]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[2]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[1] ), 
           .CE(n325), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1855)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[2]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[2]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[2]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[2]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[2]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[2]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[3]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[2] ), 
           .CE(n325), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1855)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[3]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[3]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[3]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[3]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[3]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[3]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[4]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[3] ), 
           .CE(n325), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1855)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[4]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[4]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[4]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[4]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[4]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[4]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[5]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[4] ), 
           .CE(n325), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1855)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[5]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[5]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[5]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[5]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[5]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[5]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[6]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[5] ), 
           .CE(n325), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1855)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[6]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[6]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[6]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[6]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[6]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[6]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[7]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[6] ), 
           .CE(n325), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1855)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[7]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[7]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[7]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[7]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[7]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[7]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[3]~FF  (.D(n390), 
           .CE(n328), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1881)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[3]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[3]~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[3]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[3]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[3]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[3]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[4]~FF  (.D(n391), 
           .CE(n328), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1881)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[4]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[4]~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[4]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[4]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[4]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[4]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[5]~FF  (.D(n392), 
           .CE(n328), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1881)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[5]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[5]~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[5]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[5]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[5]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[5]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[6]~FF  (.D(n393), 
           .CE(n328), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1881)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[6]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[6]~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[6]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[6]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[6]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[6]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[7]~FF  (.D(n394), 
           .CE(n328), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1881)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[7]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[7]~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[7]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[7]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[7]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[7]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[1]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[1] ), 
           .CE(n333), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1890)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[1]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[1]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[1]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[1]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[1]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[1]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[2]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[2] ), 
           .CE(n333), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1890)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[2]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[2]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[2]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[2]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[2]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[2]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[3]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[3] ), 
           .CE(n333), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1890)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[3]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[3]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[3]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[3]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[3]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[3]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[4]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[4] ), 
           .CE(n333), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1890)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[4]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[4]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[4]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[4]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[4]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[4]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[5]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[5] ), 
           .CE(n333), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1890)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[5]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[5]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[5]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[5]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[5]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[5]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[6]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[6] ), 
           .CE(n333), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1890)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[6]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[6]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[6]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[6]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[6]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[6]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[7]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[7] ), 
           .CE(n333), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(1890)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[7]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[7]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[7]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[7]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[7]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[7]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1]~FF  (.D(n402), 
           .CE(1'b1), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(482)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[2]~FF  (.D(n403), 
           .CE(1'b1), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(482)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[2]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[2]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[2]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[2]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[2]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[2]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[3]~FF  (.D(n404), 
           .CE(1'b1), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(482)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[3]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[3]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[3]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[3]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[3]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[3]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[1]~FF  (.D(n405), 
           .CE(n406), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(610)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[1]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[1]~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[1]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[1]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[1]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[1]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[4]~FF  (.D(n407), 
           .CE(n406), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(610)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[4]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[4]~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[4]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[4]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[4]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[4]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[6]~FF  (.D(n408), 
           .CE(n406), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(610)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[6]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[6]~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[6]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[6]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[6]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[6]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[7]~FF  (.D(n409), 
           .CE(n406), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(610)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[7]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[7]~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[7]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[7]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[7]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[7]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[2]~FF  (.D(n410), 
           .CE(n411), .CLK(\clk~O ), .SR(n412), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(685)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[2]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[2]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[2]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[2]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[2]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[2]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[3]~FF  (.D(n413), 
           .CE(n411), .CLK(\clk~O ), .SR(n414), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(685)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[3]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[3]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[3]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[3]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[3]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[3]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[4]~FF  (.D(n415), 
           .CE(n411), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[3] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(685)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[4]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[4]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[4]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[4]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[4]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[4]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[5]~FF  (.D(n416), 
           .CE(n411), .CLK(\clk~O ), .SR(n417), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(685)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[5]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[5]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[5]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[5]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[5]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[5]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6]~FF  (.D(1'b1), 
           .CE(n418), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[3] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(685)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/mbcr_write0[1]~FF  (.D(n419), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[3] ), 
           .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/mbcr_write0[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(703)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/mbcr_write0[1]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/mbcr_write0[1]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/mbcr_write0[1]~FF .SR_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/mbcr_write0[1]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/mbcr_write0[1]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/mbcr_write0[1]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/mbcr_write0[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_wr_data0[1]~FF  (.D(n420), 
           .CE(1'b1), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_wr_data0[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(756)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_wr_data0[1]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_wr_data0[1]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_wr_data0[1]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_wr_data0[1]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_wr_data0[1]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_wr_data0[1]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_wr_data0[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_rd_data0[1]~FF  (.D(n421), 
           .CE(1'b1), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_rd_data0[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(767)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_rd_data0[1]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_rd_data0[1]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_rd_data0[1]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_rd_data0[1]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_rd_data0[1]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_rd_data0[1]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_rd_data0[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[1]~FF  (.D(n422), 
           .CE(n292), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(786)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[1]~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[1]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[1]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[2]~FF  (.D(n423), 
           .CE(n292), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(786)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[2]~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[2]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[2]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[3]~FF  (.D(n424), 
           .CE(n292), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(786)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[3]~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[3]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[3]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[4]~FF  (.D(n425), 
           .CE(n292), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(786)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[4]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[4]~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[4]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[4]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[4]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[4]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[5]~FF  (.D(n426), 
           .CE(n292), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(786)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[5]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[5]~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[5]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[5]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[5]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[5]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[6]~FF  (.D(n427), 
           .CE(n292), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(786)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[6]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[6]~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[6]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[6]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[6]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[6]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[7]~FF  (.D(n428), 
           .CE(n292), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(786)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[7]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[7]~FF .CE_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[7]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[7]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[7]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[7]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[1]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[1] ), 
           .CE(n304), .CLK(\clk~O ), .SR(reset_i), .Q(\i2c_data_out[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(810)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[1]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[1]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[1]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[1]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[1]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[1]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[2]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[2] ), 
           .CE(n304), .CLK(\clk~O ), .SR(reset_i), .Q(\i2c_data_out[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(810)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[2]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[2]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[2]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[2]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[2]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[2]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[3]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[3] ), 
           .CE(n304), .CLK(\clk~O ), .SR(reset_i), .Q(\i2c_data_out[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(810)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[3]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[3]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[3]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[3]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[3]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[3]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[4]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[4] ), 
           .CE(n304), .CLK(\clk~O ), .SR(reset_i), .Q(\i2c_data_out[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(810)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[4]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[4]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[4]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[4]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[4]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[4]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[5]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[5] ), 
           .CE(n304), .CLK(\clk~O ), .SR(reset_i), .Q(\i2c_data_out[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(810)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[5]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[5]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[5]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[5]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[5]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[5]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[6]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[6] ), 
           .CE(n304), .CLK(\clk~O ), .SR(reset_i), .Q(\i2c_data_out[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(810)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[6]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[6]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[6]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[6]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[6]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[6]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[7]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MODR[7] ), 
           .CE(n304), .CLK(\clk~O ), .SR(reset_i), .Q(\i2c_data_out[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(810)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[7]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[7]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[7]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[7]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[7]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[7]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_data_out[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_slave_addr0[4]~FF  (.D(\i2c_command_byte[0] ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_slave_addr0[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(471)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_slave_addr0[4]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_slave_addr0[4]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_slave_addr0[4]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_slave_addr0[4]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_slave_addr0[4]~FF .SR_SYNC = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_slave_addr0[4]~FF .SR_VALUE = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_slave_addr0[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[1]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[0] ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(861)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[1]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[1]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[1]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[1]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[1]~FF .SR_SYNC = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[1]~FF .SR_VALUE = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[2]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[1] ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(861)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[2]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[2]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[2]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[2]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[2]~FF .SR_SYNC = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[2]~FF .SR_VALUE = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[3]~FF  (.D(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[2] ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(reset_i), .Q(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/vlad/Documents/level_project/ip/i2c_interface/i2c_interface.v(861)
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[3]~FF .CLK_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[3]~FF .CE_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[3]~FF .SR_POLARITY = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[3]~FF .D_POLARITY = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[3]~FF .SR_SYNC = 1'b0;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[3]~FF .SR_VALUE = 1'b1;
    defparam \u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_LUT4 LUT__637 (.I0(i2c_write), .I1(i2c_read), .I2(error_led_o), 
            .O(n441)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__637.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__638 (.I0(\level_inst/state[3] ), .I1(\level_inst/state[4] ), 
            .I2(\level_inst/state[5] ), .I3(\level_inst/state[6] ), .O(n442)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__638.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__639 (.I0(n441), .I1(n442), .O(n214)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;
    defparam LUT__639.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__640 (.I0(\level_inst/state[5] ), .I1(\level_inst/state[4] ), 
            .I2(\level_inst/state[3] ), .I3(\level_inst/state[6] ), .O(n443)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__640.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__641 (.I0(i2c_arb_lost), .I1(n443), .I2(n441), .I3(i2c_rxak), 
            .O(n217)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__641.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__642 (.I0(\level_inst/state[6] ), .I1(n441), .O(n444)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__642.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__643 (.I0(\level_inst/state[4] ), .I1(\level_inst/state[3] ), 
            .O(n445)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__643.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__644 (.I0(\level_inst/state[3] ), .I1(\level_inst/state[6] ), 
            .I2(\level_inst/state[5] ), .I3(\level_inst/state[4] ), .O(n446)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heff6 */ ;
    defparam LUT__644.LUTMASK = 16'heff6;
    EFX_LUT4 LUT__645 (.I0(n446), .I1(\level_inst/state[6] ), .I2(i2c_busy), 
            .I3(n441), .O(n447)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__645.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__646 (.I0(n447), .I1(\i2c_command_byte[0] ), .O(n218)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__646.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__647 (.I0(\level_inst/state[5] ), .I1(n445), .I2(n444), 
            .O(n219)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbfbf */ ;
    defparam LUT__647.LUTMASK = 16'hbfbf;
    EFX_LUT4 LUT__648 (.I0(\level_inst/raw_buffer[7] ), .I1(n440), .O(n448)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__648.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__649 (.I0(\level_inst/raw_buffer[0] ), .I1(\level_inst/raw_buffer[1] ), 
            .I2(n448), .I3(\level_inst/raw_buffer[2] ), .O(n220)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7000 */ ;
    defparam LUT__649.LUTMASK = 16'h7000;
    EFX_LUT4 LUT__650 (.I0(\level_inst/raw_buffer[0] ), .I1(\level_inst/raw_buffer[1] ), 
            .I2(\level_inst/raw_buffer[2] ), .I3(n448), .O(n221)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1c00 */ ;
    defparam LUT__650.LUTMASK = 16'h1c00;
    EFX_LUT4 LUT__651 (.I0(\level_inst/raw_buffer[0] ), .I1(\level_inst/raw_buffer[1] ), 
            .I2(\level_inst/raw_buffer[2] ), .I3(n448), .O(n222)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__651.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__652 (.I0(\level_inst/raw_buffer[0] ), .I1(\level_inst/raw_buffer[1] ), 
            .I2(\level_inst/raw_buffer[2] ), .I3(n448), .O(n449)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__652.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__653 (.I0(\level_inst/raw_buffer[3] ), .I1(\level_inst/raw_buffer[4] ), 
            .I2(\level_inst/raw_buffer[5] ), .I3(\level_inst/raw_buffer[6] ), 
            .O(n450)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__653.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__654 (.I0(n450), .I1(\level_inst/raw_buffer[7] ), .O(n451)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__654.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__655 (.I0(\level_inst/raw_buffer[1] ), .I1(\level_inst/raw_buffer[2] ), 
            .I2(n451), .I3(n449), .O(n223)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff80 */ ;
    defparam LUT__655.LUTMASK = 16'hff80;
    EFX_LUT4 LUT__656 (.I0(\level_inst/raw_buffer[0] ), .I1(\level_inst/raw_buffer[1] ), 
            .I2(n451), .I3(\level_inst/raw_buffer[2] ), .O(n224)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7000 */ ;
    defparam LUT__656.LUTMASK = 16'h7000;
    EFX_LUT4 LUT__657 (.I0(\level_inst/raw_buffer[0] ), .I1(\level_inst/raw_buffer[1] ), 
            .I2(\level_inst/raw_buffer[2] ), .I3(n451), .O(n225)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1c00 */ ;
    defparam LUT__657.LUTMASK = 16'h1c00;
    EFX_LUT4 LUT__658 (.I0(\level_inst/raw_buffer[0] ), .I1(\level_inst/raw_buffer[1] ), 
            .I2(\level_inst/raw_buffer[2] ), .I3(n451), .O(n226)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__658.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__659 (.I0(\level_inst/raw_buffer[1] ), .I1(\level_inst/raw_buffer[2] ), 
            .I2(\level_inst/raw_buffer[0] ), .I3(n450), .O(n452)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__659.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__660 (.I0(n452), .I1(\level_inst/raw_buffer[7] ), .O(n227)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__660.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__661 (.I0(\i2c_command_byte[0] ), .I1(i2c_busy), .I2(\level_inst/state[3] ), 
            .O(n453)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c5c */ ;
    defparam LUT__661.LUTMASK = 16'h5c5c;
    EFX_LUT4 LUT__662 (.I0(n453), .I1(\level_inst/state[4] ), .I2(\level_inst/state[5] ), 
            .O(n454)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__662.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__663 (.I0(i2c_busy), .I1(\level_inst/state[4] ), .I2(\level_inst/state[5] ), 
            .I3(\level_inst/state[3] ), .O(n455)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3ffe */ ;
    defparam LUT__663.LUTMASK = 16'h3ffe;
    EFX_LUT4 LUT__664 (.I0(n454), .I1(n455), .I2(n444), .I3(\i2c_command_byte[4] ), 
            .O(n235)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hefa0 */ ;
    defparam LUT__664.LUTMASK = 16'hefa0;
    EFX_LUT4 LUT__665 (.I0(\level_inst/state[3] ), .I1(\level_inst/state[4] ), 
            .I2(\level_inst/state[6] ), .I3(\level_inst/state[5] ), .O(n456)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1700 */ ;
    defparam LUT__665.LUTMASK = 16'h1700;
    EFX_LUT4 LUT__666 (.I0(i2c_busy), .I1(\level_inst/state[6] ), .I2(\level_inst/state[4] ), 
            .I3(n456), .O(n457)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1c00 */ ;
    defparam LUT__666.LUTMASK = 16'h1c00;
    EFX_LUT4 LUT__667 (.I0(n457), .I1(n443), .I2(n441), .O(n458)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__667.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__668 (.I0(i2c_write), .I1(error_led_o), .I2(i2c_read), 
            .I3(\level_inst/state[4] ), .O(n459)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe0f */ ;
    defparam LUT__668.LUTMASK = 16'hfe0f;
    EFX_LUT4 LUT__669 (.I0(n459), .I1(\level_inst/state[3] ), .I2(\level_inst/state[5] ), 
            .I3(\level_inst/state[6] ), .O(n460)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__669.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__670 (.I0(\level_inst/state[4] ), .I1(\level_inst/state[5] ), 
            .I2(\level_inst/state[6] ), .I3(\level_inst/state[3] ), .O(n461)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1800 */ ;
    defparam LUT__670.LUTMASK = 16'h1800;
    EFX_LUT4 LUT__671 (.I0(i2c_read), .I1(error_led_o), .I2(\level_inst/state[6] ), 
            .O(n462)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__671.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__672 (.I0(i2c_write), .I1(n462), .I2(\level_inst/state[5] ), 
            .O(n463)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__672.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__673 (.I0(n463), .I1(\level_inst/state[3] ), .I2(\level_inst/state[4] ), 
            .O(n237)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f7f */ ;
    defparam LUT__673.LUTMASK = 16'h7f7f;
    EFX_LUT4 LUT__674 (.I0(n441), .I1(n461), .I2(n460), .O(n464)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__674.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__675 (.I0(\i2c_command_byte[6] ), .I1(n464), .I2(n447), 
            .I3(n458), .O(n236)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f8 */ ;
    defparam LUT__675.LUTMASK = 16'h00f8;
    EFX_LUT4 LUT__676 (.I0(i2c_write), .I1(error_led_o), .I2(\level_inst/state[5] ), 
            .I3(\level_inst/state[6] ), .O(n465)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__676.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__677 (.I0(n441), .I1(n443), .I2(n445), .I3(n465), .O(n466)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__677.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__678 (.I0(i2c_arb_lost), .I1(i2c_rxak), .I2(n445), .O(n467)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__678.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__679 (.I0(n217), .I1(n466), .I2(n463), .I3(n467), .O(n238)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf111 */ ;
    defparam LUT__679.LUTMASK = 16'hf111;
    EFX_LUT4 LUT__680 (.I0(i2c_busy), .I1(i2c_write), .I2(\level_inst/state[3] ), 
            .O(n468)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he3e3 */ ;
    defparam LUT__680.LUTMASK = 16'he3e3;
    EFX_LUT4 LUT__681 (.I0(n468), .I1(\level_inst/state[5] ), .I2(\level_inst/state[4] ), 
            .I3(n462), .O(n469)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__681.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__682 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/xfer_complete1 ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBSR[7] ), 
            .O(n470)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__682.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__683 (.I0(\level_inst/state[3] ), .I1(\level_inst/state[4] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/data_cnt[0] ), 
            .I3(n470), .O(n471)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__683.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__684 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[3] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0] ), 
            .O(n472)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__684.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__685 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[2] ), 
            .I1(n472), .O(n473)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__685.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__686 (.I0(n471), .I1(n473), .I2(n463), .I3(n469), .O(n474)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__686.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__687 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[2] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[3] ), 
            .O(n475)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__687.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__688 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBSR[7] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[4] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/xfer_complete1 ), 
            .O(n476)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__688.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__689 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[3] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[2] ), 
            .O(n477)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__689.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__690 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[3] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[2] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0] ), 
            .O(n478)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__690.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__691 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBSR[7] ), 
            .I1(n478), .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/data_cnt[0] ), 
            .I3(i2c_read), .O(n479)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__691.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__692 (.I0(n476), .I1(n475), .I2(n479), .I3(n460), .O(n480)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f00 */ ;
    defparam LUT__692.LUTMASK = 16'h8f00;
    EFX_LUT4 LUT__693 (.I0(n446), .I1(i2c_busy), .I2(n441), .O(n481)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__693.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__694 (.I0(n238), .I1(n480), .I2(n481), .I3(n474), .O(n239)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfeff */ ;
    defparam LUT__694.LUTMASK = 16'hfeff;
    EFX_LUT4 LUT__695 (.I0(i2c_busy), .I1(\level_inst/state[6] ), .I2(\level_inst/state[5] ), 
            .I3(\level_inst/state[3] ), .O(n482)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf43f */ ;
    defparam LUT__695.LUTMASK = 16'hf43f;
    EFX_LUT4 LUT__696 (.I0(\level_inst/state[3] ), .I1(\level_inst/state[5] ), 
            .I2(\level_inst/state[6] ), .O(n483)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__696.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__697 (.I0(n482), .I1(n483), .I2(\level_inst/state[4] ), 
            .I3(n441), .O(n484)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc500 */ ;
    defparam LUT__697.LUTMASK = 16'hc500;
    EFX_LUT4 LUT__698 (.I0(i2c_arb_lost), .I1(i2c_rxak), .I2(n445), .O(n485)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__698.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__699 (.I0(n444), .I1(n485), .I2(n484), .I3(n469), .O(n240)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff8 */ ;
    defparam LUT__699.LUTMASK = 16'hfff8;
    EFX_LUT4 LUT__700 (.I0(\level_inst/state[5] ), .I1(\level_inst/state[4] ), 
            .I2(\level_inst/state[3] ), .I3(i2c_busy), .O(n486)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__700.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__701 (.I0(n486), .I1(n456), .I2(n441), .I3(n466), .O(n241)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0ff */ ;
    defparam LUT__701.LUTMASK = 16'he0ff;
    EFX_LUT4 LUT__702 (.I0(n463), .I1(n467), .I2(n466), .I3(n464), .O(n242)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8fff */ ;
    defparam LUT__702.LUTMASK = 16'h8fff;
    EFX_LUT4 LUT__703 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0] ), 
            .I1(i2c_busy), .I2(n475), .O(n487)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__703.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__704 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/write_p ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/read_p ), 
            .O(n488)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__704.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__705 (.I0(n488), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1] ), 
            .I2(n477), .O(n489)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__705.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__706 (.I0(n489), .I1(n487), .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBSR[7] ), 
            .O(n490)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3533 */ ;
    defparam LUT__706.LUTMASK = 16'h3533;
    EFX_LUT4 LUT__707 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[2] ), 
            .O(n491)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__707.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__708 (.I0(n488), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBSR[7] ), 
            .O(n492)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__708.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__709 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/read_p ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBSR[7] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/write_p ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1] ), 
            .O(n493)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfb0f */ ;
    defparam LUT__709.LUTMASK = 16'hfb0f;
    EFX_LUT4 LUT__710 (.I0(n493), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[3] ), 
            .I2(n491), .O(n494)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__710.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__711 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[4] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[5] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[6] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[7] ), 
            .O(n495)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__711.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__712 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[2] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[3] ), 
            .O(n496)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__712.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__713 (.I0(n495), .I1(n496), .O(n497)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__713.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__714 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[1] ), 
            .I1(\i2c_command_byte[0] ), .O(n498)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__714.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__715 (.I0(n495), .I1(n496), .I2(n498), .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBSR[7] ), 
            .O(n499)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__715.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__716 (.I0(n499), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[0] ), 
            .I2(n488), .O(n500)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__716.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__717 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBSR[7] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[3] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0] ), 
            .O(n501)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__717.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__718 (.I0(n500), .I1(n501), .I2(n494), .I3(n490), .O(n243)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;
    defparam LUT__718.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__719 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0] ), 
            .I1(n477), .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1] ), 
            .O(n502)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__719.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__720 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[3] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[2] ), 
            .O(n503)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0a0c */ ;
    defparam LUT__720.LUTMASK = 16'h0a0c;
    EFX_LUT4 LUT__721 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1] ), 
            .I2(n503), .O(n504)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__721.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__722 (.I0(\i2c_command_byte[0] ), .I1(n504), .I2(n502), 
            .O(n244)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;
    defparam LUT__722.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__723 (.I0(n502), .I1(n488), .O(n505)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__723.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__724 (.I0(n488), .I1(reset_i), .O(n246)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;
    defparam LUT__724.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__725 (.I0(n473), .I1(n502), .I2(n504), .I3(n246), .O(n406)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__725.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__726 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[2] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[3] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[1] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[0] ), 
            .O(n506)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00fe */ ;
    defparam LUT__726.LUTMASK = 16'h00fe;
    EFX_LUT4 LUT__727 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[3] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[2] ), 
            .O(n507)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__727.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__728 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[4] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[3] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[2] ), 
            .O(n508)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__728.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__729 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[1] ), 
            .O(n509)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__729.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__730 (.I0(n508), .I1(n509), .I2(n506), .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/master ), 
            .O(n248)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbb0f */ ;
    defparam LUT__730.LUTMASK = 16'hbb0f;
    EFX_LUT4 LUT__731 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data4 ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data3 ), 
            .O(n251)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__731.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__732 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int_p1 ), 
            .O(n252)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__732.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__733 (.I0(sda_o), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaOutSlave ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/master ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[0] ), 
            .O(n510)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0305 */ ;
    defparam LUT__733.LUTMASK = 16'h0305;
    EFX_LUT4 LUT__734 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[2] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[1] ), 
            .O(n511)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__734.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__735 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[1] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[2] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[3] ), 
            .O(n512)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__735.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__736 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[4] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[5] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[6] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[7] ), 
            .O(n513)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__736.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__737 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[8] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[9] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[10] ), 
            .O(n514)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__737.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__738 (.I0(n512), .I1(n513), .I2(n514), .O(n515)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__738.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__739 (.I0(n515), .I1(n511), .I2(n510), .O(n516)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__739.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__740 (.I0(n507), .I1(n509), .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[4] ), 
            .O(n517)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__740.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__741 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[8] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[7] ), 
            .O(n518)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__741.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__742 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[10] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[9] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[5] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[4] ), 
            .O(n519)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__742.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__743 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[6] ), 
            .I1(n519), .I2(n518), .O(n520)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__743.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__744 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[8] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[7] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[3] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[2] ), 
            .O(n521)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__744.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__745 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[3] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[2] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[1] ), 
            .O(n522)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__745.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__746 (.I0(n522), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[6] ), 
            .I2(n518), .I3(n519), .O(n523)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__746.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__747 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/arb_lost ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/rep_start ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaOutMaster ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStop ), 
            .O(n524)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00fe */ ;
    defparam LUT__747.LUTMASK = 16'h00fe;
    EFX_LUT4 LUT__748 (.I0(sda_o), .I1(n524), .I2(n523), .I3(n517), 
            .O(n525)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__748.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__749 (.I0(n507), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[4] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[1] ), 
            .I3(sda_o), .O(n526)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__749.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__750 (.I0(n526), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[0] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/master ), 
            .O(n527)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__750.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__751 (.I0(n508), .I1(n509), .O(n528)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__751.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__752 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[5] ), 
            .I1(n509), .I2(n508), .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[6] ), 
            .O(n529)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__752.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__753 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[10] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[9] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[5] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[1] ), 
            .O(n530)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__753.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__754 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[6] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[0] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[4] ), 
            .O(n531)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__754.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__755 (.I0(n529), .I1(n521), .I2(n530), .I3(n531), .O(n532)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__755.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__756 (.I0(n521), .I1(n530), .I2(n531), .O(n533)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__756.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__757 (.I0(n529), .I1(n533), .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStop ), 
            .O(n534)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__757.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__758 (.I0(n534), .I1(n525), .I2(n527), .I3(n516), .O(n254)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00ef */ ;
    defparam LUT__758.LUTMASK = 16'h00ef;
    EFX_LUT4 LUT__759 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[4] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[6] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[7] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_slave_addr0[4] ), 
            .O(n535)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__759.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__760 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[1] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[2] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[3] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[5] ), 
            .O(n536)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__760.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__761 (.I0(n535), .I1(n536), .O(n537)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__761.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__762 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[6] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[4] ), 
            .O(n538)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__762.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__763 (.I0(n535), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[2] ), 
            .I2(n536), .I3(n538), .O(n539)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf00 */ ;
    defparam LUT__763.LUTMASK = 16'hbf00;
    EFX_LUT4 LUT__764 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int_p1 ), 
            .O(n540)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__764.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__765 (.I0(n539), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/master ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[0] ), 
            .I3(n540), .O(n541)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__765.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__766 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[1] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[3] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[2] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[0] ), 
            .O(n542)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000e */ ;
    defparam LUT__766.LUTMASK = 16'h000e;
    EFX_LUT4 LUT__767 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[1] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/wait_uc ), 
            .I2(n515), .I3(n542), .O(n543)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f00 */ ;
    defparam LUT__767.LUTMASK = 16'h8f00;
    EFX_LUT4 LUT__768 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[0] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_rd_data0[1] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[2] ), 
            .O(n544)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__768.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__769 (.I0(n541), .I1(n543), .I2(n544), .O(n256)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__769.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__770 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mstaS0 ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mstaS1 ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[7] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/arb_lost ), 
            .O(n257)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f4 */ ;
    defparam LUT__770.LUTMASK = 16'h00f4;
    EFX_LUT4 LUT__771 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStopS0 ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
            .O(n320)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__771.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__772 (.I0(n257), .I1(n320), .O(n258)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__772.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__773 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mstaS1 ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mstaS0 ), 
            .O(n259)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__773.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__774 (.I0(n259), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStartS0 ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
            .O(n260)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__774.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__775 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
            .O(n338)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__775.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__776 (.I0(n507), .I1(n509), .O(n545)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__776.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__777 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[4] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[5] ), 
            .I2(n507), .I3(n509), .O(n546)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__777.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__778 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStop ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/rep_start ), 
            .O(n547)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__778.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__779 (.I0(n547), .I1(n533), .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[7] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[6] ), 
            .O(n548)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbf0 */ ;
    defparam LUT__779.LUTMASK = 16'hbbf0;
    EFX_LUT4 LUT__780 (.I0(n548), .I1(n528), .I2(n546), .I3(n338), .O(n266)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff4 */ ;
    defparam LUT__780.LUTMASK = 16'hfff4;
    EFX_LUT4 LUT__781 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[3] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[4] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[5] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
            .O(n549)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__781.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__782 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[2] ), 
            .I1(n549), .O(n550)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__782.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__783 (.I0(n550), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[2] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[0] ), 
            .O(n551)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__783.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__784 (.I0(n499), .I1(n472), .O(n552)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__784.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__785 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[3] ), 
            .O(n553)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__785.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__786 (.I0(n477), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0] ), 
            .O(n554)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__786.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__787 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBSR[7] ), 
            .I3(n477), .O(n555)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__787.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__788 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[3] ), 
            .I1(n491), .I2(n503), .I3(n488), .O(n556)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f4 */ ;
    defparam LUT__788.LUTMASK = 16'h00f4;
    EFX_LUT4 LUT__789 (.I0(n551), .I1(n552), .I2(n555), .I3(n556), .O(n267)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff4 */ ;
    defparam LUT__789.LUTMASK = 16'hfff4;
    EFX_LUT4 LUT__790 (.I0(i2c_busy), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStart ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/master ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[0] ), 
            .O(n557)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf00 */ ;
    defparam LUT__790.LUTMASK = 16'hbf00;
    EFX_LUT4 LUT__791 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[3] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[2] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[6] ), 
            .O(n558)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__791.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__792 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[4] ), 
            .I1(n530), .I2(n558), .I3(n518), .O(n559)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__792.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__793 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[3] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[1] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[2] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[0] ), 
            .O(n560)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__793.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__794 (.I0(n517), .I1(n560), .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/arb_lost ), 
            .O(n561)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__794.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__795 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[5] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[6] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[7] ), 
            .I3(n528), .O(n562)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__795.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__796 (.I0(n561), .I1(n562), .I2(n559), .I3(n557), .O(n269)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hffe0 */ ;
    defparam LUT__796.LUTMASK = 16'hffe0;
    EFX_LUT4 LUT__797 (.I0(n560), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/arb_lost ), 
            .I2(n517), .I3(n559), .O(n563)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7000 */ ;
    defparam LUT__797.LUTMASK = 16'h7000;
    EFX_LUT4 LUT__798 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[5] ), 
            .I2(n528), .I3(n563), .O(n272)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff40 */ ;
    defparam LUT__798.LUTMASK = 16'hff40;
    EFX_LUT4 LUT__799 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[3] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[2] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[1] ), 
            .O(n564)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__799.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__800 (.I0(n520), .I1(n564), .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[3] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[4] ), 
            .O(n565)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__800.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__801 (.I0(n565), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[7] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[1] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[5] ), 
            .O(n275)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hccc5 */ ;
    defparam LUT__801.LUTMASK = 16'hccc5;
    EFX_LUT4 LUT__802 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_spike_cnt[1] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_1 ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
            .O(n279)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;
    defparam LUT__802.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__803 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[4] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[6] ), 
            .O(n333)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__803.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__804 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStop ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_wr_data0[1] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_rd_data0[1] ), 
            .O(n566)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__804.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__805 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[2] ), 
            .I1(n333), .I2(n566), .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[2] ), 
            .O(n567)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heef0 */ ;
    defparam LUT__805.LUTMASK = 16'heef0;
    EFX_LUT4 LUT__806 (.I0(n559), .I1(n517), .I2(n567), .I3(n545), .O(n281)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f44 */ ;
    defparam LUT__806.LUTMASK = 16'h4f44;
    EFX_LUT4 LUT__807 (.I0(n491), .I1(n492), .I2(n553), .O(n568)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__807.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__808 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/xfer_complete1 ), 
            .I1(n498), .I2(n497), .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/xfer_complete2 ), 
            .O(n569)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__808.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__809 (.I0(n473), .I1(n569), .I2(n568), .O(n283)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;
    defparam LUT__809.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__810 (.I0(n545), .I1(n567), .O(n284)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__810.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__811 (.I0(n569), .I1(n478), .O(n290)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__811.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__812 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[2] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[3] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1] ), 
            .O(n570)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;
    defparam LUT__812.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__813 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[0] ), 
            .I1(n570), .O(n291)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__813.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__814 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/xfer_complete1 ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBSR[7] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[2] ), 
            .O(n571)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5d30 */ ;
    defparam LUT__814.LUTMASK = 16'h5d30;
    EFX_LUT4 LUT__815 (.I0(n571), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[3] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1] ), 
            .I3(reset_i), .O(n292)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__815.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__816 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int_p1 ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int ), 
            .O(n293)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__816.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__817 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data3 ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data2 ), 
            .I2(reset_i), .O(n294)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f4f */ ;
    defparam LUT__817.LUTMASK = 16'h4f4f;
    EFX_LUT4 LUT__818 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data4 ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_rdflag/data3 ), 
            .O(n296)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__818.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__819 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/data_cnt[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[2] ), 
            .I2(n470), .I3(n472), .O(n298)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd000 */ ;
    defparam LUT__819.LUTMASK = 16'hd000;
    EFX_LUT4 LUT__820 (.I0(n491), .I1(n553), .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/data_cnt[0] ), 
            .I3(reset_i), .O(n572)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__820.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__821 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[0] ), 
            .I1(\i2c_command_byte[0] ), .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[1] ), 
            .I3(n497), .O(n573)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4100 */ ;
    defparam LUT__821.LUTMASK = 16'h4100;
    EFX_LUT4 LUT__822 (.I0(n573), .I1(n298), .I2(n572), .O(n299)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__822.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__823 (.I0(n470), .I1(n478), .O(n304)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__823.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__824 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data3 ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_pgfts_wrflag/data2 ), 
            .I2(reset_i), .O(n305)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f4f */ ;
    defparam LUT__824.LUTMASK = 16'h4f4f;
    EFX_LUT4 LUT__825 (.I0(n533), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[1] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[0] ), 
            .I3(n557), .O(n574)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f4 */ ;
    defparam LUT__825.LUTMASK = 16'h00f4;
    EFX_LUT4 LUT__826 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStop ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/rep_start ), 
            .I2(n532), .I3(n574), .O(n307)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff40 */ ;
    defparam LUT__826.LUTMASK = 16'hff40;
    EFX_LUT4 LUT__827 (.I0(n564), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[4] ), 
            .O(n575)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__827.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__828 (.I0(n575), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[7] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[6] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[5] ), 
            .O(n576)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__828.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__829 (.I0(n576), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[9] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[8] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[10] ), 
            .O(n308)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__829.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__830 (.I0(n512), .I1(n513), .I2(n514), .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[3] ), 
            .O(n577)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__830.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__831 (.I0(n537), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[2] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[4] ), 
            .I3(n577), .O(n578)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__831.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__832 (.I0(n578), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[7] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[5] ), 
            .O(n309)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__832.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__833 (.I0(n576), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[8] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[9] ), 
            .O(n310)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__833.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__834 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[6] ), 
            .I2(n540), .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/master ), 
            .O(n579)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h440f */ ;
    defparam LUT__834.LUTMASK = 16'h440f;
    EFX_LUT4 LUT__835 (.I0(n539), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[0] ), 
            .I2(n579), .I3(n542), .O(n580)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__835.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__836 (.I0(n580), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
            .O(n312)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__836.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__837 (.I0(n576), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[8] ), 
            .O(n313)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__837.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__838 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[2] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/wait_uc ), 
            .O(n581)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__838.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__839 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[0] ), 
            .I1(n538), .I2(n541), .I3(n581), .O(n314)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hffb0 */ ;
    defparam LUT__839.LUTMASK = 16'hffb0;
    EFX_LUT4 LUT__840 (.I0(n575), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[6] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[5] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[7] ), 
            .O(n315)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__840.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__841 (.I0(n575), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[5] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[6] ), 
            .O(n316)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__841.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__842 (.I0(n575), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[5] ), 
            .O(n317)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__842.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__843 (.I0(n564), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[4] ), 
            .O(n318)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__843.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__844 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[1] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[2] ), 
            .O(n582)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__844.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__845 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[1] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[2] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[3] ), 
            .O(n583)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__845.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__846 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[4] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[5] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[6] ), 
            .O(n584)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__846.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__847 (.I0(n583), .I1(n584), .O(n585)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__847.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__848 (.I0(n583), .I1(n584), .I2(n582), .O(n586)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__848.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__849 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStopS0 ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/arb_lost ), 
            .O(n587)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__849.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__850 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/master ), 
            .I1(n540), .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int ), 
            .I3(n587), .O(n588)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf00 */ ;
    defparam LUT__850.LUTMASK = 16'hbf00;
    EFX_LUT4 LUT__851 (.I0(n537), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/master ), 
            .I2(n582), .I3(n540), .O(n589)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__851.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__852 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[1] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[4] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[5] ), 
            .O(n590)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__852.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__853 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStopS0 ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[0] ), 
            .O(n591)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__853.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__854 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detect_start_pulse ), 
            .I1(n540), .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStopS0 ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[0] ), 
            .O(n592)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h77f0 */ ;
    defparam LUT__854.LUTMASK = 16'h77f0;
    EFX_LUT4 LUT__855 (.I0(n590), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[3] ), 
            .I2(n592), .O(n593)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__855.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__856 (.I0(n586), .I1(n588), .I2(n589), .I3(n593), .O(n319)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff1 */ ;
    defparam LUT__856.LUTMASK = 16'hfff1;
    EFX_LUT4 LUT__857 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[2] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[1] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[3] ), 
            .O(n321)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__857.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__858 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[1] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[2] ), 
            .O(n322)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__858.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__859 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int_p1 ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int ), 
            .I2(n252), .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
            .O(n323)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;
    defparam LUT__859.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__860 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mclkCount[1] ), 
            .O(n324)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__860.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__861 (.I0(n540), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[1] ), 
            .O(n325)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__861.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__862 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStart1 ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStart ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_wr_data0[1] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/uc_wr_data_p1 ), 
            .O(n594)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__862.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__863 (.I0(n594), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[1] ), 
            .O(n327)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__863.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__864 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/master ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[1] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[3] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[5] ), 
            .O(n595)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;
    defparam LUT__864.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__865 (.I0(n595), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/rep_start ), 
            .I2(n540), .O(n596)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__865.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__866 (.I0(n596), .I1(n594), .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
            .O(n328)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__866.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__867 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[1] ), 
            .I2(n594), .O(n329)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__867.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__868 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_spike_cnt[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/scl_spike_cnt[1] ), 
            .O(n330)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__868.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__869 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[0] ), 
            .I2(n594), .O(n331)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__869.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__870 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_spike_cnt[1] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_spike_cnt[0] ), 
            .O(n334)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__870.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__871 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_spike_cnt[1] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sda_next_p1 ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_1 ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
            .O(n335)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;
    defparam LUT__871.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__872 (.I0(sda_o), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int ), 
            .O(n336)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__872.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__873 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int_p1 ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/arb_lost ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/master ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int ), 
            .O(n597)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__873.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__874 (.I0(n590), .I1(n597), .O(n337)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__874.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__875 (.I0(n529), .I1(n547), .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[0] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[1] ), 
            .O(n598)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__875.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__876 (.I0(n598), .I1(n533), .O(n339)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__876.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__877 (.I0(n532), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStop ), 
            .I2(n559), .I3(n562), .O(n340)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f88 */ ;
    defparam LUT__877.LUTMASK = 16'h8f88;
    EFX_LUT4 LUT__878 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[1] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[2] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[3] ), 
            .O(n599)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__878.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__879 (.I0(n540), .I1(n599), .O(n341)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__879.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__880 (.I0(n533), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[6] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclIn_int ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mscl_state[5] ), 
            .O(n600)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fbb */ ;
    defparam LUT__880.LUTMASK = 16'h0fbb;
    EFX_LUT4 LUT__881 (.I0(n600), .I1(n528), .O(n342)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__881.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__882 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/mbcr_write0[1] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbcr_wr1 ), 
            .O(n344)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__882.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__883 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbcr_wr2 ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[2] ), 
            .O(n345)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__883.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__884 (.I0(n325), .I1(n320), .I2(n345), .O(n346)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfefe */ ;
    defparam LUT__884.LUTMASK = 16'hfefe;
    EFX_LUT4 LUT__885 (.I0(n325), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
            .O(n347)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__885.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__886 (.I0(n320), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStartS0 ), 
            .O(n349)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__886.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__887 (.I0(reset_i), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
            .O(n351)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__887.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__888 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStop ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStopS0 ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/genStart ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/mbbS0 ), 
            .O(n601)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bbb */ ;
    defparam LUT__888.LUTMASK = 16'h0bbb;
    EFX_LUT4 LUT__889 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/arb_lost ), 
            .I1(n601), .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/rep_start ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/master ), 
            .O(n602)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbf0 */ ;
    defparam LUT__889.LUTMASK = 16'hbbf0;
    EFX_LUT4 LUT__890 (.I0(n602), .I1(n351), .O(n350)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__890.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__891 (.I0(n333), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[2] ), 
            .I2(n540), .O(n352)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__891.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__892 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/arb_lost ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
            .O(n356)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__892.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__893 (.I0(n515), .I1(n511), .I2(n541), .O(n357)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;
    defparam LUT__893.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__894 (.I0(n511), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/wait_uc ), 
            .O(n603)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__894.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__895 (.I0(n515), .I1(n603), .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_wr_data0[1] ), 
            .I3(n544), .O(n358)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f88 */ ;
    defparam LUT__895.LUTMASK = 16'h8f88;
    EFX_LUT4 LUT__896 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[1] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[2] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sscl_state[3] ), 
            .O(n604)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__896.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__897 (.I0(n515), .I1(n604), .I2(n544), .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_wr_data0[1] ), 
            .O(n359)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf444 */ ;
    defparam LUT__897.LUTMASK = 16'hf444;
    EFX_LUT4 LUT__898 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[1] ), 
            .O(n360)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__898.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__899 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[1] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[2] ), 
            .O(n361)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__899.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__900 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[1] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[2] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[3] ), 
            .O(n362)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__900.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__901 (.I0(n512), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[4] ), 
            .O(n363)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__901.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__902 (.I0(n512), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[4] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[5] ), 
            .O(n364)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__902.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__903 (.I0(n512), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[4] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[5] ), 
            .O(n605)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__903.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__904 (.I0(n605), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[6] ), 
            .O(n365)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__904.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__905 (.I0(n605), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[6] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[7] ), 
            .O(n366)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__905.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__906 (.I0(n605), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[6] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[7] ), 
            .O(n606)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__906.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__907 (.I0(n606), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[8] ), 
            .O(n367)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__907.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__908 (.I0(n606), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[8] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[9] ), 
            .O(n368)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__908.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__909 (.I0(n606), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[8] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[9] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sclkCount[10] ), 
            .O(n369)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__909.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__910 (.I0(n540), .I1(n560), .O(n607)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__910.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__911 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[4] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[5] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[3] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[2] ), 
            .O(n608)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f4 */ ;
    defparam LUT__911.LUTMASK = 16'h00f4;
    EFX_LUT4 LUT__912 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/master ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/rep_start ), 
            .O(n609)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__912.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__913 (.I0(n540), .I1(n609), .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStartS0 ), 
            .I3(n608), .O(n610)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__913.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__914 (.I0(n607), .I1(n610), .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[1] ), 
            .I3(n591), .O(n611)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c00 */ ;
    defparam LUT__914.LUTMASK = 16'h5c00;
    EFX_LUT4 LUT__915 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detect_start_pulse ), 
            .I2(n540), .I3(n611), .O(n370)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff80 */ ;
    defparam LUT__915.LUTMASK = 16'hff80;
    EFX_LUT4 LUT__916 (.I0(n540), .I1(n587), .O(n612)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__916.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__917 (.I0(n591), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[1] ), 
            .O(n613)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__917.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__918 (.I0(n607), .I1(n613), .I2(n612), .I3(n582), .O(n371)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf888 */ ;
    defparam LUT__918.LUTMASK = 16'hf888;
    EFX_LUT4 LUT__919 (.I0(n609), .I1(n560), .I2(n540), .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStartS0 ), 
            .O(n614)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__919.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__920 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStopS0 ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[0] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[1] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[2] ), 
            .O(n615)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__920.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__921 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int ), 
            .I1(n587), .I2(n540), .O(n616)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__921.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__922 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStopS0 ), 
            .I1(n583), .I2(n540), .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[4] ), 
            .O(n617)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__922.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__923 (.I0(n615), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[3] ), 
            .I2(n614), .I3(n617), .O(n618)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__923.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__924 (.I0(n609), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStartS0 ), 
            .I2(n607), .O(n619)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__924.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__925 (.I0(n540), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[4] ), 
            .O(n620)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__925.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__926 (.I0(n619), .I1(n620), .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[3] ), 
            .I3(n615), .O(n373)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__926.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__927 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStopS0 ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[4] ), 
            .I2(n583), .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[5] ), 
            .O(n621)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__927.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__928 (.I0(n535), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/master ), 
            .I2(n536), .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[0] ), 
            .O(n622)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__928.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__929 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/master ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[4] ), 
            .I2(n585), .I3(n622), .O(n623)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;
    defparam LUT__929.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__930 (.I0(n586), .I1(n616), .O(n624)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__930.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__931 (.I0(n623), .I1(n624), .I2(n614), .I3(n621), .O(n374)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf444 */ ;
    defparam LUT__931.LUTMASK = 16'hf444;
    EFX_LUT4 LUT__932 (.I0(n619), .I1(n621), .I2(n612), .I3(n585), .O(n375)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf888 */ ;
    defparam LUT__932.LUTMASK = 16'hf888;
    EFX_LUT4 LUT__933 (.I0(n587), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/sdaIn_int ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/master ), 
            .O(n625)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__933.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__934 (.I0(n586), .I1(n625), .I2(n540), .O(n376)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__934.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__935 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detect_start_pulse ), 
            .I1(n540), .O(n378)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__935.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__936 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/detectStartS0 ), 
            .I1(n609), .I2(n608), .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[1] ), 
            .O(n626)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00ef */ ;
    defparam LUT__936.LUTMASK = 16'h00ef;
    EFX_LUT4 LUT__937 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2c_state[0] ), 
            .I1(n626), .I2(n540), .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[6] ), 
            .O(n379)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0ff */ ;
    defparam LUT__937.LUTMASK = 16'he0ff;
    EFX_LUT4 LUT__938 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[1] ), 
            .O(n380)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__938.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__939 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[1] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[2] ), 
            .O(n381)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__939.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__940 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[1] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[2] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/bitCount[3] ), 
            .O(n382)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__940.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__941 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[2] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[1] ), 
            .I2(n594), .O(n390)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__941.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__942 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[3] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[4] ), 
            .I2(n594), .O(n391)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__942.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__943 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[4] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[1] ), 
            .I2(n594), .O(n392)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__943.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__944 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[5] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[6] ), 
            .I2(n594), .O(n393)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__944.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__945 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/shiftReg[6] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MIDR[7] ), 
            .I2(n594), .O(n394)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__945.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__946 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[2] ), 
            .I1(n492), .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1] ), 
            .O(n627)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf13f */ ;
    defparam LUT__946.LUTMASK = 16'hf13f;
    EFX_LUT4 LUT__947 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1] ), 
            .I1(n500), .I2(n627), .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[3] ), 
            .O(n402)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h008f */ ;
    defparam LUT__947.LUTMASK = 16'h008f;
    EFX_LUT4 LUT__948 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1] ), 
            .I2(n499), .I3(n488), .O(n628)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__948.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__949 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/write_p ), 
            .I1(n553), .I2(n491), .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/read_p ), 
            .O(n629)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__949.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__950 (.I0(n628), .I1(n477), .I2(n629), .I3(n502), .O(n403)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff8 */ ;
    defparam LUT__950.LUTMASK = 16'hfff8;
    EFX_LUT4 LUT__951 (.I0(n488), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[2] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1] ), 
            .O(n630)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0eab */ ;
    defparam LUT__951.LUTMASK = 16'h0eab;
    EFX_LUT4 LUT__952 (.I0(n630), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[3] ), 
            .I2(n500), .I3(n487), .O(n404)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff01 */ ;
    defparam LUT__952.LUTMASK = 16'hff01;
    EFX_LUT4 LUT__953 (.I0(n505), .I1(n504), .I2(\i2c_command_byte[0] ), 
            .O(n405)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__953.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__954 (.I0(n505), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_slave_addr0[4] ), 
            .O(n409)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__954.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__955 (.I0(\i2c_command_byte[4] ), .I1(n504), .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_slave_addr0[4] ), 
            .I3(n505), .O(n407)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h88f0 */ ;
    defparam LUT__955.LUTMASK = 16'h88f0;
    EFX_LUT4 LUT__956 (.I0(\i2c_command_byte[6] ), .I1(n504), .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/i2c_slave_addr0[4] ), 
            .I3(n505), .O(n408)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h88f0 */ ;
    defparam LUT__956.LUTMASK = 16'h88f0;
    EFX_LUT4 LUT__957 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBSR[7] ), 
            .I2(n477), .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1] ), 
            .O(n410)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__957.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__958 (.I0(n488), .I1(n503), .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[3] ), 
            .O(n417)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;
    defparam LUT__958.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__959 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[0] ), 
            .I1(n477), .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[1] ), 
            .O(n631)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__959.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__960 (.I0(n550), .I1(n499), .I2(n631), .O(n413)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__960.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__961 (.I0(n553), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[2] ), 
            .I3(n410), .O(n632)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00d7 */ ;
    defparam LUT__961.LUTMASK = 16'h00d7;
    EFX_LUT4 LUT__962 (.I0(n413), .I1(n632), .O(n416)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__962.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__963 (.I0(n472), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[0] ), 
            .O(n633)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__963.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__964 (.I0(n499), .I1(n633), .I2(n488), .I3(n503), .O(n634)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__964.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__965 (.I0(n413), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/soft_rst_reg[3] ), 
            .I2(n634), .I3(n632), .O(n411)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hefff */ ;
    defparam LUT__965.LUTMASK = 16'hefff;
    EFX_LUT4 LUT__966 (.I0(n417), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[0] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/current_st[2] ), 
            .I3(n553), .O(n412)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbeaa */ ;
    defparam LUT__966.LUTMASK = 16'hbeaa;
    EFX_LUT4 LUT__967 (.I0(n417), .I1(n632), .O(n414)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__967.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__968 (.I0(n628), .I1(n554), .I2(n413), .I3(n410), .O(n415)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000b */ ;
    defparam LUT__968.LUTMASK = 16'h000b;
    EFX_LUT4 LUT__969 (.I0(n413), .I1(n632), .I2(n634), .O(n418)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbfbf */ ;
    defparam LUT__969.LUTMASK = 16'hbfbf;
    EFX_LUT4 LUT__970 (.I0(n555), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/mbcr_write0[0] ), 
            .O(n635)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__970.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__971 (.I0(n551), .I1(n552), .I2(n556), .I3(n635), .O(n419)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4ff */ ;
    defparam LUT__971.LUTMASK = 16'hf4ff;
    EFX_LUT4 LUT__972 (.I0(n569), .I1(n473), .I2(n568), .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_wr_data0[0] ), 
            .O(n420)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff8 */ ;
    defparam LUT__972.LUTMASK = 16'hfff8;
    EFX_LUT4 LUT__973 (.I0(n569), .I1(n478), .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/uc_rd_data0[0] ), 
            .O(n421)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;
    defparam LUT__973.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__974 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[1] ), 
            .I2(n570), .O(n422)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__974.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__975 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[1] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[2] ), 
            .I3(n570), .O(n423)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__975.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__976 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[1] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[2] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[3] ), 
            .O(n636)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h807f */ ;
    defparam LUT__976.LUTMASK = 16'h807f;
    EFX_LUT4 LUT__977 (.I0(n636), .I1(n570), .O(n424)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__977.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__978 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[0] ), 
            .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[1] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[2] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[3] ), 
            .O(n637)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__978.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__979 (.I0(n637), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[4] ), 
            .I2(n570), .O(n425)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__979.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__980 (.I0(n637), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[4] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[5] ), 
            .I3(n570), .O(n426)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__980.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__981 (.I0(n637), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[4] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[5] ), 
            .O(n638)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__981.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__982 (.I0(n638), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[6] ), 
            .I2(n570), .O(n427)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__982.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__983 (.I0(n638), .I1(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[6] ), 
            .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/byte_cnt[7] ), 
            .I3(n570), .O(n428)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__983.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__986 (.I0(sda_o), .O(sda_oe)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__986.LUTMASK = 16'h5555;
    EFX_LUT4 LUT__987 (.I0(scl_o), .O(scl_oe)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__987.LUTMASK = 16'h5555;
    EFX_LUT4 LUT__1077 (.I0(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/i2cHeader[0] ), 
            .I1(n537), .I2(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/MBCR[4] ), 
            .I3(\u_i2c_interface/u_i2c_controller_2e835ddf2f154dd587bb395c6ea8daac/genblk1.master_ctl_inst/u_i2c_mstrslv_ctl/master ), 
            .O(n639)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0f44 */ ;
    defparam LUT__1077.LUTMASK = 16'h0f44;
    EFX_LUT4 LUT__635 (.I0(\level_inst/raw_buffer[3] ), .I1(\level_inst/raw_buffer[4] ), 
            .I2(\level_inst/raw_buffer[5] ), .I3(\level_inst/raw_buffer[6] ), 
            .O(n440)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__635.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1078 (.I0(n582), .I1(n616), .I2(n639), .I3(n618), 
            .O(n372)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h80ff */ ;
    defparam LUT__1078.LUTMASK = 16'h80ff;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk), .O(\clk~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF50
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF51
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF52
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF53
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF54
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF55
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF56
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF57
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF58
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF59
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF60
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF61
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF62
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF63
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF64
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF65
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF66
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF67
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF68
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF69
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF70
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF71
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF72
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF73
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF74
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF75
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF76
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF77
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF78
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF79
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF80
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF81
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF82
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF83
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF84
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF85
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF86
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF87
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF88
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF89
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF90
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF91
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF92
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF93
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF94
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF95
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF96
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF97
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF98
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF99
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF100
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF101
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF102
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF103
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF104
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF105
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF106
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF107
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF108
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF109
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF110
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF111
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF112
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF113
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF114
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF115
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF116
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF117
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF118
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF119
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF120
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF121
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF122
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF123
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF124
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF125
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF126
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF127
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF128
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF129
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF130
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF131
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF132
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF133
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF134
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF135
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF136
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF137
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF138
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF139
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF140
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF141
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF142
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF143
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF144
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF145
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF146
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF147
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF148
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF149
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF150
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF151
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF152
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF153
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF154
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF155
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF156
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF157
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF158
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF159
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF160
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF161
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF162
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF163
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF164
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF165
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF166
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF167
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF168
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF169
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF170
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF171
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF172
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF173
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF174
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF175
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF176
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF177
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF178
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF179
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF180
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF181
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF182
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF183
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF184
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF185
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF186
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF187
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF188
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF189
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF190
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT410
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT411
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT412
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT413
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT414
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT415
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT416
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT417
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT418
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT419
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT420
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT421
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT422
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT423
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT424
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT425
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT426
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT427
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT428
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT429
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT430
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT431
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT432
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT433
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT434
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT435
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT436
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT437
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT438
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT439
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT440
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT441
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT442
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT443
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT444
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT445
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT446
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT447
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT448
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT449
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT450
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT451
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT452
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT453
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT454
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT455
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT456
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT457
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT458
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT459
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT460
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT461
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT462
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT463
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT464
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT465
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT466
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT467
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT468
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT469
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT470
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT471
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT472
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT473
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT474
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT475
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT476
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT477
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT478
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT479
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT480
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT481
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT482
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT483
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT484
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT485
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT486
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT487
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT488
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT489
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT490
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT491
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT492
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT493
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT494
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT495
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT496
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT497
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT498
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT499
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4100
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4101
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4102
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4103
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4104
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4105
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4106
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4107
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4108
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4109
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4110
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4111
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4112
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4113
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4114
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4115
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4116
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4117
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4118
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4119
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4120
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4121
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4122
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4123
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4124
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4125
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4126
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4127
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4128
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4129
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4130
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4131
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4132
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4133
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4134
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4135
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4136
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4137
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4138
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4139
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4140
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4141
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4142
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4143
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4144
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4145
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4146
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4147
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4148
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4149
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4150
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4151
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4152
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4153
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4154
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4155
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4156
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4157
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4158
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4159
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4160
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4161
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4162
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4163
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4164
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4165
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4166
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4167
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4168
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4169
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4170
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4171
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4172
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4173
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4174
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4175
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4176
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4177
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4178
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4179
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4180
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4181
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4182
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4183
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4184
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4185
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4186
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4187
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4188
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4189
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4190
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4191
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4192
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4193
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4194
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4195
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4196
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4197
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4198
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4199
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4200
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4201
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4202
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4203
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4204
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4205
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4206
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4207
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4208
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4209
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4210
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4211
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4212
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4213
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4214
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4215
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4216
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4217
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4218
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4219
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4220
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4221
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4222
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4223
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4224
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4225
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4226
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4227
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4228
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4229
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4230
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4231
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4232
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4233
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4234
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4235
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4236
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4237
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4238
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4239
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4240
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4241
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4242
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4243
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4244
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4245
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4246
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4247
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4248
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4249
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4250
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4251
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4252
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4253
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4254
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4255
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4256
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4257
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4258
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4259
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4260
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4261
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4262
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4263
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4264
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4265
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4266
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4267
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4268
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4269
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4270
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4271
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4272
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4273
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4274
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4275
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4276
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4277
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4278
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4279
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4280
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4281
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4282
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4283
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4284
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4285
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4286
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4287
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4288
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4289
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4290
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4291
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4292
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4293
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4294
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4295
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4296
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4297
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4298
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4299
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4300
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4301
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4302
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4303
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4304
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4305
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4306
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4307
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4308
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4309
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4310
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4311
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4312
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4313
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4314
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4315
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4316
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4317
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4318
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4319
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4320
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4321
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4322
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4323
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4324
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4325
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4326
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4327
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4328
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4329
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4330
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4331
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4332
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4333
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4334
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4335
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4336
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4337
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4338
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4339
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4340
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4341
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4342
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4343
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4344
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4345
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4346
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4347
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4348
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4349
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4350
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4351
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4352
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE0
// module not written out since it is a black box. 
//

