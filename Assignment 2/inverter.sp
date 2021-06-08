Inverter circuit

.include TSMC_180nm.txt
.param SUPPLY=1.8
*.param LAMBDA=0.09u
.global gnd vdd
.option scale=0.09u

Vdd vdd gnd 'SUPPLY'
vin in gnd pulse 0 1.8 0ns 1ns 1ns 10ns 20ns

M1 out in vdd w_n8_n5# CMOSP w=8 l=2 ad=40 pd=26 as=40 ps=26
M2 out in gnd gnd CMOSN w=4 l=2 ad=20 pd=18 as=20 ps=18

Cout out gnd 100f

.tran 0.1n 200n 

.measure tran hello 
+ TRIG v(in) val='SUPPLY/2' RISE= 1 
+ TARG v(out) val = 'SUPPLY/2' FALL=1

.measure tran hi
+ TRIG v(in) val='SUPPLY/2' FALL= 1
+ TARG v(out) val = 'SUPPLY/2' RISE=1


.control
set hcopypscolor = 1
run
plot v(out) v(in)
hardcopy inv_transient_resp.eps v(in) v(out)
.endc

