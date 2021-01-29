Netlist to evaluate MOS I-V characterisitics

.include TSMC_180nm.txt
.param SUPPLY= -1.8
.param VGG=1.5
.param LAMBDA=0.09u
.param width_N={20*LAMBDA} $ PMOS
.global gnd vdd

VGS G gnd 'SUPPLY'
VDS D gnd -1.8
VDS1 D1 gnd -1.8 $different Drains for each MOS 
VDS2 D2 gnd -1.8
VBS1 B1 gnd 0.9
VBS2 B2 gnd -0.9

M1 gnd G D gnd CMOSP W={width_N} L={2*LAMBDA} AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M2 gnd G D1 B1  CMOSP W={width_N} L={2*LAMBDA} AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M3 gnd G D2 B2 CMOSP W={width_N} L={2*LAMBDA} AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

.dc VGS -1.8 0 0.1

.control
run

let x = (VDS#branch)
let Y = (VDS1#branch)
let z = (VDS2#branch)
print  x y z
set curplottitle="id vs vgs"
plot x Y z
plot deriv(sqrt(x)) deriv(sqrt(Y))  deriv(sqrt(z))

hardcopy 3_p.eps (-VDS#branch)
.endc
