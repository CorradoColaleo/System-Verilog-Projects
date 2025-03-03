`timescale 1ns/1ps
module tb;

logic[7:0]a,b;
logic[3:0]op;
logic[7:0]y;

alu dut(.*);

initial begin
    int error_cnt;
    error_cnt=0;
    a =8'b01010101; b=8'b00000010; op=4'b0000;
    #1.2ns
    assert (y==8'b01010101) else begin
        $error("uscita attesa 01010101, uscita prodotta: %b",y);
        error_cnt++;
    end
    a =8'b01010101; b=8'b00000010; op=4'b0001;
    #1.2ns
    assert (y==8'b00000010) else begin
        $error("uscita attesa 00000010, uscita prodotta: %b",y);
        error_cnt++;
    end
    a =8'b01010101; b=8'b00000010; op=4'b0010;
    #1.2ns
    assert (y==8'b10101010) else begin
        $error("uscita attesa b10101010, uscita prodotta: %b",y);
        error_cnt++;
    end
    $display("Simulazione terminata. Errori:%0d",error_cnt);
    $finish;
end

initial begin
    $monitor("tempo=%t, a=%b, b=%b, op=%b,y=%b",$realtime,a,b,op,y);
end
endmodule