module halfadder_tb;
  reg a,b;
  wire sum,cy;
  
  halfadder uut (.a(a),.b(b),.sum(sum),.cy(cy));
  
  initial 
    begin 
      $display("a | b | sum | carry ");
      $display("--------------------");
      
      a=0;b=0;
      #4 $display("%b | %b | %b | %b ",a,b,sum,cy);
      
      #1a=0;b=1;
      #4 $display("%b | %b | %b | %b ",a,b,sum,cy);
      
      #1a=1;b=0;
      #4 $display("%b | %b | %b | %b ",a,b,sum,cy);
      
      #1 a=1;b=1;
      #4 $display("%b | %b | %b | %b ",a,b,sum,cy);
      
      #5 $finish;
    end
endmodule
