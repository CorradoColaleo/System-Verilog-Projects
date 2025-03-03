`timescale 1ns/1ps
module decodificatore_binario(input logic a0,a1,a2,
        output logic[7:0] y);

assign y[0] = ~a2 & ~a1 & ~a0;
assign y[1] = ~a2 & ~a1 & a0;
assign y[2] = ~a2 & a1 & ~a0;
assign y[3] = ~a2 & a1 & a0;
assign y[4] = a2 & ~a1 & ~a0;
assign y[5] = a2 & ~a1 & a0;
assign y[6] = a2 & a1 & ~a0;
assign y[7] = a2 & a1 & a0;

endmodule