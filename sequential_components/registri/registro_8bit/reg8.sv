`timescale 1ns/1ps
module reg8(input logic[7:0] d,logic rst,clk,
                        output logic[7:0] q);

always_ff @(posedge clk) begin
    if (rst==1'b1) begin
        q<='0;
    end
    else begin
        q<=d;
    end
end                
endmodule