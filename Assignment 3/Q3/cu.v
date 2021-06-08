`timescale 1ns / 1ps
module cu (input x,y, reset,clk, output reg [4:0] z,output reg a,b,c);//x: xr>0 y: xr>=yr
reg t;
initial begin
	a=0;b=0;c=1;
	z = 5'b11100;
end

always @ (posedge clk, reset)
begin
//	$display("second a=%b b=%b z=%b x=%b y=%b\n",a,b,z,x,y);
if (reset==1)
begin 
$display("Reset trig\n");
a=0;b=0;c=!c; z = 5'b11100; 
end
 t=b;//temp
 b = a*b + b*(!x) + (!y)*(!b);
 //a = !x + y + t; $original exp
 a = !(x* (!y)*(!t));
 z[0:0] = a*(!b);
 z[1:1] = b*(!a);
 z[2:2] = (!a)*(!b);
 z[3:3] = !(a*b);
 z[4:4] = (!a);


//	$display("sec done a=%b b=%b z=%b\n",a,b,z);
	c=!c;
 end
endmodule 
