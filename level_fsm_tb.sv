`timescale 1ns/100ps

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
    assert(i2c_din_o == 8'b0);
    assert(i2c_command_byte_o == 8'b0);
    assert(i2c_slave_addr_o == 8'b0);
    assert(i2c_num_bytes_o == 8'b0);
    #1;
    i2c_busy_i = 1'b0;
    #1;
    assert(i2c_din_o == 8'b0);
    assert(i2c_command_byte_o == 8'h1C);
    assert(i2c_slave_addr_o == 8'b01101000);
    assert(i2c_num_bytes_o == 8'd8);
    #1;
    assert(i2c_write_o == 1'b1);
    #1;
    i2c_busy_i = 1'b1;
    assert(i2c_write_o == 1'b0);
    assert(error_led_o == 1'b0);
    #1;
    i2c_busy_i = 1'b1;
    assert(i2c_write_o == 1'b0);
    assert(error_led_o == 1'b0);
    #1;
    i2c_busy_i = 1'b0;
    assert(error_led_o == 1'b0);
    #1;
    assert(error_led_o == 1'b0);
    #1;
    i2c_write_done_i = 1'b1;
    #1; //wait for write to ack
    #1; //verify arb_lost and rxak low
    #1; //ensure busy is low
    assert(i2c_command_byte_o == 8'h3B);
    assert(i2c_slave_addr_o == 8'b01101000);
    assert(i2c_num_bytes_o == 8'd8);
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
    #1; //verify no lost and rx ack 
    #1; //store data in reg
    #1; //do calc
    assert(led_o == 9'd384);
    #1; //ensure busy is low
    assert(i2c_command_byte_o == 8'h3B);
    assert(i2c_slave_addr_o == 8'b01101000);
    assert(i2c_num_bytes_o == 8'd8);
    #1;
    assert(i2c_read_o == 1'b1);
    #100 $finish;
  end

endmodule