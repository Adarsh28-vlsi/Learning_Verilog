module logicgates_gatelevel (a,b,or_out,and_out,nand_out,nor_out,xor_out,xnor_out);
  input a,b;
  output or_out,and_out,nand_out,nor_out,xor_out,xnor_out;

  and g1 (and_out,a,b);
  or g2 (or_out,a,b);
  xor g3 (xor_out,a,b);
  xnor g4 (xnor_out,a,b);
  nor g5 (nor_out,a,b);
  nand g6 (nand_out,a,b);

endmodule
