//4bit ripple carry adder

module ripplecarry(a, b, cy_in, sum, cy_out);
  input  [3:0] a, b;
  input  cy_in;
  output [3:0] sum;
  output cy_out;
  wire [2:0] carry;

  fulladder fa0 (a[0], b[0], cy_in,    sum[0], carry[0]);
  fulladder fa1 (a[1], b[1], carry[0], sum[1], carry[1]);
  fulladder fa2 (a[2], b[2], carry[1], sum[2], carry[2]);
  fulladder fa3 (a[3], b[3], carry[2], sum[3], cy_out);

endmodule

module fulladder(a, b, c, sum, cy);
  input a, b, c;
  output sum, cy;

  assign sum = a ^ b ^ c;
  assign cy = (a & b) | (a & c) | (b & c);
  
endmodule
