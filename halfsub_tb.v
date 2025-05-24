module halfsub_tb;
  reg a,b;
  wire dif,bo;
  
  halfsub uut (a,b,dif,bo);
  
  initial
    begin 
      $display (" a | b | dif | bo ");
      $display ("------------------");
      
      a=0;b=0;
      #4 $display("%b | %b | %b | %b ",a,b,dif,bo);
      
      #1a=0;b=1;
       #4 $display("%b | %b | %b | %b ",a,b,dif,bo);
      
      #1a=1;b=0;
       #4 $display("%b | %b | %b | %b ",a,b,dif,bo);
      
      #1 a=1;b=1;
       #4 $display("%b | %b | %b | %b ",a,b,dif,bo);
      
      #5 $finish;
    end
endmodule
