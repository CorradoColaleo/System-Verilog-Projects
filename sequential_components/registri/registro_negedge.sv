module registro_negedge(input logic[15:0] d, input logic clk, 
                    output logic[15:0] q);
always_ff @(negedge clk) begin
    q<=d;
end
endmodule