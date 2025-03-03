module registro_posedge(input logic[7:0] d, input logic clk, 
                    output logic[7:0] q);
always_ff @(posedge clk) begin
    q<=d;
end
endmodule