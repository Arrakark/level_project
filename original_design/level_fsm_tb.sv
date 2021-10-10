`timescale 1ns/100ps
/*
Description:
  An FSM testbench for the bubble level FSM. Emulates the functionality of three different states of I2C
  controller:
    A perfectly working controller
    A controller that errors on the read
    A controller that errors on the write

  Test bench tests:
    All delays
    All rx_arb errors checks
    One write state from the accelerometer to the LEDs


DUT Inputs:
  clk_i                     - Clock
  reset_i                   - Active high reset
  i2c_busy_i                - Logic high indicates that the I2C bus is busy
  i2c_rxak_i                - Logic low indicates that the I2C slave devicereceived and 
                              acknowledged the I2C transfer
  i2c_arb_lost_i            - Logic high indicates that there is arbitration lost in the I2C transfer
  i2c_write_done_i          - Logic high indicates that I2C master write data is 
                              sent and ready to accept by I2C slave device
  i2c_data_out_valid_i      - Logic high indicates that I2C master read data is valid and ready to read
  i2c_data_out_i            - Read data output from the I2C core


DUT Outputs:
  i2c_write_o               - Write to slave strobe high
  i2c_read_o                - Read from slave strobe high
  i2c_slave_addr_o          - Address of slave in 8bit format. Add trailing zero to use 7-bit addressing.
  i2c_din_o                 - Data read from slave
  i2c_command_byte_o        - Command byte sent to slave. (Register to read from)
  i2c_num_bytes_o           - Number of bytes of data to write or read. Includes the 
                              command byte (if sending one byte, i2c_num_bytes_o = 'd2)
  error_led_o               - Active high if an error has occured in state machine; lost bytes, 
                              error writing to slave or reading
  led_o                     - 9 bit bus that lights up based on encoding above
*/


module level_fsm_tb;

  logic        clk_i = 1;
  logic        reset_i;
  logic        i2c_busy_i;
  logic        i2c_rxak_i;
  logic        i2c_arb_lost_i;
  logic        i2c_write_done_i;
  logic        i2c_data_out_valid_i;
  logic [7:0]  i2c_data_out_i;

  logic        i2c_write_o;
  logic        i2c_read_o;
  logic [7:0]  i2c_slave_addr_o;
  logic [7:0]  i2c_din_o;
  logic [7:0]  i2c_command_byte_o;
  logic [7:0]  i2c_num_bytes_o;

  logic        error_led_o;
  logic [8:0]  led_o;

  level_fsm dut (
    .clk_i,
    .reset_i,
    .i2c_busy_i,
    .i2c_rxak_i,
    .i2c_arb_lost_i,
    .i2c_write_done_i,
    .i2c_data_out_valid_i,
    .i2c_data_out_i,
    .i2c_write_o,
    .i2c_read_o,
    .i2c_slave_addr_o,
    .i2c_din_o,
    .i2c_command_byte_o,
    .i2c_num_bytes_o,
    .error_led_o,
    .led_o
  );

  initial
  begin
    $dumpfile("level_fsm_tb.vcd");
    $dumpvars(0,clk_i);
    $dumpvars(1,reset_i);
    $dumpvars(2,i2c_busy_i);
    $dumpvars(4,i2c_rxak_i);
    $dumpvars(5,i2c_arb_lost_i);
    $dumpvars(6,i2c_write_done_i);
    $dumpvars(7,i2c_data_out_valid_i);
    $dumpvars(8,i2c_data_out_i);
    $dumpvars(9,i2c_write_o);
    $dumpvars(10,i2c_read_o);
    $dumpvars(11,i2c_slave_addr_o);
    $dumpvars(12,i2c_din_o);
    $dumpvars(13,i2c_command_byte_o);
    $dumpvars(14,i2c_num_bytes_o);
    $dumpvars(15,error_led_o);
    $dumpvars(16,led_o);
  end

  always #0.5 clk_i = ~clk_i;

  initial begin
    /////////////////////////////
    //////   Reset/Begin   //////
    /////////////////////////////
    // full reset with busy line
    reset_i = 1'b0;
    i2c_busy_i = 1'b1;
    i2c_rxak_i = 1'b0;
    i2c_arb_lost_i = 1'b0;
    i2c_write_done_i = 1'b0;
    i2c_data_out_valid_i = 1'b0;
    i2c_data_out_i = 8'b0;
    #1;
    reset_i = 1'b1;
    #1;
    reset_i = 1'b0;
    #1;
    /////////////////////////////
    ///   Normal operation   ////
    /////////////////////////////
    // in this section we test the normal operation of the I2C controller
    // that no errors are thrown, read, write, delays work
    // correct LED pattern shows up
    // and that we loop reading

    // make sure writing has not started
    assert(i2c_din_o == 8'b0);
    assert(i2c_command_byte_o == 8'b0);
    assert(i2c_slave_addr_o == 8'b0);
    assert(i2c_num_bytes_o == 8'b0);
    #1;
    i2c_busy_i = 1'b0; // now I2C is free
    #1;
    assert(i2c_din_o == 8'b0); // assert that correct data is going to be written
    assert(i2c_command_byte_o == 8'h6b);
    assert(i2c_slave_addr_o == {7'h68, 1'b0});
    assert(i2c_num_bytes_o == 8'd2);
    #1;
    assert(i2c_write_o == 1'b1); // assert write stobe
    #1;
    i2c_busy_i = 1'b1; // assert that we are waiting for chip to be not busy
    assert(i2c_write_o == 1'b0);
    assert(error_led_o == 1'b0);
    #1;
    i2c_busy_i = 1'b1; // assert that we are waiting for chip to be not busy
    assert(i2c_write_o == 1'b0);
    assert(error_led_o == 1'b0);
    #1;
    i2c_busy_i = 1'b0; // make sure we have not errored out yet because we have an ack and no errors
    assert(error_led_o == 1'b0);
    #1;
    assert(error_led_o == 1'b0);
    #1;
    i2c_write_done_i = 1'b1;
    #1; //wait for write to ack
    #1; //verify arb_lost and rxak low
    #1; //ensure busy is low
    assert(i2c_command_byte_o == 8'h3D);
    assert(i2c_slave_addr_o == {7'h68, 1'b0});
    assert(i2c_num_bytes_o == 8'd2);
    #1;
    assert(i2c_read_o == 1'd1);
    #1;
    i2c_busy_i = 1'b1;
    #1;
    #1;
    #1;
    i2c_busy_i = 1'b0;
    i2c_data_out_valid_i = 1'b1;
    i2c_data_out_i = 8'b11111001;
    i2c_arb_lost_i = 1'b0;
    i2c_rxak_i = 1'b1;
    //wait for valid data and busy low
    #1; //wait for busy to go low
    #1; //verify data out is valid
    #1; //verify no lost and rx did not ack, register the data
    assert(led_o == 9'd128); // assert that led output is correct
    #1; //finished test under standard conditions. since busy is low, we assert the lines again

    /////////////////////////////
    ////   Error on read     ////
    /////////////////////////////
    // in this section we confirm that upon a read error the FSM goes into error state

    assert(i2c_command_byte_o == 8'h3D);
    assert(i2c_slave_addr_o == {7'h68, 1'b0});
    assert(i2c_num_bytes_o == 8'd2);
    #1; 
    assert(i2c_read_o == 1'd1); // we strobe read again
    i2c_busy_i = 1'b1;
    i2c_data_out_valid_i = 1'b0;
    #1;
    #1;// we are now waiting for busy
    #1;
    #1;
    #1;
    i2c_busy_i = 1'b0;
    #1;
    i2c_data_out_valid_i = 1'b1;
    i2c_arb_lost_i = 1'b1;
    i2c_rxak_i = 1'b0;
    #1; // verify data out valid
    #1; // verify errors; we should get out because we lost bits
    assert(error_led_o == 1'd1); // we should get an error
    #1;
    #1;
    #1;
    #1;
    reset_i = 1'b1;
    #1;
    reset_i = 1'b0;

    /////////////////////////////
    ////   Error on write    ////
    /////////////////////////////
    // in this section we confirm that upon a write error the FSM goes into error state
    assert(i2c_din_o == 8'b0);
    assert(i2c_command_byte_o == 8'b0);
    assert(i2c_slave_addr_o == 8'b0);
    assert(i2c_num_bytes_o == 8'b0);
    #1;
    assert(i2c_din_o == 8'b0); // assert that correct data is going to be written
    assert(i2c_command_byte_o == 8'h6b);
    assert(i2c_slave_addr_o == {7'h68, 1'b0});
    assert(i2c_num_bytes_o == 8'd2);
    #1;
    assert(i2c_write_o == 1'b1); // assert write stobe
    #1;
    i2c_busy_i = 1'b1; // assert that we are waiting for chip to be not busy
    assert(i2c_write_o == 1'b0);
    assert(error_led_o == 1'b0);
    #1;
    i2c_busy_i = 1'b1; // assert that we are waiting for chip to be not busy
    assert(i2c_write_o == 1'b0);
    assert(error_led_o == 1'b0);
    #1;
    i2c_busy_i = 1'b0; // make sure we have not errored out yet because we have an ack and no errors
    assert(error_led_o == 1'b0);
    i2c_write_done_i = 1'b1;
    i2c_arb_lost_i = 1'b1;
    #1; // verify write done
    #1; // verify errors; we should get out because we lost bits
    assert(error_led_o == 1'd1); // we should get an error


    #100 $finish;
  end

endmodule