module shift_register (input logic clk,rst,en,dato,
                        output logic [7:0] y);


always_ff @(posedge clk, posedge rst) begin

    if (rst)

        y<='0;

    else if (en) begin

        y[7]<=dato;

        y[6:0] <= y[7:1];

        /* Queste due operazioni possono essere intercambiate perchè comunque
        le istruzioni sono non bloccanti!*/

    end

    
    
end
endmodule