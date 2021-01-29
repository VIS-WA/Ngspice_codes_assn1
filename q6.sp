Netlist to evaluate MOS I-V characterisitics

.include TSMC_180nm.txt
.param SUPPLY=1.8
.param LAMBDA=0.09u
.param width_N={20*LAMBDA}
.global gnd vdd

VGS G gnd 1.8
VDS D gnd 0 $ VIN
VSC S C 0
C1 C gnd 0.1p  
 .ic v(s) = 1.8 $ VOUT
M1 D G S gnd CMOSN W={width_N} L={2*LAMBDA} AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

*.dc VGS 0 1.8 0.1
.tran 0.1 200n
.control

run

let x = C
let y = VSC#branch
set curplottitle="id vs vgs"
plot x 

*hardcopy fig_mos_id_vgs.eps (-VDS#branch)
.endc
