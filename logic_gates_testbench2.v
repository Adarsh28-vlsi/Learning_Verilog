module logicgates_test;
  reg a,b;
  wire or_out, and_out, nor_out, nand_out, xor_out, xnor_out;
  
  logicgates_gatelevel uut(
    .a(a), .b(b),
    .or_out(or_out), .and_out(and_out),
    .xor_out(xor_out), .xnor_out(xnor_out),
    .nand_out(nand_out), .nor_out(nor_out)
  );

  initial begin

    $dumpfile("logicgates_waveform.vcd");
    $dumpvars(0, logicgates_test);

    $display(" a | b | OR | AND | XOR | XNOR | NAND | NOR ");
    $display("---------------------------------------------");
    a = 0; b = 0;
    #1 $display(" %b | %b |  %b |   %b |   %b |    %b |    %b |   %b ", a, b, or_out, and_out, xor_out, xnor_out, nand_out, nor_out);

    #4 a = 0; b = 1;
    #1 $display(" %b | %b |  %b |   %b |   %b |    %b |    %b |   %b ", a, b, or_out, and_out, xor_out, xnor_out, nand_out, nor_out);

    #4 a = 1; b = 0;
    #1 $display(" %b | %b |  %b |   %b |   %b |    %b |    %b |   %b ", a, b, or_out, and_out, xor_out, xnor_out, nand_out, nor_out);

    #4 a = 1; b = 1;
    #1 $display(" %b | %b |  %b |   %b |   %b |    %b |    %b |   %b ", a, b, or_out, and_out, xor_out, xnor_out, nand_out, nor_out);

    #5 $finish;
  end
endmodule
