`timescale 1ns / 1ps

module router_1x3_4bit_tb;

  // Testbench signals
  reg clk;
  reg rst;
  reg [3:0] data_in;
  reg [1:0] sel;
  reg valid_in;

  wire [3:0] out0;
  wire [3:0] out1;
  wire [3:0] out2;
  wire valid_out0;
  wire valid_out1;
  wire valid_out2;

  // Instantiate the router
  router_1x3_4bit uut (
    .clk(clk),
    .rst(rst),
    .data_in(data_in),
    .sel(sel),
    .valid_in(valid_in),
    .out0(out0),
    .out1(out1),
    .out2(out2),
    .valid_out0(valid_out0),
    .valid_out1(valid_out1),
    .valid_out2(valid_out2)
  );

  // Clock generation
  always #5 clk = ~clk; // 100MHz clock

  // Dump VCD
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, router_1x3_4bit_tb);
  end

  // Test procedure
  initial begin
    // Initialize signals
    clk = 0;
    rst = 1;
    data_in = 0;
    sel = 0;
    valid_in = 0;

    // Apply reset
    #10;
    rst = 0;

    // Send data to output 0
    #10;
    data_in = 4'b1010;
    sel = 2'b00;
    valid_in = 1;
    #10;
    valid_in = 0;

    // Send data to output 1
    #10;
    data_in = 4'b1100;
    sel = 2'b01;
    valid_in = 1;
    #10;
    valid_in = 0;

    // Send data to output 2
    #10;
    data_in = 4'b1111;
    sel = 2'b10;
    valid_in = 1;
    #10;
    valid_in = 0;

    // Send invalid select (2'b11), should do nothing
    #10;
    data_in = 4'b0001;
    sel = 2'b11;
    valid_in = 1;
    #10;
    valid_in = 0;

    // Finish simulation
    #20;
    $finish;
  end

endmodule
