module fulladder_tb;
  reg a, b, cy_in;
  wire sum, cy_out;
  
  fulladder uut (
    .a(a),
    .b(b),
    .cy_in(cy_in),
    .sum(sum),
    .cy_out(cy_out)
  );

  initial begin

    $dumpfile("fulladder_waveform.vcd");
    $dumpvars(0, fulladder_tb);


    $display("a b cy_in | sum cy_out");
    $display("----------------------");


    a = 0; b = 0; cy_in = 0; #5;
    $display("%b %b   %b   |  %b     %b", a, b, cy_in, sum, cy_out);

    a = 0; b = 0; cy_in = 1; #5;
    $display("%b %b   %b   |  %b     %b", a, b, cy_in, sum, cy_out);

    a = 0; b = 1; cy_in = 0; #5;
    $display("%b %b   %b   |  %b     %b", a, b, cy_in, sum, cy_out);

    a = 0; b = 1; cy_in = 1; #5;
    $display("%b %b   %b   |  %b     %b", a, b, cy_in, sum, cy_out);

    a = 1; b = 0; cy_in = 0; #5;
    $display("%b %b   %b   |  %b     %b", a, b, cy_in, sum, cy_out);

    a = 1; b = 0; cy_in = 1; #5;
    $display("%b %b   %b   |  %b     %b", a, b, cy_in, sum, cy_out);

    a = 1; b = 1; cy_in = 0; #5;
    $display("%b %b   %b   |  %b     %b", a, b, cy_in, sum, cy_out);

    a = 1; b = 1; cy_in = 1; #5;
    $display("%b %b   %b   |  %b     %b", a, b, cy_in, sum, cy_out);

    $finish;
  end
endmodule
