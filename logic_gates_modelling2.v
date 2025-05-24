//using data level
module logicgates_datalevel(a,b,or_out, and_out, nor_out, nand_out, xor_out, xnor_out);
  input a,b;
  output or_out, and_out, nor_out, nand_out, xor_out, xnor_out;

  assign or_out = a|b;
  assign nor_out = ~(a|b);
  assign and_out = a&b;
  assign nand_out = ~(a&b);
  assign xor_out = a^b;
  assign xnor_out = ~(a^b);
  
endmodule 
