module halfsub(a,b,dif,bo);
  input a,b;
  output dif,bo;
  assign dif = a^b;
  assign bo = (~a) & b;
endmodule
