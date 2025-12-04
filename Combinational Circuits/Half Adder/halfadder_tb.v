module half_adder_tb;

  reg a, b;
  wire sum, carry;

  // DUT instantiation
  half_adder uut (
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
  );

  initial begin
    $dumpfile("half_adder.vcd");
    $dumpvars(0, half_adder_tb);

    // Apply all input combinations
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    $finish;
  end

  initial begin
    $monitor("T=%0t  a=%b  b=%b  sum=%b  carry=%b", $time, a, b, sum, carry);
  end

endmodule

