*Viswanadh- 2019112011
.include TSMC_180nm.txt
.param SUPPLY=1.8
.param LAMBDA=0.09u
.param width_N={5*LAMBDA}
.global gnd vdd 

Vdd vdd	gnd 1.8
Va x1 gnd pulse 0 1.8 0ns 100ps 100ps 5ns 10ns  $ select inputs 
Vb x2 gnd pulse 0 1.8 0ns 100ps 100ps 10ns 20ns
Vc x3 gnd pulse 0 1.8 0ns 100ps 100ps 20ns 40ns
Vd x4 gnd pulse 0 1.8 0ns 100ps 100ps 40ns 80ns

Ve x1b gnd pulse 1.8 0 0ns 100ps 100ps 5ns 10ns $ select inv inputs
Vf x2b gnd pulse 1.8 0 0ns 100ps 100ps 10ns 20ns
Vg x3b gnd pulse 1.8 0 0ns 100ps 100ps 20ns 40ns
Vh x4b gnd pulse 1.8 0 0ns 100ps 100ps 40ns 80ns

.subckt mux i1 i2 y x xb gnd $ inputs output select and inv vvdd gnd
M1 i1 x y gnd CMOSN W={width_N} L={2*LAMBDA} AS={5*width_N*LAMBDA} 
+ PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M2 i2 xb y gnd CMOSN W={width_N} L={2*LAMBDA} AS={5*width_N*LAMBDA} 
+ PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
.ends mux

Xz vdd gnd d x4 x4b gnd mux $ creating 4 required input mux points

*Xn vdd vdd o7 x3 x3b gnd mux
*Xa d gnd o4 x3 x3b gnd mux $ third level
*Xb vdd d o5 x3 x3b gnd mux
*Xf vdd d o6 x3 x3b gnd mux

*Xc o5 o4 o2 x2 x2b gnd mux $ second level
*Xd o7 o6 o3 x2 x2b gnd mux

*Xe o3 o2 o1 x1 x1b gnd mux $ first level

*Cout o1 gnd 8.64f

*.dc vin 0 1.8 0.1
.tran 0.1n 100n

** MEASURING DELAYS (Refer manual section 15.4.5)
.measure tran tplh
+ TRIG v(o1) VAL='0' RISE=1
+ TARG v(o1) VAL='SUPPLY*0.5' RISE=1
.measure tran tphl
+ TRIG v(o1) VAL='SUPPLY*0.5' FALL=1
+ TARG v(o1) VAL='0' FALL=1

.control
set curplottitle = "Viswanadh-2019112011"

run
plot v(d)
*plot  v(o1)
*plot  v(x1)
*plot  v(x3)
*plot v(x2) 
*plot v(x4)

.endc
