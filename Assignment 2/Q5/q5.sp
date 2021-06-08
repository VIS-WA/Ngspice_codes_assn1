Viswanadh 2019112011 Q5
.include TSMC_180nm.txt
.param SUPPLY=1.8
.param LAMBDA=0.09u
.global gnd vdd

*vin a 0 pulse 0 1.8 0ns 1ns 1ns 10ns 20ns
Vdd vdd gnd 'SUPPLY'
*vin a gnd 1.8

.subckt inv y x vdd gnd
.param width_P={25*LAMBDA}
.param width_N={10*LAMBDA}
M1 y x gnd gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N}
+ AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M2 y x vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} 
+ AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
.ends inv

x1 a2 a1 vdd gnd inv
x2 a3 a2 vdd gnd inv
x3 a4 a3 vdd gnd inv
x4 a5 a4 vdd gnd inv
x5 a6 a5 vdd gnd inv
x6 a7 a6 vdd gnd inv
x7 a8 a7 vdd gnd inv
x8 a9 a8 vdd gnd inv
x9 a10 a9 vdd gnd inv
x10 a11 a10 vdd gnd inv
x11 a12 a11 vdd gnd inv
x12 a13 a12 vdd gnd inv
x13 a14 a13 vdd gnd inv
x14 a15 a14 vdd gnd inv
x15 a16 a15 vdd gnd inv
x16 a17 a16 vdd gnd inv
x17 a18 a17 vdd gnd inv
x18 a19 a18 vdd gnd inv
x19 a20 a19 vdd gnd inv
x20 a21 a20 vdd gnd inv
x21 a22 a21 vdd gnd inv
x22 a23 a22 vdd gnd inv
x23 a24 a23 vdd gnd inv
x24 a25 a24 vdd gnd inv
x25 a26 a25 vdd gnd inv
x26 a27 a26 vdd gnd inv
x27 a28 a27 vdd gnd inv
x28 a29 a28 vdd gnd inv
x29 a30 a29 vdd gnd inv
x30 a31 a30 vdd gnd inv
x31 a1 a31 vdd gnd inv

.tran 0.1n 20n
*.dc vin 0 1.8 0.01

.ic v(a1) = 1.8V

.measure tran tperiod
+ TRIG v(a1) VAL='SUPPLY/2' RISE=1
+ TARG v(a1) VAL='SUPPLY/2' RISE=2

.measure tran tpdr
+ TRIG v(a1) VAL='SUPPLY/2' FALL=1
+ TARG v(a2) VAL='SUPPLY/2' RISE=1

.measure tran tpdf
+ TRIG v(a1) VAL='SUPPLY/2' RISE=1
+ TARG v(a2) VAL='SUPPLY/2' FALL=1

.measure tran tpd param='(tpdr+tpdf)/2' goal=0

.control
run
plot a1 a2
.endc
