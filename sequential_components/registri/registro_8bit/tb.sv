`timescale 1ns/1ps
module tb;

logic clk=1'b0,rst;
logic[7:0] d,q;
parameter time T = 10ns ;
parameter time delta1 = T/5 ;
parameter time delta2 = T-T/5 ;

reg8 dut(.*);

always
    #(T/2) clk = ~clk;
    
initial begin
    rst=1'b1; d=8'b00111011;
    #(T/2)
    #delta1
    rst=1'b0;
    #T;
    d=8'b10101010;
    #T 
    d=8'b11110000;
end

initial begin
    #(T/2)
    #delta2;
    $display("Valore di q dopo il primo fronte di clock: %b",q);
    for (int i=1;i<6;i++) begin
        #T 
        $display("Periodo %0d. Valore di q: %b",i,q);
    end
    $finish;
end
endmodule