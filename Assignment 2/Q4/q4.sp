Viswanadh 201911
.include TSMC_180nm.txt
.param SUPPLY=1.8
.param LAMBDA=0.09u
.global gnd vdd

vin a 0 pwl 0 0V 0.5ns 1.8V 1.1ns 1.8V 1.5ns 0V 10ns 0V
Vdd vdd	gnd 'SUPPLY'

.subckt inv0 y x vdd gnd 
.param width_P={50*LAMBDA}
.param width_N={20*LAMBDA}
M1 y x gnd gnd CMOSN W={width_N} L={2*LAMBDA} AS={5*width_N*LAMBDA}
+ PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M2 y x vdd vdd CMOSP W={width_P} L={2*LAMBDA} AS={5*width_P*LAMBDA}
+ PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
.ends inv0

.subckt inv1 y x vdd gnd 
.param width_P={4*50*LAMBDA}
.param width_N={4*20*LAMBDA}
M1 y x gnd gnd CMOSN W={width_N} L={2*LAMBDA} AS={5*width_N*LAMBDA}
+ PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M2 y x vdd vdd CMOSP W={width_P} L={2*LAMBDA} AS={5*width_P*LAMBDA}
+ PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
.ends inv1

*.subckt inv2 y x vdd gnd 
.param width_P={16*50*LAMBDA}
.param width_N={16*20*LAMBDA}
lol vdd d1 0
lol2 d2 gnd 0
M1 d c d2 gnd CMOSN W={width_N} L={2*LAMBDA} AS={5*width_N*LAMBDA}
+ PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M2 d c d1 vdd CMOSP W={width_P} L={2*LAMBDA} AS={5*width_P*LAMBDA}
+ PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
*.ends inv2

.subckt inv3 y x vdd gnd 
.param width_P={64*50*LAMBDA}
.param width_N={64*20*LAMBDA}
M1 y x gnd gnd CMOSN W={width_N} L={2*LAMBDA} AS={5*width_N*LAMBDA}
+ PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M2 y x vdd vdd CMOSP W={width_P} L={2*LAMBDA} AS={5*width_P*LAMBDA}
+ PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
.ends inv3

.subckt inv4 y x vdd gnd 
.param width_P={376*50*LAMBDA}
.param width_N={376*20*LAMBDA}
M1 y x gnd gnd CMOSN W={width_N} L={2*LAMBDA} AS={5*width_N*LAMBDA}
+ PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M2 y x vdd vdd CMOSP W={width_P} L={2*LAMBDA} AS={5*width_P*LAMBDA}
+ PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
.ends inv4


x1 b a vdd gnd inv0
x2 c b vdd gnd inv1
*x3 d c vdd gnd inv2
x4 e d vdd gnd inv3
x5 f e vdd gnd inv4

C1 f gnd 100p
*vin a 0 pwl (0 0V 0.5ns 1.8V 1.1ns 1.8V 1.5ns 0V 10ns 0V)
.tran 10ps 5n
*.dc vin 0 1.8 0.01
*---------------------B
$for C
.measure tran tpdrC
+ TRIG v(c) VAL='0.1*SUPPLY' RISE=1
+ TARG v(c) VAL='0.9*SUPPLY' RISE=1

.measure tran tpdfC
+ TRIG v(c) VAL='0.9*SUPPLY' FALL=1
+ TARG v(c) VAL='0.1*SUPPLY' FALL=1

$for D
.measure tran tpdrD
+ TRIG v(d) VAL='0.1*SUPPLY' RISE=1
+ TARG v(d) VAL='0.9*SUPPLY' RISE=1

.measure tran tpdfD
+ TRIG v(d) VAL='0.9*SUPPLY' FALL=1
+ TARG v(d) VAL='0.1*SUPPLY' FALL=1

*----------------------C

.measure tran Tpdr3
+ TRIG v(c) VAL='SUPPLY/2' FALL=1
+ TARG v(d) VAL='SUPPLY/2' RISE=1

.measure tran Tpdf3
+ TRIG v(c) VAL='SUPPLY/2' RISE=1
+ TARG v(d) VAL='SUPPLY/2' FALL=1

.measure tran tpdC param='(Tpdr3+Tpdf3)/2' goal=0

.measure tran Tpdr4
+ TRIG v(d) VAL='SUPPLY/2' FALL=1
+ TARG v(e) VAL='SUPPLY/2' RISE=1

.measure tran Tpdf4
+ TRIG v(d) VAL='SUPPLY/2' RISE=1
+ TARG v(e) VAL='SUPPLY/2' FALL=1

.measure tran tpdD param='(Tpdr4+Tpdf4)/2' goal=0


.control
run
let idd = (-lol#branch)
let iss = (-lol2#branch)
set curplottile = "Viswanadh 2019112011"
plot v(c) v(d)
plot idd 
plot iss 

.endc
