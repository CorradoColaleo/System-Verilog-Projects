module full_adder(input logic a,b,c,
            output logic s,cout);
assign s = c^a^b; //xor
assign cout = (a&b) | (a&c) | (b&c); 
endmodule