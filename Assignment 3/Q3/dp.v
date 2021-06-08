`timescale 1ns / 1ps
module dp (input [4:0] z,x,y, output reg [4:0] xr,yr,tempr, input reset,clk,c, output reg [4:0] zr,Z,input a,b);
reg t;
always @ (c,reset)
begin
//	$display("one z=%b\n",z);
	if(a==1 && b==1) begin Z = zr;$display("Z=%d\n",Z);#10; $finish;end
	if (z[2:2] == 1) // load
	begin
		if (z[3:3] == 1)
		xr=x;
		if (z[4:4] == 1)
		yr=y;
	end
	if (z[1:1] == 1) //swap
	begin 
	tempr = yr;
	yr = xr;
	xr = tempr;
	end
	if (z[0:0] == 1) xr = xr- yr; //subtractor
	zr = yr;
//	$display("one done xr=%d yr=%d\n",xr,yr);
end

endmodule
