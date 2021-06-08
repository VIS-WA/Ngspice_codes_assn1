Netlist to evaluate MOS I-V characterisitics

.include TSMC_180nm.txt
.param SUPPLY=1.8
.param VGG=1.5
.param LAMBDA=0.09u
.param width_N={20*LAMBDA}
.global gnd vdd

VGS G gnd 0 
VDS1 D1 gnd pulse 0 1.8 0ns 1ns 1ns 10ns 20ns $ initV finalV delay rise fall half full
VDS2 D2 gnd pulse 0 1.8 0ns 1ns 1ns 10ns 20ns 
VDS3 D3 gnd pulse 0 1.8 0ns 1ns 1ns 10ns 20ns 
VDS4 D4 gnd pulse 0 1.8 0ns 1ns 1ns 10ns 20ns 
*VDS D gnd 1.8

M1 D1 G gnd gnd CMOSN W={width_N} L={2*LAMBDA} AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M2 D2 G gnd gnd CMOSN W={2*width_N} L={2*LAMBDA} AS={5*2*width_N*LAMBDA} PS={10*LAMBDA+2*2*width_N} AD={5*2*width_N*LAMBDA} PD={10*LAMBDA+2*2*width_N}

M3 D3 G gnd gnd CMOSN W={10*width_N} L={2*LAMBDA} AS={5*10*width_N*LAMBDA} PS={10*LAMBDA+2*10*width_N} AD={5*10*width_N*LAMBDA} PD={10*LAMBDA+2*10*width_N}

M4 D4 G gnd gnd CMOSN W={20*width_N} L={2*LAMBDA} AS={5*20*width_N*LAMBDA} PS={10*LAMBDA+2*20*width_N} AD={5*20*width_N*LAMBDA} PD={10*LAMBDA+2*20*width_N}

*.dc VGS 0 1.8 0.1
.tran 0.01n 1n

.control
*set hcopypscolor = 1 *White background for saving plots
*set color0=white 
*set color1=black 

run

let w = (-VDS1#branch)
let x = (-VDS2#branch)
let y = (-VDS3#branch)
let z = (-VDS4#branch)
set curplottitle="id vs vgs"
plot w x y z 
plot avg(w) avg(x) avg(y) avg(z) 

*hardcopy fig_mos_id_vgs.eps (-VDS#branch)
.endc
