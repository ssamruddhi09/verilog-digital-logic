module nand_gate_tb;

  reg a, b;
  wire y;

  // DUT instantiation
  nand_gate uut (
    .a(a),
    .b(b),
    .y(y)
  );

  initial begin
    $dumpfile("nand_gate.vcd");
    $dumpvars(0, nand_gate_tb);

    // Test all input combinations
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    $finish;
  end

  initial begin
    $monitor("T=%0t  a=%b  b=%b  y=%b", $time, a, b, y);
  end

endmodule
