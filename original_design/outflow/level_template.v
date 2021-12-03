
// Efinity Top-level template
// Version: 2021.1.165
// Date: 2021-10-14 00:40

// Copyright (C) 2017 - 2021 Efinix Inc. All rights reserved.

// This file may be used as a starting point for Efinity synthesis top-level target.
// The port list here matches what is expected by Efinity constraint files generated
// by the Efinity Interface Designer.

// To use this:
//     #1)  Save this file with a different name to a different directory, where source files are kept.
//              Example: you may wish to save as /home/vlad/Documents/level_project/original_design/level.v
//     #2)  Add the newly saved file into Efinity project as design file
//     #3)  Edit the top level entity in Efinity project to:  level
//     #4)  Insert design content.


module level
(
  input pll_clkin,
  input reset_i,
  input scl_i,
  input sda_i,
  input clk,
  output error_led_o,
  output [8:0] led_o,
  output scl_o,
  output scl_oe,
  output sda_o,
  output sda_oe
);


endmodule

