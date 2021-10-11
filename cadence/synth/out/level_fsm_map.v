
// Generated by Cadence Encounter(R) RTL Compiler RC14.13 - v14.10-s027_1

// Verification Directory fv/level_fsm 

module level_fsm(clk_i, reset_i, i2c_busy_i, i2c_rxak_i,
     i2c_arb_lost_i, i2c_write_done_i, i2c_data_out_valid_i,
     i2c_data_out_i, i2c_write_o, i2c_read_o, i2c_slave_addr_o,
     i2c_din_o, i2c_command_byte_o, i2c_num_bytes_o, error_led_o,
     led_o);
  input clk_i, reset_i, i2c_busy_i, i2c_rxak_i, i2c_arb_lost_i,
       i2c_write_done_i, i2c_data_out_valid_i;
  input [7:0] i2c_data_out_i;
  output i2c_write_o, i2c_read_o, error_led_o;
  output [7:0] i2c_slave_addr_o, i2c_din_o, i2c_command_byte_o,
       i2c_num_bytes_o;
  output [8:0] led_o;
  wire clk_i, reset_i, i2c_busy_i, i2c_rxak_i, i2c_arb_lost_i,
       i2c_write_done_i, i2c_data_out_valid_i;
  wire [7:0] i2c_data_out_i;
  wire i2c_write_o, i2c_read_o, error_led_o;
  wire [7:0] i2c_slave_addr_o, i2c_din_o, i2c_command_byte_o,
       i2c_num_bytes_o;
  wire [8:0] led_o;
  wire [6:0] state;
  wire [7:0] raw_buffer;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  wire n_16, n_17, n_18, n_19, n_20, n_21, n_22, n_23;
  wire n_24, n_25, n_26, n_27, n_28, n_29, n_30, n_31;
  wire n_32, n_33, n_34, n_35, n_36, n_37, n_38, n_39;
  wire n_40, n_41, n_42, n_43, n_44, n_45, n_46, n_47;
  wire n_48, n_49, n_50, n_51, n_52, n_53, n_54, n_55;
  wire n_56, n_57, n_58, n_59, n_60, n_61, n_62, n_63;
  wire n_64, n_65, n_66, n_67, n_68, n_69, n_70, n_71;
  wire n_72, n_73, n_74, n_75, n_76, n_77, n_78, n_79;
  wire n_80, n_81, n_82, n_83, n_84, n_85, n_86, n_87;
  wire n_88, n_89, n_90, n_91, n_92, n_93, n_94, n_95;
  wire n_96, n_97, n_98, n_99, n_100, n_101, n_102, n_103;
  wire n_104, n_105, n_106, n_107, n_108, n_109, n_110, n_111;
  wire n_112, n_113, n_114, n_115, n_116, n_117, n_118, n_119;
  wire n_120, n_121, n_122, n_123, n_124, n_125, n_126, n_127;
  wire n_128, n_129, n_130, n_131, n_132, n_133, n_134, n_135;
  wire n_136, n_137, n_138, n_139, n_140, n_142, n_143;
  assign i2c_num_bytes_o[0] = 1'b0;
  assign i2c_num_bytes_o[1] = i2c_slave_addr_o[7];
  assign i2c_num_bytes_o[2] = 1'b0;
  assign i2c_num_bytes_o[3] = 1'b0;
  assign i2c_num_bytes_o[4] = 1'b0;
  assign i2c_num_bytes_o[5] = 1'b0;
  assign i2c_num_bytes_o[6] = 1'b0;
  assign i2c_num_bytes_o[7] = 1'b0;
  assign i2c_command_byte_o[0] = i2c_slave_addr_o[7];
  assign i2c_command_byte_o[1] = i2c_command_byte_o[6];
  assign i2c_command_byte_o[2] = i2c_command_byte_o[4];
  assign i2c_command_byte_o[3] = i2c_slave_addr_o[7];
  assign i2c_command_byte_o[5] = i2c_slave_addr_o[7];
  assign i2c_command_byte_o[7] = 1'b0;
  assign i2c_din_o[0] = 1'b0;
  assign i2c_din_o[1] = 1'b0;
  assign i2c_din_o[2] = 1'b0;
  assign i2c_din_o[3] = 1'b0;
  assign i2c_din_o[4] = 1'b0;
  assign i2c_din_o[5] = 1'b0;
  assign i2c_din_o[6] = 1'b0;
  assign i2c_din_o[7] = 1'b0;
  assign i2c_slave_addr_o[0] = 1'b0;
  assign i2c_slave_addr_o[1] = 1'b0;
  assign i2c_slave_addr_o[2] = 1'b0;
  assign i2c_slave_addr_o[3] = 1'b0;
  assign i2c_slave_addr_o[4] = i2c_slave_addr_o[7];
  assign i2c_slave_addr_o[5] = 1'b0;
  assign i2c_slave_addr_o[6] = i2c_slave_addr_o[7];
  DFFSNQ_X1 \state_reg[3] (.SN (1'b1), .CLK (clk_i), .D (n_143), .Q
       (state[3]));
  NAND3_X1 g3867(.A1 (n_120), .A2 (n_142), .A3 (n_105), .ZN (n_143));
  NOR4_X1 g3869(.A1 (n_140), .A2 (n_68), .A3 (n_110), .A4 (n_54), .ZN
       (n_142));
  DFFSNQ_X1 \i2c_command_byte_o_reg[1] (.SN (1'b1), .CLK (clk_i), .D
       (n_139), .Q (i2c_command_byte_o[6]));
  NAND2_X1 g3898(.A1 (n_138), .A2 (n_57), .ZN (n_140));
  DFFSNQ_X1 \state_reg[4] (.SN (1'b1), .CLK (clk_i), .D (n_135), .Q
       (state[4]));
  DFFSNQ_X1 \led_o_reg[5] (.SN (1'b1), .CLK (clk_i), .D (n_131), .Q
       (led_o[5]));
  DFFSNQ_X1 \i2c_slave_addr_o_reg[4] (.SN (1'b1), .CLK (clk_i), .D
       (n_134), .Q (i2c_slave_addr_o[7]));
  DFFSNQ_X1 \led_o_reg[7] (.SN (1'b1), .CLK (clk_i), .D (n_133), .Q
       (led_o[7]));
  DFFSNQ_X1 \led_o_reg[4] (.SN (1'b1), .CLK (clk_i), .D (n_136), .Q
       (led_o[4]));
  DFFSNQ_X1 \led_o_reg[1] (.SN (1'b1), .CLK (clk_i), .D (n_137), .Q
       (led_o[1]));
  DFFSNQ_X1 \led_o_reg[3] (.SN (1'b1), .CLK (clk_i), .D (n_128), .Q
       (led_o[3]));
  DFFRNQ_X1 \raw_buffer_reg[7] (.RN (1'b1), .CLK (clk_i), .D (n_126),
       .Q (raw_buffer[7]));
  DFFRNQ_X1 \raw_buffer_reg[1] (.RN (1'b1), .CLK (clk_i), .D (n_118),
       .Q (raw_buffer[1]));
  DFFRNQ_X1 \raw_buffer_reg[2] (.RN (1'b1), .CLK (clk_i), .D (n_117),
       .Q (raw_buffer[2]));
  DFFRNQ_X1 \raw_buffer_reg[3] (.RN (1'b1), .CLK (clk_i), .D (n_116),
       .Q (raw_buffer[3]));
  DFFRNQ_X1 \raw_buffer_reg[4] (.RN (1'b1), .CLK (clk_i), .D (n_114),
       .Q (raw_buffer[4]));
  DFFRNQ_X1 \raw_buffer_reg[5] (.RN (1'b1), .CLK (clk_i), .D (n_115),
       .Q (raw_buffer[5]));
  DFFRNQ_X1 \raw_buffer_reg[6] (.RN (1'b1), .CLK (clk_i), .D (n_113),
       .Q (raw_buffer[6]));
  DFFRNQ_X1 \raw_buffer_reg[0] (.RN (1'b1), .CLK (clk_i), .D (n_119),
       .Q (raw_buffer[0]));
  DFFSNQ_X1 \state_reg[6] (.SN (1'b1), .CLK (clk_i), .D (n_121), .Q
       (state[6]));
  DFFSNQ_X1 \led_o_reg[6] (.SN (1'b1), .CLK (clk_i), .D (n_125), .Q
       (led_o[6]));
  OAI22_X1 g3904(.A1 (n_107), .A2 (reset_i), .B1 (n_4), .B2 (n_71), .ZN
       (n_139));
  DFFSNQ_X1 \led_o_reg[2] (.SN (1'b1), .CLK (clk_i), .D (n_124), .Q
       (led_o[2]));
  AOI22_X1 g3921(.A1 (n_99), .A2 (n_83), .B1 (state[4]), .B2 (n_109),
       .ZN (n_138));
  OAI22_X1 g3922(.A1 (n_127), .A2 (n_129), .B1 (n_0), .B2 (n_132), .ZN
       (n_137));
  OAI21_X1 g3899(.A1 (n_22), .A2 (n_122), .B (n_112), .ZN (n_136));
  NAND2_X1 g3883(.A1 (n_111), .A2 (n_76), .ZN (n_135));
  AOI21_X1 g3901(.A1 (n_3), .A2 (n_102), .B (reset_i), .ZN (n_134));
  OAI22_X1 g3902(.A1 (n_130), .A2 (raw_buffer[2]), .B1 (n_1), .B2
       (n_132), .ZN (n_133));
  OAI22_X1 g3903(.A1 (n_130), .A2 (n_129), .B1 (n_12), .B2 (n_132), .ZN
       (n_131));
  DFFSNQ_X1 \state_reg[2] (.SN (1'b1), .CLK (clk_i), .D (n_106), .Q
       (error_led_o));
  DFFSNQ_X1 \i2c_command_byte_o_reg[2] (.SN (1'b1), .CLK (clk_i), .D
       (n_108), .Q (i2c_command_byte_o[4]));
  OAI22_X1 g3920(.A1 (n_127), .A2 (raw_buffer[2]), .B1 (n_13), .B2
       (n_132), .ZN (n_128));
  NOR2_X1 g3897(.A1 (n_88), .A2 (reset_i), .ZN (n_126));
  OAI22_X1 g3924(.A1 (n_123), .A2 (n_81), .B1 (n_14), .B2 (n_132), .ZN
       (n_125));
  OAI22_X1 g3934(.A1 (n_123), .A2 (n_122), .B1 (n_7), .B2 (n_132), .ZN
       (n_124));
  NAND2_X1 g3910(.A1 (n_120), .A2 (n_103), .ZN (n_121));
  NOR2_X1 g3890(.A1 (n_97), .A2 (reset_i), .ZN (n_119));
  NOR2_X1 g3891(.A1 (n_96), .A2 (reset_i), .ZN (n_118));
  NOR2_X1 g3892(.A1 (n_93), .A2 (reset_i), .ZN (n_117));
  NOR2_X1 g3893(.A1 (n_92), .A2 (reset_i), .ZN (n_116));
  NOR2_X1 g3894(.A1 (n_90), .A2 (reset_i), .ZN (n_115));
  NOR2_X1 g3895(.A1 (n_91), .A2 (reset_i), .ZN (n_114));
  NOR2_X1 g3896(.A1 (n_89), .A2 (reset_i), .ZN (n_113));
  AOI22_X1 g3923(.A1 (n_27), .A2 (n_104), .B1 (led_o[4]), .B2 (n_61),
       .ZN (n_112));
  NOR4_X1 g3900(.A1 (n_110), .A2 (n_62), .A3 (n_109), .A4 (n_74), .ZN
       (n_111));
  OAI21_X1 g3928(.A1 (n_69), .A2 (reset_i), .B (n_84), .ZN (n_108));
  AOI21_X1 g3929(.A1 (i2c_command_byte_o[6]), .A2 (n_98), .B (n_101),
       .ZN (n_107));
  DFFSNQ_X1 \state_reg[5] (.SN (1'b1), .CLK (clk_i), .D (n_80), .Q
       (state[5]));
  DFFSNQ_X1 \led_o_reg[8] (.SN (1'b1), .CLK (clk_i), .D (n_87), .Q
       (led_o[8]));
  NAND2_X1 g3909(.A1 (n_79), .A2 (n_105), .ZN (n_106));
  DFFSNQ_X1 \led_o_reg[0] (.SN (1'b1), .CLK (clk_i), .D (n_77), .Q
       (led_o[0]));
  NAND2_X1 g3925(.A1 (n_100), .A2 (n_104), .ZN (n_130));
  NOR3_X1 g3927(.A1 (n_85), .A2 (n_86), .A3 (n_55), .ZN (n_103));
  AOI21_X1 g3931(.A1 (n_17), .A2 (n_82), .B (n_101), .ZN (n_102));
  NAND2_X1 g3936(.A1 (n_100), .A2 (n_78), .ZN (n_127));
  NAND2_X1 g3940(.A1 (n_98), .A2 (n_64), .ZN (n_99));
  AOI22_X1 g3912(.A1 (n_95), .A2 (i2c_data_out_i[0]), .B1
       (raw_buffer[0]), .B2 (n_94), .ZN (n_97));
  AOI22_X1 g3913(.A1 (n_95), .A2 (i2c_data_out_i[1]), .B1
       (raw_buffer[1]), .B2 (n_94), .ZN (n_96));
  AOI22_X1 g3914(.A1 (n_95), .A2 (i2c_data_out_i[2]), .B1
       (raw_buffer[2]), .B2 (n_94), .ZN (n_93));
  AOI22_X1 g3915(.A1 (n_95), .A2 (i2c_data_out_i[3]), .B1
       (raw_buffer[3]), .B2 (n_94), .ZN (n_92));
  AOI22_X1 g3916(.A1 (n_95), .A2 (i2c_data_out_i[4]), .B1
       (raw_buffer[4]), .B2 (n_94), .ZN (n_91));
  AOI22_X1 g3917(.A1 (n_95), .A2 (i2c_data_out_i[5]), .B1
       (raw_buffer[5]), .B2 (n_94), .ZN (n_90));
  AOI22_X1 g3918(.A1 (n_95), .A2 (i2c_data_out_i[6]), .B1
       (raw_buffer[6]), .B2 (n_94), .ZN (n_89));
  AOI22_X1 g3919(.A1 (n_95), .A2 (i2c_data_out_i[7]), .B1
       (raw_buffer[7]), .B2 (n_94), .ZN (n_88));
  AOI21_X1 g3926(.A1 (state[6]), .A2 (n_56), .B (n_66), .ZN (n_120));
  OAI22_X1 g3930(.A1 (n_33), .A2 (n_75), .B1 (n_2), .B2 (n_132), .ZN
       (n_87));
  DFFSNQ_X1 \state_reg[1] (.SN (1'b1), .CLK (clk_i), .D (n_86), .Q
       (i2c_read_o));
  AOI21_X1 g3933(.A1 (n_50), .A2 (n_85), .B (n_73), .ZN (n_105));
  NAND2_X1 g3937(.A1 (n_83), .A2 (n_82), .ZN (n_84));
  INV_X1 g3938(.I (n_104), .ZN (n_81));
  NAND4_X1 g3911(.A1 (n_79), .A2 (n_51), .A3 (n_59), .A4 (n_49), .ZN
       (n_80));
  INV_X1 g3958(.I (n_78), .ZN (n_122));
  OAI22_X1 g3932(.A1 (n_29), .A2 (n_76), .B1 (n_6), .B2 (n_132), .ZN
       (n_77));
  NOR2_X1 g3939(.A1 (n_32), .A2 (n_75), .ZN (n_104));
  AOI21_X1 g3943(.A1 (n_70), .A2 (n_72), .B (n_42), .ZN (n_74));
  INV_X1 g3947(.I (n_82), .ZN (n_98));
  NOR3_X1 g3959(.A1 (n_28), .A2 (raw_buffer[7]), .A3 (n_76), .ZN
       (n_78));
  INV_X1 g3941(.I (n_94), .ZN (n_95));
  NOR3_X1 g3944(.A1 (n_72), .A2 (n_71), .A3 (n_65), .ZN (n_73));
  NOR2_X1 g3948(.A1 (n_70), .A2 (i2c_busy_i), .ZN (n_82));
  NOR2_X1 g3950(.A1 (n_70), .A2 (n_71), .ZN (n_86));
  NAND2_X1 g3951(.A1 (i2c_command_byte_o[4]), .A2 (n_67), .ZN (n_69));
  NOR2_X1 g3955(.A1 (n_67), .A2 (reset_i), .ZN (n_68));
  INV_X1 g3961(.I (n_79), .ZN (n_66));
  NAND3_X1 g3942(.A1 (n_63), .A2 (state[3]), .A3 (n_65), .ZN (n_94));
  NAND2_X1 g3946(.A1 (raw_buffer[7]), .A2 (n_60), .ZN (n_75));
  NAND2_X1 g3949(.A1 (n_63), .A2 (i2c_data_out_valid_i), .ZN (n_64));
  NAND3_X1 g3962(.A1 (state[6]), .A2 (state[5]), .A3 (n_43), .ZN
       (n_79));
  DFFSNQ_X1 \state_reg[0] (.SN (1'b1), .CLK (clk_i), .D (n_47), .Q
       (i2c_write_o));
  NOR2_X1 g3952(.A1 (n_45), .A2 (n_52), .ZN (n_62));
  INV_X1 g3953(.I (n_132), .ZN (n_61));
  NAND2_X1 g3966(.A1 (n_58), .A2 (state[4]), .ZN (n_70));
  INV_X1 g3968(.I (n_60), .ZN (n_76));
  INV_X1 g3970(.I (n_101), .ZN (n_67));
  OAI21_X1 g3972(.A1 (n_83), .A2 (n_15), .B (n_58), .ZN (n_59));
  INV_X1 g3973(.I (n_63), .ZN (n_72));
  NAND3_X1 g3977(.A1 (n_58), .A2 (n_36), .A3 (i2c_write_done_i), .ZN
       (n_57));
  NAND2_X1 g3954(.A1 (n_41), .A2 (n_18), .ZN (n_132));
  NOR4_X1 g3956(.A1 (state[5]), .A2 (i2c_write_o), .A3 (error_led_o),
       .A4 (n_31), .ZN (n_56));
  NOR3_X1 g3957(.A1 (n_53), .A2 (n_40), .A3 (reset_i), .ZN (n_55));
  NOR3_X1 g3960(.A1 (n_53), .A2 (n_52), .A3 (i2c_busy_i), .ZN (n_54));
  NOR3_X1 g3964(.A1 (n_44), .A2 (n_71), .A3 (n_16), .ZN (n_85));
  OR4_X1 g3965(.A1 (n_46), .A2 (n_50), .A3 (n_71), .A4 (n_38), .Z
       (n_51));
  NOR2_X1 g3967(.A1 (n_48), .A2 (n_71), .ZN (n_109));
  NOR2_X1 g3969(.A1 (n_35), .A2 (n_49), .ZN (n_60));
  NOR2_X1 g3971(.A1 (n_24), .A2 (n_48), .ZN (n_101));
  NOR2_X1 g3974(.A1 (n_53), .A2 (n_50), .ZN (n_63));
  NOR3_X1 g3976(.A1 (n_46), .A2 (state[6]), .A3 (n_52), .ZN (n_47));
  AOI21_X1 g3978(.A1 (n_39), .A2 (i2c_busy_i), .B (n_34), .ZN (n_45));
  INV_X1 g3984(.I (n_44), .ZN (n_58));
  NOR4_X1 g3986(.A1 (i2c_read_o), .A2 (n_11), .A3 (i2c_write_o), .A4
       (n_52), .ZN (n_43));
  NOR4_X1 g3963(.A1 (n_26), .A2 (n_50), .A3 (state[6]), .A4 (n_42), .ZN
       (n_110));
  NAND3_X1 g3979(.A1 (n_37), .A2 (n_40), .A3 (state[6]), .ZN (n_41));
  NAND2_X1 g3980(.A1 (n_39), .A2 (n_38), .ZN (n_48));
  NAND2_X1 g3982(.A1 (n_37), .A2 (n_36), .ZN (n_49));
  NAND2_X1 g3983(.A1 (n_39), .A2 (state[6]), .ZN (n_53));
  NAND2_X1 g3985(.A1 (n_37), .A2 (n_35), .ZN (n_44));
  INV_X1 g3988(.I (n_39), .ZN (n_46));
  NOR4_X1 g3994(.A1 (n_30), .A2 (state[6]), .A3 (i2c_rxak_i), .A4
       (i2c_arb_lost_i), .ZN (n_34));
  NOR2_X1 g3981(.A1 (n_23), .A2 (n_32), .ZN (n_33));
  NAND2_X1 g3987(.A1 (i2c_read_o), .A2 (n_36), .ZN (n_31));
  NOR2_X1 g3989(.A1 (n_30), .A2 (state[5]), .ZN (n_39));
  NOR2_X1 g3990(.A1 (n_30), .A2 (n_25), .ZN (n_37));
  NAND2_X1 g4000(.A1 (n_50), .A2 (n_19), .ZN (n_52));
  OAI21_X1 g3975(.A1 (n_28), .A2 (n_27), .B (n_10), .ZN (n_29));
  NAND3_X1 g3991(.A1 (n_25), .A2 (n_21), .A3 (i2c_write_o), .ZN (n_26));
  AOI22_X1 g3995(.A1 (n_20), .A2 (raw_buffer[2]), .B1 (n_129), .B2
       (raw_buffer[1]), .ZN (n_123));
  NOR2_X1 g3996(.A1 (n_24), .A2 (reset_i), .ZN (n_36));
  INV_X1 g3998(.I (n_22), .ZN (n_23));
  NAND2_X1 g3997(.A1 (n_21), .A2 (n_5), .ZN (n_30));
  NAND2_X1 g3999(.A1 (n_20), .A2 (n_129), .ZN (n_22));
  INV_X1 g4003(.I (n_24), .ZN (n_40));
  INV_X1 g4013(.I (n_71), .ZN (n_19));
  NAND4_X1 g3992(.A1 (raw_buffer[6]), .A2 (raw_buffer[4]), .A3
       (raw_buffer[5]), .A4 (raw_buffer[3]), .ZN (n_32));
  OR4_X1 g3993(.A1 (raw_buffer[5]), .A2 (raw_buffer[3]), .A3
       (raw_buffer[6]), .A4 (raw_buffer[4]), .Z (n_28));
  NOR2_X1 g4001(.A1 (n_8), .A2 (i2c_arb_lost_i), .ZN (n_65));
  NOR2_X1 g4005(.A1 (n_9), .A2 (n_129), .ZN (n_27));
  INV_X1 g4010(.I (n_83), .ZN (n_42));
  NAND2_X1 g4014(.A1 (state[3]), .A2 (n_18), .ZN (n_71));
  NAND2_X1 g4004(.A1 (n_50), .A2 (n_17), .ZN (n_24));
  NOR2_X1 g4002(.A1 (raw_buffer[1]), .A2 (raw_buffer[0]), .ZN (n_20));
  NAND2_X1 g4007(.A1 (raw_buffer[1]), .A2 (raw_buffer[0]), .ZN (n_100));
  NOR2_X1 g4009(.A1 (state[6]), .A2 (i2c_busy_i), .ZN (n_38));
  NOR2_X1 g4006(.A1 (i2c_read_o), .A2 (error_led_o), .ZN (n_21));
  NOR2_X1 g4008(.A1 (i2c_rxak_i), .A2 (i2c_arb_lost_i), .ZN (n_16));
  NOR2_X1 g4011(.A1 (state[3]), .A2 (reset_i), .ZN (n_83));
  NOR2_X1 g4012(.A1 (state[4]), .A2 (reset_i), .ZN (n_15));
  INV_X1 g4029(.I (led_o[6]), .ZN (n_14));
  INV_X1 g4030(.I (led_o[3]), .ZN (n_13));
  INV_X1 g4027(.I (led_o[5]), .ZN (n_12));
  INV_X1 g4031(.I (error_led_o), .ZN (n_11));
  INV_X1 g4026(.I (state[6]), .ZN (n_35));
  INV_X1 g4016(.I (raw_buffer[7]), .ZN (n_10));
  INV_X1 g4023(.I (raw_buffer[1]), .ZN (n_9));
  INV_X1 g4034(.I (i2c_rxak_i), .ZN (n_8));
  INV_X1 g4032(.I (led_o[2]), .ZN (n_7));
  INV_X1 g4019(.I (state[5]), .ZN (n_25));
  INV_X1 g4015(.I (led_o[0]), .ZN (n_6));
  INV_X1 g4035(.I (reset_i), .ZN (n_18));
  INV_X1 g4028(.I (raw_buffer[2]), .ZN (n_129));
  INV_X1 g4017(.I (i2c_write_o), .ZN (n_5));
  INV_X1 g4024(.I (i2c_command_byte_o[6]), .ZN (n_4));
  INV_X1 g4021(.I (i2c_slave_addr_o[7]), .ZN (n_3));
  INV_X1 g4022(.I (state[4]), .ZN (n_50));
  INV_X1 g4025(.I (state[3]), .ZN (n_17));
  INV_X1 g4020(.I (led_o[8]), .ZN (n_2));
  INV_X1 g4033(.I (led_o[7]), .ZN (n_1));
  INV_X1 g4018(.I (led_o[1]), .ZN (n_0));
endmodule

