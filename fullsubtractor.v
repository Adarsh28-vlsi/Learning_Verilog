module fullsub(a,b,bin,bout,dif);
  input a,b,bin;
  output bout,dif;
  
  assign dif = a^b^bin;
  assign bout = (bin&(~a)) | (bin&b) | ((~a)&b);
  
endmodule
