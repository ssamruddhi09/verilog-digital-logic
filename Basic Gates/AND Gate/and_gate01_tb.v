module and_gate_tb;

  reg a, b;
  wire y;

  // Instantiate your AND gate module
  and_gate uut (a, b, y);

  initial begin
    $dumpfile("and_gate.vcd");
    $dumpvars(0, and_gate_tb);

    // Test combinations
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    $finish;
  end

  initial
    $monitor("time=%0t a=%b b=%b y=%b", $time, a, b, y);

endmodule
