module nand_gate_tb;
  
  reg a,b;
  wire y;
  
  nand_gate uut (a,b,y);
  
  initial begin
    $dumpfile("nand_waveform.vcd");
    $dumpvars(0, nand_gate_tb);
    
    $display("A B | Y");
    a = 0; b= 0;#5 $display("%b %b | %b", a, b, y);
    a = 0; b= 1;#5 $display("%b %b | %b", a, b, y);
    a = 1; b= 0;#5 $display("%b %b | %b", a, b, y);
    a = 1; b= 1;#5 $display("%b %b | %b", a, b, y);
    $finish;
  end
  
endmodule