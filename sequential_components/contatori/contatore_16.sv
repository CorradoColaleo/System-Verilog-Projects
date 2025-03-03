module contatore_16 (input logic clk,rst,
                        output logic umax,
                            output logic [3:0]y);
always_ff @(posedge clk, posedge rst) begin
    if (rst) begin
        y<='0;
    end
    else begin
        y<=y + 4'b1;
    end
end

assign umax = (y==4'b1111);

endmodule