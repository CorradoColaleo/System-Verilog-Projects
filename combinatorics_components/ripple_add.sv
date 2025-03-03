module ripple_add #(parameter N=8)
        (input logic[N-1:0] a,b,
            output logic[N-1:0] y);

logic c[N:0];
assign c[0]=1'b0;
generate
    for (genvar i=0;i<=N-1;i++)
    begin
        full_adder fa (.a(a[i]),.b(b[i]),.c(c[i]),.s(y[i]),.cout(c[i+1]));
    end
endgenerate
endmodule