module level (
  input wire          clk,
  input wire          reset_i,

  output wire         sda_oe,
  output wire         sda_o,
  input  wire         sda_i,
	
  output wire         scl_oe,
  output wire         scl_o,
  input  wire         scl_i,	

  output wire         error_led_o,
  output wire [8:0]   led_o
);

  wire        i2c_busy;
  wire        i2c_rxak;
  wire        i2c_arb_lost;
  wire        i2c_write_done;
  wire        i2c_data_out_valid;
  wire [7:0]  i2c_data_out;

  wire        i2c_write;
  wire        i2c_read;
  wire [7:0]  i2c_slave_addr;
  wire [7:0]  i2c_din;
  wire [7:0]  i2c_command_byte;
  wire [7:0]  i2c_num_bytes;


  level_fsm level_inst (
    .clk_i (clk) ,
    .reset_i (~reset_i) ,
    .i2c_busy_i (i2c_busy) ,
    .i2c_rxak_i (i2c_rxak) ,
    .i2c_arb_lost_i (i2c_arb_lost) ,
    .i2c_write_done_i (i2c_write_done) ,
    .i2c_data_out_valid_i (i2c_data_out_valid) ,
    .i2c_data_out_i (i2c_data_out) ,
    .i2c_write_o (i2c_write) ,
    .i2c_read_o (i2c_read) ,
    .i2c_slave_addr_o (i2c_slave_addr) ,
    .i2c_din_o (i2c_din) ,
    .i2c_command_byte_o (i2c_command_byte) ,
    .i2c_num_bytes_o (i2c_num_bytes) ,
    .error_led_o (error_led_o) ,
    .led_o (led_o) 
  );

  i2c_interface u_i2c_interface(
    .clk ( clk ),
    .rst ( ~reset_i ),

    .mst_scl_in ( scl_i ),
    .mst_sda_in ( sda_i ),
    .mst_scl_out ( scl_o ),
    .mst_sda_out ( sda_o ),
    .mst_sda_oe ( sda_oe ),
    .mst_scl_oe ( scl_oe ),

    
    .i2c_busy ( i2c_busy ),
    .i2c_soft_rst ( ~reset_i ),
    .i2c_rxak ( i2c_rxak ),
    .i2c_arb_lost ( i2c_arb_lost ),
    .i2c_arb_lost_clr ( reset_i ),
    .mst_din ( i2c_din ),
    .i2c_slave_addr ( i2c_slave_addr ),

    .mst_command_byte ( i2c_command_byte ),
    .mst_data_out ( i2c_data_out ),
    .mst_num_bytes ( i2c_num_bytes ),
    .mst_read ( i2c_read ),
    .mst_write ( i2c_write ),
    .mst_write_done ( i2c_write_done ),
    .mst_data_out_valid ( i2c_data_out_valid )
  );


  
endmodule