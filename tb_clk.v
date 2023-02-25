`timescale 1ns/1ns
module tb_clk;
wire clk;
reg inc1,inc,dec1,dec;
reg clkin,reset;
wire [7:0]d;
wire [0:6]d0;
wire [0:6]d1;
wire [0:6]d2;
wire [0:6]d3;
//wire [0:6]d0,d1,d2,d3;
clkduty uut(clkin,inc,inc1,dec,dec1,reset,clk,d0,d1,d2,d3,d);

initial begin
    clkin=0;
    reset=1;
    inc1=1; inc=1;
    dec1=1; dec=1;
    #1 reset=0;
    #1 reset=1; 
    forever begin
        #10 clkin=~clkin;
    end
end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb_clk);

    #5 inc=0;
    #1 inc=1;

    #10 inc=0;
    #1 inc=1;

    #10 inc=0;
    #1 inc=1;

    #10 inc=0;
    #1 inc=1;

    #10 inc=0;
    #1 inc=1;

    #10 inc=0;
    #1 inc=1;
    #10 inc=0;
    #1 inc=1;
    #10 inc=0;
    #1 inc=1;
    #10 inc=0;
    #1 inc=1;
    #10 inc=0;
    #1 inc=1;
    #10 inc=0;
    #1 inc=1;

    #10 inc=0;
    #1 inc=1;

    #10 inc=0;
    #1 inc=1;

    #10 inc=0;
    #1 inc=1;

    // #10 dec1=0;
    // #1 dec1=1;
    // #10 dec1=0;
    // #1 dec1=1;
    // #10 dec1=0;
    // #1 dec1=1;



    #10000 $finish;
end

initial begin
    #9000 reset=0;
    #1 reset=1;
end


endmodule