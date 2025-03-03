module mux_2p #(parameter N=16)
        (input logic sel, input logic[N-1:0] a,b,
            output logic[N-1:0] y);
assign y = sel ? a : b; //se sel = 1 allora y = a
endmodule