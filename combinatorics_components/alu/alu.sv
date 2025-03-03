`timescale 1ns/1ps
module alu #(parameter N=8)
        (input logic[N-1:0]a,b, input logic[3:0] op,
            output logic[N-1:0] y);
always_comb begin
    case (op)
        4'b0000: y=a;
        4'b0001: y=b;
        4'b0010: y=~a;
        4'b0011: y=a&b;
        4'b0100: y=a|b;
        4'b0101: y='0;
        4'b1000: y=a+b;
        4'b1001: y=a-1;
        4'b1010: y=a-b;
        4'b1011: y=a+1;
        default: y='0;
    endcase
end
endmodule