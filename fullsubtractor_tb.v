module fullsub_tb;
  reg a, b, bin;
  wire bout, dif;

  fullsub uut(.a(a), .b(b), .bin(bin), .bout(bout), .dif(dif));

  initial begin
    $display(" a | b | bin | dif | bout ");
    $display("--------------------------");

    a=0; b=0; bin=0;
    #4 $display(" %b | %b |  %b  |  %b  |  %b  ", a, b, bin, dif, bout);

    a=0; b=0; bin=1;
    #4 $display(" %b | %b |  %b  |  %b  |  %b  ", a, b, bin, dif, bout);

    a=0; b=1; bin=0;
    #4 $display(" %b | %b |  %b  |  %b  |  %b  ", a, b, bin, dif, bout);

    a=0; b=1; bin=1;
    #4 $display(" %b | %b |  %b  |  %b  |  %b  ", a, b, bin, dif, bout);

    a=1; b=0; bin=0;
    #4 $display(" %b | %b |  %b  |  %b  |  %b  ", a, b, bin, dif, bout);

    a=1; b=0; bin=1;
    #4 $display(" %b | %b |  %b  |  %b  |  %b  ", a, b, bin, dif, bout);

    a=1; b=1; bin=0;
    #4 $display(" %b | %b |  %b  |  %b  |  %b  ", a, b, bin, dif, bout);

    a=1; b=1; bin=1;
    #4 $display(" %b | %b |  %b  |  %b  |  %b  ", a, b, bin, dif, bout);

    $finish;
  end
endmodule

      
