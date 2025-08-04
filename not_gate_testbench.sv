module not_gate_tb;
  reg a;
  wire y;
  not_gate uut (a,y);
  
  initial begin
    $dumpfile("not_waveform.vcd");
    $dumpvars(0, not_gate_tb);
    
    $display ("A | Y");
    a = 0;#5 $display ("%b | %b", a,y);
    a = 1;#5 $display ("%b | %b", a,y);
    $finish;
  end
  
endmodule