module logicgates_test;
  reg a,b;
  wire or_out,and_out,nand_out,nor_out,xor_out,xnor_out;

  logicgates_gatelevel ( .a(a) , .b(b) , .or_out(or_out) , .and_out(and_out) , .xor_out(xor_out) , .xnor_out(xnor_out),
                        .nor_out(nor_out) , .nand_out(nand_out));
  $dumpfile("logicgates_waveform.vcd"); //vcd file for waveform generation
  $dumpvars(0, logicgates_test);

  initial 
    begin 
      a=0;b=0;
      a=0;b=1;
      a=1;b=0;
      a=1;b=1;
    end 
endmodule
