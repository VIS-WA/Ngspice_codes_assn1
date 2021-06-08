Netlist to evaluate MOS I-V characterisitics

.include TSMC_180nm.txt
.param SUPPLY=1.8
.param VGG=1.5
.param LAMBDA=0.09u
.param width_N={20*LAMBDA}
.global gnd vdd

VGS G gnd 'SUPPLY'
VDS D gnd 1.8
VDS1 D1 gnd 1.8 $ different Drains for each MOS 
VDS2 D2 gnd 1.8
VBS1 B1 gnd 0.9
VBS2 B2 gnd -0.9

M1 D G gnd gnd CMOSN W={width_N} L={2*LAMBDA} AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M2 D1 G gnd B1  CMOSN W={width_N} L={2*LAMBDA} AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M3 D2 G gnd B2 CMOSN W={width_N} L={2*LAMBDA} AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

.dc VGS 0 1.8 0.1

.control

run

let x = (-VDS#branch)
let Y = (-VDS1#branch)
let z = (-VDS2#branch)
print  x y z
set curplottitle="id vs vgs"
plot x Y z 
*print vecmax(deriv(sqrt(x))) vecmax(deriv(sqrt(y))) vecmax(deriv(sqrt(z)))



hardcopy 3_n.eps (-VDS#branch)
.endc
