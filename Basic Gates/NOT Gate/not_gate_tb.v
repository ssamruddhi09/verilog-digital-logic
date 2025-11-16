module not_gate_tb;

  reg a;
  wire y;

  // Instantiate your NOT gate module
  not_gate uut (a, y);

  initial begin
    $dumpfile("not_gate.vcd");
    $dumpvars(0, not_gate_tb);

    // Test cases
    a = 0; #10;
    a = 1; #10;

    $finish;
  end

  initial
    $monitor("time=%0t a=%b y=%b", $time, a, y);

endmodule
