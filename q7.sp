.include TSMC_180nm.txt
.param SUPPLY=1.8
.param LAMBDA=0.09u
.param width_N=20*LAMBDA
.param width_P=50*LAMBDA
.global gnd vdd

VDS vdd	gnd 'SUPPLY'
vin x 0 pulse 0 1.8 0ns 100ps 100ps 9.9ns 20ns

M1 y x gnd gnd  CMOSN   W={width_N}   L={2*LAMBDA} AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M2 y x vdd vdd  CMOSP   W={width_P}   L={2*LAMBDA} AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

M3 z y gnd gnd  CMOSN   W={width_N}   L={2*LAMBDA} AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M4 z y vdd vdd  CMOSP   W={width_P}   L={2*LAMBDA} AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

C1 z gnd 100f $cap

*.dc vin 0 1.8 0.1
.tran 0.1n 200n

** MEASURING DELAYS (Refer manual section 15.4.5)
.measure tran trise
+ TRIG v(z) VAL='SUPPLY/2' RISE=1
+ TARG v(x) VAL='SUPPLY/2' FALL=1
.measure tran tfall
+ TRIG v(x) VAL='SUPPLY/2' RISE=1
+ TARG v(z) VAL='SUPPLY/2' FALL=1

.measure tran tpd param='(trise+tfall)/2' goal = 0

.control
*set hcopypscolor = 1 *White background for saving plots
*set color0=white ** color0 is used to set the background of the plot (manual sec:17.7))
*set color1=black ** color1 is used to set the grid color of the plot (manual sec:17.7))


run
*plot v(a)
*plot v(b)
plot  v(z) v(x)

*hardcopy fig_inv_trans.eps v(b) v(c)
.endc
