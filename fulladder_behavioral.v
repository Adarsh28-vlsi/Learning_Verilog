// verilog is a hardware descriptive language meaning it is used to model hardwares and 
// decide/design their behaviour 
// in verilog, abstraction can be done at four different levels namely- behavioral, structural and physical level

//examples
//Behavioral Modeling of a Full Adder circuit
module full_adder(sum,cy_out,cy_in,a,b);

    input cy_in,a,b;
    output cy_out,sum;
    assign sum = a^b^cy_in;
    assign cy_out = (a&b) | (b&c) | (c&b);

endmodule
