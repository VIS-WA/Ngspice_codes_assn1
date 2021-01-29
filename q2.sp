Netlist to evaluate MOS I-V characterisitics

.include TSMC_180nm.txt
.param SUPPLY=1.8
.param VGG=1.5
.param LAMBDA=0.09u
.param width_N={20*LAMBDA}
.global gnd vdd

VGS G gnd 'SUPPLY'
VDS D gnd 1.8 

M1 D G gnd gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

.dc VGS 0 1.8 0.1

.control
*set hcopypscolor = 1 *White background for saving plots
*set color0=white 
*set color1=black 

run

let x = (-VDS#branch)
set curplottitle="id vs vgs"
plot x deriv(sqrt(x))

hardcopy 2.eps (-VDS#branch)
.endc
