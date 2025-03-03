module mux_2_1(input logic sel,a,b,
            output logic y);
assign y = sel ? a : b; //se sel = 1 allora y = a
endmodule