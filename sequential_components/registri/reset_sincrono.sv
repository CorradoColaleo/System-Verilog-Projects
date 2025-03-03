module reset_sincrono(input logic d,rst,clk,
                        output logic q);

always_ff @(posedge clk) begin
    if (rst==1'b1) begin
        q<=1'b0;
    end
    else begin
        q<=d;
    end
end                
endmodule