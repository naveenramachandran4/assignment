// This file is public domain, it can be freely copied without restrictions.
// SPDX-License-Identifier: CC0-1.0

`timescale 1ns/1ps

module onehot #(
  parameter integer BINARY_WIDTH = 4,
  parameter integer ONE_HOT_WIDTH = 16
) (
  input  logic unsigned [BINARY_WIDTH-1:0] inp,
  output wire [ONE_HOT_WIDTH-1:0] one_hot
);

  assign one_hot = 1'b1<<inp;

  // Dump waves
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1, onehot);
  end

endmodule
