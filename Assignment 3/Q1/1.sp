Viswanadh-2019112011
.include TSMC_180nm.txt
.param SUPPLY=1.8
.param LAMBDA=0.09u
.global gnd vdd
.param width_N1={5*LAMBDA}

Vdd	vdd	gnd	'SUPPLY'
vin a 0 pulse 0 1.8 0ns 1ns 1ns 10ns 25ns
vinb b 0 pulse 0 1.8 0ns 1ns 1ns 20ns 50ns
Vs s gnd pwl (0 0v 49.9ns 0v 50ns 1.8v 100ns 1.8v) 
Vsb sb gnd pwl ( 0 1.8v 49.9ns 1.8v 50ns 0v 100ns 0v)


.subckt inv y x vdd gnd $ output, input, vdd, gnd
.param width_P={2*5*LAMBDA} 
.param width_N={5*LAMBDA}
M1 y x gnd gnd CMOSN W={width_N} L={2*LAMBDA} AS={5*width_N*LAMBDA}
+ PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M2 y x vdd vdd CMOSP W={width_P} L={2*LAMBDA} AS={5*width_P*LAMBDA} 
+ PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
.ends inv

.subckt inv1 y x vdd gnd $ output, input, vdd, gnd
.param width_P={2.2*5*LAMBDA} $ below this, there's breakdown 
.param width_N={3.8*5*LAMBDA}
M1 y x gnd gnd CMOSN W={width_N} L={2*LAMBDA} AS={5*width_N*LAMBDA}
+ PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M2 y x vdd vdd CMOSP W={width_P} L={2*LAMBDA} AS={5*width_P*LAMBDA} 
+ PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
.ends inv1

x1 c a vdd gnd inv $inverter
x2 d b vdd gnd inv $W-N = 20l
M11 c s e gnd CMOSN W={width_N1} L={2*LAMBDA} AS={5*width_N1*LAMBDA} $ NMOS
+ PS={10*LAMBDA+2*width_N1} AD={5*width_N1*LAMBDA} PD={10*LAMBDA+2*width_N1}
M12 d sb e gnd CMOSN W={width_N1} L={2*LAMBDA} AS={5*width_N1*LAMBDA} 
+ PS={10*LAMBDA+2*width_N1} AD={5*width_N1*LAMBDA} PD={10*LAMBDA+2*width_N1}
x3 f e vdd gnd inv1 $ inverter1

C1 a gnd 2.16f  $ cap ~
C2 b gnd 2.16f
C3 e gnd 4.32f
C4 f gnd 4.32f

*.dc vin 0 1.8 0.1
.tran 0.1n 100n

** MEASURING DELAYS (Refer manual section 15.4.5)
.measure tran tpdrA
+ TRIG v(a) VAL='SUPPLY/2' RISE=1
+ TARG v(f) VAL='SUPPLY/2' RISE=1

.measure tran tpdfA
+ TRIG v(a) VAL='SUPPLY/2' FALL=1
+ TARG v(f) VAL='SUPPLY/2' FALL=1
.measure tran tpdA param='(tpdrA+tpdfA)/2' goal=0

.measure tran tpdrB
+ TRIG v(b) VAL='SUPPLY/2' RISE=1
+ TARG v(f) VAL='SUPPLY/2' RISE=1

.measure tran tpdfB
+ TRIG v(b) VAL='SUPPLY/2' FALL=1
+ TARG v(f) VAL='SUPPLY/2' FALL=1
.measure tran tpdB param='(tpdrB+tpdfB)/2' goal=0

.measure tran tpd param='(tpdA+tpdB)/2' goal=0

.control
set hcopypscolor = 1 *White background for saving plots
set curplottitle = "Viswanadh-2019112011"

run
*plot v(a)
*plot v(b)
*plot  v(s) plot v(sb)  plot v(a)  plot v(b) plot v(f)

.endc
