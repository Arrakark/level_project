// FSM for level

module level_fsm (
  input wire          clk_i,
  input wire          reset_i,

  input wire          i2c_busy_i,
  input wire          i2c_rxak_i,
  input wire          i2c_arb_lost_i,
  input wire          i2c_write_done_i,
  input wire          i2c_data_out_valid_i,
  input wire  [7:0]   i2c_data_out_i,

  output wire         i2c_write_o,
  output wire         i2c_read_o,
  output logic [7:0]  i2c_slave_addr_o,
  output logic [7:0]  i2c_din_o,
  output logic [7:0]  i2c_command_byte_o,
  output logic [7:0]  i2c_num_bytes_o,

  output wire         error_led_o,
  output logic [8:0]  led_o
);

logic signed [7:0] raw_buffer;
localparam slave_address = {7'h68, 1'b0};
localparam accel_register = 8'h3B;
localparam wake_register = 8'h6b;

typedef enum logic [6:0] { 
  ENSURE_BUSY_1 =      7'b0000_000,
  ASSIGN_WRITE_2 =     7'b0001_000,
  ASSERT_WRITE_3 =     7'b0010_001,
  WAIT_FOR_BUSY_4 =    7'b0011_000,
  WAIT_FOR_DONE_5 =    7'b0100_000,
  VERIFY_6 =           7'b0101_000,
  ENSURE_BUSY_7 =      7'b0110_000,
  ASSIGN_WRITE_8 =     7'b0111_000,
  ASSERT_READ_9 =      7'b1000_010,
  WAIT_FOR_BUSY_10 =   7'b1001_000,
  WAIT_FOR_VALID_11 =  7'b1010_000,
  VERIFY_12 =          7'b1011_000,
  LED_OPERATION_13 =   7'b1100_000,
  ERROR =              7'b1101_100
} state_e;

state_e state;

assign i2c_write_o = state[0];
assign i2c_read_o = state[1];
assign error_led_o = state[2];

always @(posedge clk_i) begin
  if (reset_i) begin 
    state <= ENSURE_BUSY_1;
    led_o <= 9'b000000000;
    raw_buffer <= 8'b00000000;
    i2c_din_o <= 8'b00000000;
    i2c_command_byte_o <= 8'h0;
    i2c_slave_addr_o <= 8'b0;
    i2c_num_bytes_o <= 8'd0;
  end
  else begin
    case(state)
      ENSURE_BUSY_1: begin
        if (i2c_busy_i === 1) state <= ENSURE_BUSY_1;
        else begin 
          state <= ASSIGN_WRITE_2;
          //assign DIN, command_byte, slave_addr, and num_bytes here
          i2c_din_o <= 8'b0000_0000;
          i2c_command_byte_o <= wake_register;
          i2c_slave_addr_o <= slave_address;
          i2c_num_bytes_o <= 8'd2;
        end
      end
      ASSIGN_WRITE_2: state <= ASSERT_WRITE_3;
      ASSERT_WRITE_3: state <= WAIT_FOR_BUSY_4;
      WAIT_FOR_BUSY_4: begin
        if (i2c_busy_i === 1) state <= WAIT_FOR_DONE_5;
        else state <= WAIT_FOR_BUSY_4;
      end
      WAIT_FOR_DONE_5: begin
        if (i2c_write_done_i === 1) state <= VERIFY_6;
        else state <= WAIT_FOR_DONE_5;
      end
      VERIFY_6: begin
        if (i2c_arb_lost_i === 0 && i2c_rxak_i === 0) state <= ENSURE_BUSY_7;
        else state <= ERROR;
      end
      ENSURE_BUSY_7: begin
        if (i2c_busy_i === 1) state <= ENSURE_BUSY_7;
        else begin 
          state <= ASSIGN_WRITE_8;
          //assign command_byte, slave_addr, and num_bytes here
          i2c_command_byte_o <= accel_register;
          i2c_slave_addr_o <= slave_address;
          i2c_num_bytes_o <= 8'd2;
        end
      end
      ASSIGN_WRITE_8: begin 
        state <= ASSERT_READ_9;
      end
      ASSERT_READ_9: state <= WAIT_FOR_BUSY_10;
      WAIT_FOR_BUSY_10: begin
        if (i2c_busy_i === 0) state <= WAIT_FOR_BUSY_10;
        else state <= WAIT_FOR_VALID_11;
      end
      WAIT_FOR_VALID_11: begin
        if (i2c_data_out_valid_i === 1) state <= VERIFY_12;
        else state <= WAIT_FOR_VALID_11;
      end
      VERIFY_12: begin
        if (i2c_arb_lost_i === 0 && i2c_rxak_i === 1) begin 
          state <= LED_OPERATION_13;
          raw_buffer <= i2c_data_out_i; // 0.5g offset for 90 degree switch in axis
        end
        else state <= ERROR;
      end
      LED_OPERATION_13: begin
        // enter the calculation that associates the LEDs with their respective tilt levels here
        if (raw_buffer < 8'sb11111000)
          led_o <= 9'd256;
        else if (raw_buffer < 8'sb11111001)
          led_o <= 9'd384;
        else if (raw_buffer < 8'sb11111010)
          led_o <= 9'd128;
        else if (raw_buffer < 8'sb11111011)
          led_o <= 9'd192;
        else if (raw_buffer < 8'sb11111100)
          led_o <= 9'd64;
        else if (raw_buffer < 8'sb11111101)
          led_o <= 9'd96;
        else if (raw_buffer < 8'sb11111110)
          led_o <= 9'd32;
        else if (raw_buffer < 8'sb11111111)
          led_o <= 9'd48;
        else if (raw_buffer < 8'sb00000000)
          led_o <= 9'd16;
        else if (raw_buffer < 8'sb00000001)
          led_o <= 9'd24;
        else if (raw_buffer < 8'sb00000010)
          led_o <= 9'd8;
        else if (raw_buffer < 8'sb00000011)
          led_o <= 9'd12;
        else if (raw_buffer <  8'sb00000100)
          led_o <= 9'd4;
        else if (raw_buffer < 8'sb00000101)
          led_o <= 9'd6;
        else if (raw_buffer < 8'sb00000110)
          led_o <= 9'd2;
        else if (raw_buffer < 8'sb00000111)
          led_o <= 9'd3;
        else if (raw_buffer < 8'sb00001000)
          led_o <= 9'd1;
        else 
          led_o <= 9'd1;
        state <= ENSURE_BUSY_7;
      end
      ERROR: begin
        state <= ERROR;
      end
      default:  state <= ENSURE_BUSY_1;
    endcase
  end
end
  
endmodule



