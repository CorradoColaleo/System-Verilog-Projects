`timescale 1ns/1ps
module tb;

logic a0,a1,a2;
logic[7:0] y;
decodificatore_binario dut(.*);

initial begin
    int error_cnt;
    error_cnt=0;
    a0 =1'b0; a1=1'b0; a2=1'b0;
    #1.2ns
    assert (y==8'b00000001) else begin
        $error("uscita attesa 00000001, uscita prodotta: %b",y);
        error_cnt++;
    end
    a0 =1'b1; a1=1'b0; a2=1'b0;
    #1.2ns
    assert (y==8'b00000010) else begin
        $error("uscita attesa 00000010, uscita prodotta: %b",y);
        error_cnt++;
    end
    a0 =1'b0; a1=1'b1; a2=1'b0;
    #1.2ns
    assert (y==8'b00000100) else begin
        $error("uscita attesa 0000100, uscita prodotta: %b",y);
        error_cnt++;
    end
    $display("Simulazione terminata. Errori:%0d",error_cnt);
    $finish;
end

initial begin
    $monitor("tempo=%t, a0=%b, a1=%b, a2=%b,y=%b",$realtime,a0,a1,a2,y);
end
endmodule