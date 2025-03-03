module contatore_updown(input logic clk, rst, down, load,
                        input logic [3:0] d, output logic tc, output logic[3:0] y);

always_ff @(posedge clk, rst) begin
    if (rst) begin
        y<='0;
    end
    else begin
        if (load) begin
            y<=d;
        end
        else begin
            if (down) begin
                y <= y + 4'd1;
            end
            else begin
                y <= y - 4'd1;
            end
        end
    end
end
   
assign tc = (y==4'b1111);

endmodule