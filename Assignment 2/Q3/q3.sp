hello
.include TSMC_180nm.txt
.param SUPPLY=1.8
.param LAMBDA=0.09u
.global gnd vdd

*vin a 0 pulse 0 1.8 0ns 1ns 1ns 10ns 20ns
Vdd vdd	gnd 'SUPPLY'
vin a gnd 1.8
.subckt inv y x vdd gnd
.param width_P={50*LAMBDA}
.param width_N={20*LAMBDA}
M1 y x gnd gnd CMOSN W={width_N} L={2*LAMBDA} AS={5*width_N*LAMBDA}
+ PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M2 y x vdd vdd CMOSP W={width_P} L={2*LAMBDA} AS={5*width_P*LAMBDA}
+ PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
.ends inv

x1 b a vdd gnd inv
x2 c b vdd gnd inv

*.tran 0.1n 2n
.dc vin 0 1.8 0.01

.control
run
set curplottile = "Viswanadh 2019112011"
plot v(a) v(b) deriv(v(b)) 

.endc
