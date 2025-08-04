module or_gate_tb;
  
  reg a,b;
  wire y;
  
  or_gate uut (a,b,y);
  
  initial begin
    $dumpfile("or_waveform.vcd");
    $dumpvars(0, or_gate_tb);
    
    $display("A B | Y");
    a = 0; b= 0;#5 $display("%b %b | %b", a, b, y);
    a = 0; b= 1;#5 $display("%b %b | %b", a, b, y);
    a = 1; b= 0;#5 $display("%b %b | %b", a, b, y);
    a = 1; b= 1;#5 $display("%b %b | %b", a, b, y);
    $finish;
  end
  
endmodule
    