module reset_asincrono(input logic d,rst,clk,
                        output logic q);

always_ff @(posedge clk, posedge rst) begin
    if (rst==1'b1) begin
        q<=1'b0;
    end
    else begin
        q<=d;
    end
end                
endmodule