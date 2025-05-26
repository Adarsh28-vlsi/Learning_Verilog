module fullsub(a, b, bin, dif, bout);
  input a, b, bin;
  output dif, bout;
  wire d0, b0, b1;

  halfsub hs0 (
    .a(a),
    .b(b),
    .dif(d0),
    .bo(b0)
  );

  halfsub hs1 (
    .a(d0),
    .b(bin),
    .dif(dif),
    .bo(b1)
  );

  assign bout = b0 | b1;

endmodule

module halfsub(a, b, dif, bo);
  input a, b;
  output dif, bo;

  assign dif = a ^ b;
  assign bo = (~a) & b;
endmodule
