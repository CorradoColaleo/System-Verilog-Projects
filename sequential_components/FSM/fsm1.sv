module fsm1 (input logic clk, rst, input logic[3:0] p, output logic y);

typedef enum logic[1:0] {Init,s1,s2,s3} stato_t;
stato_t stato_corrente, stato_futuro;

always_ff @(posedge clk) begin
    if (rst) begin
        stato_corrente <= Init;
    end
    else begin
        stato_corrente <= stato_futuro;
    end
end

always_comb begin
    case (stato_corrente) 
    Init: 
        if (p==4'b1010)
            stato_futuro = s1;
        else
            stato_futuro = Init;
    s1: 
        if (p==4'b1000)
            stato_futuro = s2;
        else if (p==4'b1010)
            stato_futuro = s1;
        else
            stato_futuro = Init;
    s2: 
        if (p==4'b0111)
            stato_futuro = s3;
        else if (p==4'b1010)
            stato_futuro = s1;
        else
            stato_futuro = Init; 
    s3: 
        if (p==4'b1010)
            stato_futuro = s1;
        else
            stato_futuro = Init;
    default:
            stato_futuro = Init;
    endcase
end

assign y = (stato_corrente == s3);

endmodule