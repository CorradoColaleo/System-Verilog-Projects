module trasferimento ();

initial begin

    string linea;

    localparam string in_file = "file1.txt";

    localparam string out_file = "file2.txt";
    
    static int fd = $fopen(in_file,"r");

    static int fd2 = $fopen(out_file,"w");

    if (fd==0) begin
        $finish;
    end

    if (fd2==0) begin
        $finish;
    end

    while ($fgets(linea,fd)!=0) begin
    
        $fwrite(fd2,linea);

    end

    $fclose(fd);

    $fclose(fd2);


end

endmodule