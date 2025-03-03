module abilitazione(input logic d,en,clk,
                        output logic q);

always_ff @(posedge clk) begin
    if (en==1'b1) begin
        q<=d;
    end
end                
endmodule