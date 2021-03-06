/*
###############################################################
#  Generated by:      Cadence Innovus 18.10-p002_1
#  OS:                Linux x86_64(Host ID ssh-soc.ece.ubc.ca)
#  Generated on:      Thu Dec  2 23:38:25 2021
#  Design:            level_fsm
#  Command:           saveNetlist level_fsm.v
###############################################################
*/
// Generated by Cadence Encounter(R) RTL Compiler RC14.13 - v14.10-s027_1
// Verification Directory fv/level_fsm 
module level_fsm (
	clk_i, 
	reset_i, 
	i2c_busy_i, 
	i2c_rxak_i, 
	i2c_arb_lost_i, 
	i2c_write_done_i, 
	i2c_data_out_valid_i, 
	i2c_data_out_i, 
	VDD, 
	VSS, 
	i2c_write_o, 
	i2c_read_o, 
	i2c_slave_addr_o, 
	i2c_din_o, 
	i2c_command_byte_o, 
	i2c_num_bytes_o, 
	error_led_o, 
	led_o);
   input clk_i;
   input reset_i;
   input i2c_busy_i;
   input i2c_rxak_i;
   input i2c_arb_lost_i;
   input i2c_write_done_i;
   input i2c_data_out_valid_i;
   input [7:0] i2c_data_out_i;
   inout VDD;
   inout VSS;
   output i2c_write_o;
   output i2c_read_o;
   output [7:0] i2c_slave_addr_o;
   output [7:0] i2c_din_o;
   output [7:0] i2c_command_byte_o;
   output [7:0] i2c_num_bytes_o;
   output error_led_o;
   output [8:0] led_o;

   // Internal wires
   wire [6:0] state;
   wire [7:0] raw_buffer;
   wire n_0;
   wire n_1;
   wire n_2;
   wire n_3;
   wire n_4;
   wire n_5;
   wire n_6;
   wire n_7;
   wire n_8;
   wire n_9;
   wire n_10;
   wire n_11;
   wire n_12;
   wire n_13;
   wire n_14;
   wire n_15;
   wire n_16;
   wire n_17;
   wire n_18;
   wire n_19;
   wire n_20;
   wire n_21;
   wire n_22;
   wire n_23;
   wire n_24;
   wire n_25;
   wire n_26;
   wire n_27;
   wire n_28;
   wire n_29;
   wire n_30;
   wire n_31;
   wire n_32;
   wire n_33;
   wire n_34;
   wire n_35;
   wire n_36;
   wire n_37;
   wire n_38;
   wire n_39;
   wire n_40;
   wire n_41;
   wire n_42;
   wire n_43;
   wire n_44;
   wire n_45;
   wire n_46;
   wire n_47;
   wire n_48;
   wire n_49;
   wire n_50;
   wire n_51;
   wire n_52;
   wire n_53;
   wire n_54;
   wire n_55;
   wire n_56;
   wire n_57;
   wire n_58;
   wire n_59;
   wire n_60;
   wire n_61;
   wire n_62;
   wire n_63;
   wire n_64;
   wire n_65;
   wire n_66;
   wire n_67;
   wire n_68;
   wire n_69;
   wire n_70;
   wire n_71;
   wire n_72;
   wire n_73;
   wire n_74;
   wire n_75;
   wire n_76;
   wire n_77;
   wire n_78;
   wire n_79;
   wire n_80;
   wire n_81;
   wire n_82;
   wire n_83;
   wire n_84;
   wire n_85;
   wire n_86;
   wire n_87;
   wire n_88;
   wire n_89;
   wire n_90;
   wire n_91;
   wire n_92;
   wire n_93;
   wire n_94;
   wire n_95;
   wire n_96;
   wire n_97;
   wire n_98;
   wire n_99;
   wire n_100;
   wire n_101;
   wire n_102;
   wire n_103;
   wire n_104;
   wire n_105;
   wire n_106;
   wire n_107;
   wire n_108;
   wire n_109;
   wire n_110;
   wire n_111;
   wire n_112;
   wire n_113;
   wire n_114;
   wire n_115;
   wire n_116;
   wire n_117;
   wire n_118;

   assign i2c_num_bytes_o[0] = i2c_slave_addr_o[5] ;
   assign i2c_num_bytes_o[1] = i2c_slave_addr_o[7] ;
   assign i2c_num_bytes_o[2] = i2c_slave_addr_o[5] ;
   assign i2c_num_bytes_o[3] = i2c_slave_addr_o[5] ;
   assign i2c_num_bytes_o[4] = i2c_slave_addr_o[5] ;
   assign i2c_num_bytes_o[5] = i2c_slave_addr_o[5] ;
   assign i2c_num_bytes_o[6] = i2c_slave_addr_o[5] ;
   assign i2c_num_bytes_o[7] = i2c_slave_addr_o[5] ;
   assign i2c_command_byte_o[0] = i2c_slave_addr_o[7] ;
   assign i2c_command_byte_o[1] = i2c_command_byte_o[6] ;
   assign i2c_command_byte_o[2] = i2c_command_byte_o[4] ;
   assign i2c_command_byte_o[3] = i2c_slave_addr_o[7] ;
   assign i2c_command_byte_o[5] = i2c_slave_addr_o[7] ;
   assign i2c_command_byte_o[7] = i2c_slave_addr_o[5] ;
   assign i2c_din_o[0] = i2c_slave_addr_o[5] ;
   assign i2c_din_o[1] = i2c_slave_addr_o[5] ;
   assign i2c_din_o[2] = i2c_slave_addr_o[5] ;
   assign i2c_din_o[3] = i2c_slave_addr_o[5] ;
   assign i2c_din_o[4] = i2c_slave_addr_o[5] ;
   assign i2c_din_o[5] = i2c_slave_addr_o[5] ;
   assign i2c_din_o[6] = i2c_slave_addr_o[5] ;
   assign i2c_din_o[7] = i2c_slave_addr_o[5] ;
   assign i2c_slave_addr_o[0] = i2c_slave_addr_o[5] ;
   assign i2c_slave_addr_o[1] = i2c_slave_addr_o[5] ;
   assign i2c_slave_addr_o[2] = i2c_slave_addr_o[5] ;
   assign i2c_slave_addr_o[3] = i2c_slave_addr_o[5] ;
   assign i2c_slave_addr_o[4] = i2c_slave_addr_o[7] ;
   assign i2c_slave_addr_o[6] = i2c_slave_addr_o[7] ;

   DFFHQX1 \state_reg[3]  (.Q(state[3]),
	.D(n_118),
	.CK(clk_i));
   DFFQXL \led_o_reg[4]  (.Q(led_o[4]),
	.D(n_117),
	.CK(clk_i));
   DFFQXL \led_o_reg[1]  (.Q(led_o[1]),
	.D(n_116),
	.CK(clk_i));
   DFFQXL \led_o_reg[7]  (.Q(led_o[7]),
	.D(n_114),
	.CK(clk_i));
   OR4X1 g2711 (.Y(n_118),
	.A(n_33),
	.B(n_74),
	.C(n_81),
	.D(n_109));
   DFFQXL \led_o_reg[5]  (.Q(led_o[5]),
	.D(n_100),
	.CK(clk_i));
   DFFHQX1 \raw_buffer_reg[5]  (.Q(raw_buffer[5]),
	.D(n_113),
	.CK(clk_i));
   DFFQXL \led_o_reg[6]  (.Q(led_o[6]),
	.D(n_107),
	.CK(clk_i));
   DFFQXL \led_o_reg[3]  (.Q(led_o[3]),
	.D(n_105),
	.CK(clk_i));
   DFFQXL \led_o_reg[2]  (.Q(led_o[2]),
	.D(n_106),
	.CK(clk_i));
   DFFHQX1 \raw_buffer_reg[0]  (.Q(raw_buffer[0]),
	.D(n_103),
	.CK(clk_i));
   DFFHQX1 \raw_buffer_reg[1]  (.Q(raw_buffer[1]),
	.D(n_102),
	.CK(clk_i));
   DFFHQX1 \raw_buffer_reg[2]  (.Q(raw_buffer[2]),
	.D(n_101),
	.CK(clk_i));
   DFFHQX1 \raw_buffer_reg[3]  (.Q(raw_buffer[3]),
	.D(n_99),
	.CK(clk_i));
   DFFHQX1 \raw_buffer_reg[4]  (.Q(raw_buffer[4]),
	.D(n_111),
	.CK(clk_i));
   DFFHQX1 \raw_buffer_reg[6]  (.Q(raw_buffer[6]),
	.D(n_112),
	.CK(clk_i));
   DFFHQX1 \raw_buffer_reg[7]  (.Q(raw_buffer[7]),
	.D(n_110),
	.CK(clk_i));
   OAI2BB1X1 g2687 (.Y(n_117),
	.A0N(n_115),
	.A1N(led_o[4]),
	.B0(n_108));
   DFFHQX1 \state_reg[4]  (.Q(state[4]),
	.D(n_89),
	.CK(clk_i));
   DFFQXL \led_o_reg[8]  (.Q(led_o[8]),
	.D(n_90),
	.CK(clk_i));
   DFFHQX1 \state_reg[2]  (.Q(error_led_o),
	.D(n_93),
	.CK(clk_i));
   DFFQXL \i2c_slave_addr_o_reg[4]  (.Q(i2c_slave_addr_o[7]),
	.D(n_94),
	.CK(clk_i));
   DFFQXL \led_o_reg[0]  (.Q(led_o[0]),
	.D(n_91),
	.CK(clk_i));
   OAI2BB1X1 g2703 (.Y(n_116),
	.A0N(n_115),
	.A1N(led_o[1]),
	.B0(n_98));
   OAI2BB1X1 g2709 (.Y(n_114),
	.A0N(n_115),
	.A1N(led_o[7]),
	.B0(n_97));
   NOR2X1 g2693 (.Y(n_113),
	.A(reset_i),
	.B(n_78));
   NOR2X1 g2694 (.Y(n_112),
	.A(reset_i),
	.B(n_77));
   NOR2X1 g2692 (.Y(n_111),
	.A(reset_i),
	.B(n_79));
   NOR2X1 g2695 (.Y(n_110),
	.A(reset_i),
	.B(n_75));
   NAND4XL g2723 (.Y(n_109),
	.A(n_30),
	.B(n_92),
	.C(n_70),
	.D(n_50));
   DFFHQX1 \state_reg[6]  (.Q(state[6]),
	.D(n_82),
	.CK(clk_i));
   DFFQXL \i2c_command_byte_o_reg[2]  (.Q(i2c_command_byte_o[4]),
	.D(n_76),
	.CK(clk_i));
   DFFQXL \i2c_command_byte_o_reg[1]  (.Q(i2c_command_byte_o[6]),
	.D(n_71),
	.CK(clk_i));
   AOI33XL g2732 (.Y(n_108),
	.A0(n_56),
	.A1(n_65),
	.A2(n_64),
	.B0(raw_buffer[1]),
	.B1(n_96),
	.B2(raw_buffer[2]));
   OAI2BB1X1 g2705 (.Y(n_107),
	.A0N(n_115),
	.A1N(led_o[6]),
	.B0(n_69));
   OAI21X1 g2704 (.Y(n_106),
	.A0(n_104),
	.A1(n_68),
	.B0(n_35));
   OAI31X1 g2710 (.Y(n_105),
	.A0(n_104),
	.A1(raw_buffer[2]),
	.A2(n_2),
	.B0(n_34));
   NOR2X1 g2688 (.Y(n_103),
	.A(reset_i),
	.B(n_87));
   NOR2X1 g2689 (.Y(n_102),
	.A(reset_i),
	.B(n_86));
   NOR2X1 g2690 (.Y(n_101),
	.A(reset_i),
	.B(n_83));
   OAI2BB1X1 g2712 (.Y(n_100),
	.A0N(n_115),
	.A1N(led_o[5]),
	.B0(n_88));
   NOR2X1 g2691 (.Y(n_99),
	.A(reset_i),
	.B(n_80));
   NAND3BXL g2716 (.Y(n_98),
	.AN(n_104),
	.B(raw_buffer[2]),
	.C(n_95));
   NAND3BXL g2719 (.Y(n_97),
	.AN(raw_buffer[2]),
	.B(n_96),
	.C(n_95));
   NOR2X1 g2696 (.Y(n_94),
	.A(reset_i),
	.B(n_63));
   NAND2X1 g2697 (.Y(n_93),
	.A(n_92),
	.B(n_57));
   OAI2BB1X1 g2698 (.Y(n_91),
	.A0N(n_59),
	.A1N(n_52),
	.B0(n_60));
   DFFHQX1 \state_reg[5]  (.Q(state[5]),
	.D(n_58),
	.CK(clk_i));
   OAI2BB1X1 g2702 (.Y(n_90),
	.A0N(n_66),
	.A1N(n_54),
	.B0(n_67));
   OR4X1 g2708 (.Y(n_89),
	.A(n_37),
	.B(n_73),
	.C(n_49),
	.D(n_55));
   NAND3X1 g2718 (.Y(n_88),
	.A(n_96),
	.B(raw_buffer[2]),
	.C(n_95));
   AOI22X1 g2724 (.Y(n_87),
	.A0(i2c_data_out_i[0]),
	.A1(n_85),
	.B0(n_84),
	.B1(raw_buffer[0]));
   AOI22X1 g2725 (.Y(n_86),
	.A0(i2c_data_out_i[1]),
	.A1(n_85),
	.B0(n_84),
	.B1(raw_buffer[1]));
   AOI22X1 g2726 (.Y(n_83),
	.A0(i2c_data_out_i[2]),
	.A1(n_85),
	.B0(n_84),
	.B1(raw_buffer[2]));
   OR3XL g2699 (.Y(n_82),
	.A(n_53),
	.B(n_51),
	.C(n_81));
   AOI22X1 g2727 (.Y(n_80),
	.A0(i2c_data_out_i[3]),
	.A1(n_85),
	.B0(n_84),
	.B1(raw_buffer[3]));
   AOI22X1 g2728 (.Y(n_79),
	.A0(i2c_data_out_i[4]),
	.A1(n_85),
	.B0(n_84),
	.B1(raw_buffer[4]));
   AOI22X1 g2729 (.Y(n_78),
	.A0(i2c_data_out_i[5]),
	.A1(n_85),
	.B0(n_84),
	.B1(raw_buffer[5]));
   AOI22X1 g2730 (.Y(n_77),
	.A0(i2c_data_out_i[6]),
	.A1(n_85),
	.B0(n_84),
	.B1(raw_buffer[6]));
   OAI31X1 g2700 (.Y(n_76),
	.A0(reset_i),
	.A1(n_61),
	.A2(n_0),
	.B0(n_72));
   AOI22X1 g2731 (.Y(n_75),
	.A0(i2c_data_out_i[7]),
	.A1(n_85),
	.B0(n_84),
	.B1(raw_buffer[7]));
   OAI2BB1X1 g2737 (.Y(n_74),
	.A0N(i2c_data_out_valid_i),
	.A1N(n_73),
	.B0(n_72));
   OAI211X1 g2707 (.Y(n_71),
	.A0(n_62),
	.A1(n_3),
	.B0(n_10),
	.C0(n_70));
   NAND2BX1 g2713 (.Y(n_69),
	.AN(n_68),
	.B(n_96));
   AOI32X1 g2720 (.Y(n_67),
	.A0(n_66),
	.A1(n_65),
	.A2(n_64),
	.B0(n_115),
	.B1(led_o[8]));
   AOI211XL g2721 (.Y(n_63),
	.A0(n_62),
	.A1(n_1),
	.B0(i2c_slave_addr_o[7]),
	.C0(n_61));
   AOI32X1 g2722 (.Y(n_60),
	.A0(n_59),
	.A1(raw_buffer[2]),
	.A2(raw_buffer[1]),
	.B0(n_115),
	.B1(led_o[0]));
   NAND4XL g2701 (.Y(n_58),
	.A(n_15),
	.B(n_42),
	.C(n_24),
	.D(n_57));
   NAND2X1 g2749 (.Y(n_92),
	.A(n_9),
	.B(n_48));
   INVX1 g2759 (.Y(n_104),
	.A(n_56));
   OAI211X1 g2717 (.Y(n_55),
	.A0(n_4),
	.A1(n_43),
	.B0(n_32),
	.C0(n_28));
   NOR2BX1 g2747 (.Y(n_96),
	.AN(n_66),
	.B(n_54));
   NAND2X1 g2748 (.Y(n_72),
	.A(n_62),
	.B(n_40));
   DFFHQX1 \state_reg[1]  (.Q(i2c_read_o),
	.D(n_53),
	.CK(clk_i));
   NOR2BX1 g2760 (.Y(n_56),
	.AN(n_59),
	.B(n_52));
   OAI33X1 g2733 (.Y(n_51),
	.A0(n_47),
	.A1(n_44),
	.A2(n_46),
	.B0(n_29),
	.B1(reset_i),
	.B2(n_45));
   AOI21X1 g2739 (.Y(n_50),
	.A0(n_31),
	.A1(state[4]),
	.B0(n_49));
   INVX1 g2753 (.Y(n_84),
	.A(n_85));
   OAI33X1 g2769 (.Y(n_48),
	.A0(n_47),
	.A1(state[4]),
	.A2(n_46),
	.B0(n_41),
	.B1(n_38),
	.B2(n_45));
   DFFHQX1 \state_reg[0]  (.Q(i2c_write_o),
	.D(n_26),
	.CK(clk_i));
   NOR2X1 g2736 (.Y(n_53),
	.A(n_44),
	.B(n_43));
   AOI32X1 g2741 (.Y(n_42),
	.A0(n_36),
	.A1(n_41),
	.A2(n_39),
	.B0(n_40),
	.B1(n_39));
   OAI31X1 g2750 (.Y(n_81),
	.A0(reset_i),
	.A1(n_8),
	.A2(n_16),
	.B0(n_57));
   AND4X1 g2754 (.Y(n_85),
	.A(n_38),
	.B(state[4]),
	.C(state[3]),
	.D(n_20));
   NOR2X1 g2756 (.Y(n_62),
	.A(i2c_busy_i),
	.B(n_43));
   AND2X1 g2757 (.Y(n_66),
	.A(n_37),
	.B(raw_buffer[7]));
   NAND2X1 g2765 (.Y(n_70),
	.A(n_36),
	.B(n_61));
   NAND2XL g2714 (.Y(n_35),
	.A(n_115),
	.B(led_o[2]));
   NAND2XL g2715 (.Y(n_34),
	.A(n_115),
	.B(led_o[3]));
   NOR2BX1 g2771 (.Y(n_59),
	.AN(n_37),
	.B(raw_buffer[7]));
   NOR3XL g2751 (.Y(n_33),
	.A(i2c_busy_i),
	.B(n_25),
	.C(n_45));
   INVX1 g2762 (.Y(n_32),
	.A(n_31));
   NAND4XL g2767 (.Y(n_30),
	.A(i2c_write_done_i),
	.B(n_36),
	.C(n_29),
	.D(n_39));
   NOR2BX1 g2773 (.Y(n_61),
	.AN(n_29),
	.B(n_21));
   NOR2BX1 g2779 (.Y(n_37),
	.AN(n_22),
	.B(reset_i));
   NAND2X1 g2772 (.Y(n_43),
	.A(state[4]),
	.B(n_39));
   AOI33XL g2740 (.Y(n_28),
	.A0(n_47),
	.A1(n_27),
	.A2(n_11),
	.B0(n_27),
	.B1(i2c_busy_i),
	.B2(n_17));
   NOR3X1 g2706 (.Y(n_26),
	.A(n_25),
	.B(state[6]),
	.C(n_23));
   OR4X1 g2743 (.Y(n_24),
	.A(n_18),
	.B(n_44),
	.C(n_41),
	.D(n_23));
   NOR2X1 g2744 (.Y(n_115),
	.A(reset_i),
	.B(n_22));
   NOR2X1 g2758 (.Y(n_73),
	.A(n_13),
	.B(n_45));
   NAND2BX1 g2761 (.Y(n_57),
	.AN(n_19),
	.B(error_led_o));
   NOR2X1 g2763 (.Y(n_31),
	.A(n_44),
	.B(n_21));
   INVX1 g2777 (.Y(n_20),
	.A(n_45));
   INVX1 g2790 (.Y(n_46),
	.A(n_39));
   NAND4XL g2776 (.Y(n_19),
	.A(n_27),
	.B(state[5]),
	.C(n_5),
	.D(state[6]));
   NAND2XL g2781 (.Y(n_21),
	.A(n_18),
	.B(n_17));
   NOR2X1 g2787 (.Y(n_22),
	.A(n_14),
	.B(n_16));
   NAND2X1 g2778 (.Y(n_45),
	.A(state[6]),
	.B(n_17));
   NAND3BXL g2738 (.Y(n_15),
	.AN(n_14),
	.B(n_36),
	.C(n_29));
   NOR3X1 g2752 (.Y(n_49),
	.A(n_13),
	.B(state[6]),
	.C(n_7));
   NOR2X1 g2791 (.Y(n_39),
	.A(state[6]),
	.B(n_14));
   INVX1 g2788 (.Y(n_23),
	.A(n_17));
   NOR2X1 g2789 (.Y(n_17),
	.A(state[5]),
	.B(n_12));
   NAND2BX1 g2797 (.Y(n_14),
	.AN(n_12),
	.B(state[5]));
   NOR2X1 g2764 (.Y(n_11),
	.A(state[6]),
	.B(n_12));
   NAND2X1 g2735 (.Y(n_10),
	.A(n_9),
	.B(i2c_command_byte_o[6]));
   INVX1 g2792 (.Y(n_25),
	.A(n_27));
   NAND3BXL g2774 (.Y(n_8),
	.AN(i2c_write_o),
	.B(i2c_read_o),
	.C(n_6));
   NOR2X1 g2793 (.Y(n_27),
	.A(n_44),
	.B(state[4]));
   AOI22X1 g2742 (.Y(n_68),
	.A0(raw_buffer[2]),
	.A1(n_64),
	.B0(raw_buffer[1]),
	.B1(n_65));
   NAND3BXL g2766 (.Y(n_7),
	.AN(i2c_read_o),
	.B(i2c_write_o),
	.C(n_6));
   NAND2X1 g2794 (.Y(n_16),
	.A(state[6]),
	.B(n_29));
   INVX1 g2795 (.Y(n_9),
	.A(n_44));
   NAND2BX1 g2798 (.Y(n_12),
	.AN(error_led_o),
	.B(n_5));
   NAND2X1 g2770 (.Y(n_13),
	.A(n_40),
	.B(state[4]));
   INVX1 g2782 (.Y(n_4),
	.A(n_40));
   OR4X1 g2775 (.Y(n_52),
	.A(raw_buffer[6]),
	.B(raw_buffer[3]),
	.C(raw_buffer[4]),
	.D(raw_buffer[5]));
   NAND2X1 g2796 (.Y(n_44),
	.A(n_36),
	.B(state[3]));
   NAND2X1 g2734 (.Y(n_3),
	.A(n_36),
	.B(i2c_command_byte_o[6]));
   INVX1 g2745 (.Y(n_2),
	.A(n_95));
   NAND4XL g2768 (.Y(n_54),
	.A(raw_buffer[4]),
	.B(raw_buffer[6]),
	.C(raw_buffer[5]),
	.D(raw_buffer[3]));
   NOR2X1 g2780 (.Y(n_6),
	.A(error_led_o),
	.B(state[5]));
   NOR2X1 g2783 (.Y(n_40),
	.A(reset_i),
	.B(state[3]));
   NOR2XL g2784 (.Y(n_47),
	.A(i2c_arb_lost_i),
	.B(i2c_rxak_i));
   NOR2X1 g2786 (.Y(n_18),
	.A(i2c_busy_i),
	.B(state[6]));
   NOR2X1 g2800 (.Y(n_5),
	.A(i2c_write_o),
	.B(i2c_read_o));
   NOR2BX1 g2785 (.Y(n_38),
	.AN(i2c_rxak_i),
	.B(i2c_arb_lost_i));
   NOR2X1 g2799 (.Y(n_29),
	.A(state[4]),
	.B(state[3]));
   NAND2X1 g2746 (.Y(n_95),
	.A(raw_buffer[1]),
	.B(raw_buffer[0]));
   NOR2X1 g2755 (.Y(n_64),
	.A(raw_buffer[0]),
	.B(raw_buffer[1]));
   INVX1 g2805 (.Y(n_65),
	.A(raw_buffer[2]));
   INVXL g2802 (.Y(n_36),
	.A(reset_i));
   INVX1 g2801 (.Y(n_1),
	.A(state[3]));
   INVX1 g2804 (.Y(n_0),
	.A(i2c_command_byte_o[4]));
   INVX1 g2803 (.Y(n_41),
	.A(state[4]));
   TIELO tie_0_cell (.Y(i2c_slave_addr_o[5]));
endmodule

