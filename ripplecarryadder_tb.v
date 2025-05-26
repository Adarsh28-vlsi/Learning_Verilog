module ripplecarry_tb;
  reg [3:0] a, b;
  reg cy_in;
  wire [3:0] sum;
  wire cy_out;

  ripplecarry uut(.a(a), .b(b), .cy_in(cy_in), .sum(sum), .cy_out(cy_out));

  initial begin
    $display(" a    | b    | cy_in | sum  | cy_out ");
    $display("--------------------------------------");

    a = 4'b0000; b = 4'b0000; cy_in = 0;
    #5 $display("%b | %b |   %b   | %b |   %b", a, b, cy_in, sum, cy_out);

    a = 4'b0101; b = 4'b0011; cy_in = 0;
    #5 $display("%b | %b |   %b   | %b |   %b", a, b, cy_in, sum, cy_out);

    a = 4'b1000; b = 4'b0111; cy_in = 0;
    #5 $display("%b | %b |   %b   | %b |   %b", a, b, cy_in, sum, cy_out);

    a = 4'b1111; b = 4'b0001; cy_in = 0;
    #5 $display("%b | %b |   %b   | %b |   %b", a, b, cy_in, sum, cy_out);

    a = 4'b1001; b = 4'b0110; cy_in = 1;
    #5 $display("%b | %b |   %b   | %b |   %b", a, b, cy_in, sum, cy_out);

    a = 4'b1111; b = 4'b1111; cy_in = 0;
    #5 $display("%b | %b |   %b   | %b |   %b", a, b, cy_in, sum, cy_out);

    $finish;
  end
endmodule
