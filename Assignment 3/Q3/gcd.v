`timescale 1ns / 1ps
`include "dp.v"
`include "cu.v"
module gcd ();

reg [4:0] x,y;
wire [4:0] z,zr,xr,yr,tempr,Z;
reg clk,reset;
wire a,b,c;


initial begin
	$dumpfile("gcd_o.vcd");
    $dumpvars(0,gcd);
        clk=0;
	x=24;y=16; //input numbers
//#65 $finish;
end

always #5 clk=~clk;

dp first (z,x,y,xr,yr,tempr,reset,clk,c,zr,Z,a,b);
cu second (xr>0, xr>=yr,reset,clk, z,a,b,c);

endmodule
