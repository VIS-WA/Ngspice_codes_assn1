Netlist to evaluate MOS I-V characterisitics

.include TSMC_180nm.txt
.param SUPPLY=1.8
.param VGG=1.5
.param LAMBDA=0.09u
.param width_N={20*LAMBDA} $PMOS
.global gnd vdd

VGS G gnd 0
VDS S gnd 1.8 $ VIN
VSC D C 0
C1 C gnd 0.1p  $ VOUT
 .ic v(d) = 0
M1 D G S S CMOSP W={width_N} L={2*LAMBDA} AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

*.dc VGS 0 1.8 0.1
.tran 0.1 100n
.control
*set hcopypscolor = 1 *White background for saving plots
*set color0=white 
*set color1=black 

run

let x = C
let y = VSC#branch
set curplottitle="id vs vgs"
plot x 

*hardcopy fig_mos_id_vgs.eps (-VDS#branch)
.endc
