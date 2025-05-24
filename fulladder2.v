module fulladder(a,b,cy_in,sum,cy_out);
  input a,b,cy_in;
  output sum,cy_out;
  wire s0,c0,c1;
  
  halfadder HA0 (a,b,s0,c0);
  halfadder HA1 (s0,cy_in,sum,c1);
  
  assign cy_out = c0|c1;
  
endmodule

module halfadder (a,b,sum,cy);
  input a,b;
  output sum,cy;
  
  assign sum = a^b;
  assign cy = a&b;
  
endmodule
