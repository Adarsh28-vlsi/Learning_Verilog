module halfadder (a,b,sum,cy);
  input a,b;
  output sum,cy;
  
  assign sum = a^b;
  assign cy = a&b;
  
endmodule
